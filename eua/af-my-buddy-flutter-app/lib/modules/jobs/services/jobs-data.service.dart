import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:my_buddy/swagger_models_apis/job_seeker_api.swagger.dart';
import 'package:rxdart/rxdart.dart';
import 'package:my_buddy/local_models/serializable-models/serialized-job.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_buddy/swagger_models_apis/job_seeker_api.models.swagger.dart'
    as jobseekermodels;

class JobsDataService {
  static final JobsDataService _jobsDataService = JobsDataService._internal();
  bool? initialized = false;
  JobsDataService._internal() {}
  initialize({required BuildContext context}) {
    if (!(initialized ?? false)) {
      initialized = true;
      searchJobsInput$.listen((SearchJob? searchJobInput) {
        if (searchJobInput != null) {
          _loadingInProgressFlagSubject.sink.add(true);
          Provider.of<JobSeekerApi>(
            context,
            listen: false,
          )
              .jobSearchPost(body: searchJobInput)
              .then((Response<SearchJobsResponse> response) {
            if (response.isSuccessful) {
              List<SerializedJob> _jobs = [];
              if (response.bodyString.isNotEmpty) {
                List<Map<String, dynamic>> jobResults = [];
                Map<String, dynamic> searchJobResponseMap =
                    jsonDecode(response.bodyString);
                if (searchJobResponseMap.isNotEmpty) {
                  searchJobResponseMap["jobResults"]
                      .forEach((dynamic jobResult) {
                    jobResults.add(jobResult as Map<String, dynamic>);
                  });
                  jobResults.forEach((jobResultMap) {
                    Map<String, dynamic> companyMap =
                        jobResultMap["company"] as Map<String, dynamic>;
                    Company company = Company.fromJson(companyMap);
                    String? logoUrl;
                    if (companyMap["imageLink"] != null) {
                      companyMap["imageLink"]
                          .forEach((dynamic imageLinkDynamic) {
                        jobseekermodels.Image image =
                            jobseekermodels.Image.fromJson(imageLinkDynamic);
                        logoUrl = image.url;
                      });
                    }
                    jobResultMap["jobs"].forEach((dynamic jobSummaryDynamic) {
                      Map<String, dynamic> jobSummaryMap =
                          jobSummaryDynamic as Map<String, dynamic>;
                      List<Location> locations = [];
                      jobSummaryMap["locations"].forEach((locationDynamic) {
                        locations.add(Location.fromJson(
                            locationDynamic as Map<String, dynamic>));
                      });
                      JobSummary jobsummary =
                          JobSummary.fromJson(jobSummaryMap);
                      SerializedJob newJob = SerializedJob(
                        jobId: jobsummary.jobId,
                        role: jobsummary.role,
                        company: company.name ?? "",
                        bppId: response.body!.context!.bppId,
                        bppUri: response.body!.context!.bppUri,
                        description: jobsummary.description,
                        city: (locations.length > 0) ? locations[0].city : null,
                        state:
                            (locations.length > 0) ? locations[0].state : null,
                        companyLogo: logoUrl,
                      );
                      _jobs.add(newJob);
                    });
                  });
                }
              }
              _loadingInProgressFlagSubject.sink.add(false);
              _alljobsSubject.sink.add(_jobs);
            }
          });
        }
      });
    }
  }

  factory JobsDataService() {
    return _jobsDataService;
  }
  BehaviorSubject<List<SerializedJob>> _alljobsSubject =
      BehaviorSubject<List<SerializedJob>>.seeded([]);
  Stream<List<SerializedJob>> get alljobs$ => _alljobsSubject.stream;

  BehaviorSubject<SearchJob?> _searchJobsInputSubject =
      BehaviorSubject<SearchJob?>.seeded(SearchJob());

  Stream<SearchJob?> get searchJobsInput$ => _searchJobsInputSubject.stream;

  BehaviorSubject<bool?> _loadingInProgressFlagSubject =
      BehaviorSubject<bool?>.seeded(false);

  Stream<bool?> get loadingInProgressFlag$ =>
      _loadingInProgressFlagSubject.stream;

  updateSearchJobInput({required SearchJob searchJobInput}) {
    bool changedFlag = false;
    SearchJob? oldSearchJobInput = _searchJobsInputSubject.value;
    if (oldSearchJobInput != null) {
      if (oldSearchJobInput != searchJobInput) {
        changedFlag = true;
      }
    } else {
      changedFlag = true;
    }
    if (changedFlag) {
      _searchJobsInputSubject.sink.add(searchJobInput);
    }
  }

  updateTitle(String title) {
    SearchJob? oldSearchJobInput = _searchJobsInputSubject.value;
    SearchJob? newSearchJobInput = SearchJob(
      title: SearchJob$Title(key: "Manager"),
      company: oldSearchJobInput!.company,
      skills: oldSearchJobInput.skills,
    );
    _searchJobsInputSubject.sink.add(newSearchJobInput);
  }

  updateCompany(String companyname) {
    SearchJob? oldSearchJobInput = _searchJobsInputSubject.value;

    List<CompanyLocation> oldlocations = [];
    if (oldSearchJobInput != null) {
      if (oldSearchJobInput.company != null) {
        oldlocations =
            oldSearchJobInput.company!.locations as List<CompanyLocation>;
      }
    }
    SearchJob$Company newcompany =
        SearchJob$Company(name: companyname, locations: oldlocations);
    SearchJob? newSearchJobInput = SearchJob(
      title: oldSearchJobInput!.title,
      company: newcompany,
      skills: oldSearchJobInput.skills,
    );
    _searchJobsInputSubject.sink.add(newSearchJobInput);
  }

  updateCompanyLocations(List<CompanyLocation> companyLocations) {
    SearchJob? oldSearchJobInput = _searchJobsInputSubject.value;
    String? companyname;
    if (oldSearchJobInput!.company != null) {
      companyname = oldSearchJobInput.company!.name;
    }
    SearchJob$Company newcompany =
        SearchJob$Company(name: companyname, locations: companyLocations);

    SearchJob? newSearchJobInput = SearchJob(
      title: oldSearchJobInput.title,
      company: newcompany,
      skills: oldSearchJobInput.skills,
    );
    _searchJobsInputSubject.sink.add(newSearchJobInput);
  }

  updateSkills(List<NameCode> newskills) {
    SearchJob? oldSearchJobInput = _searchJobsInputSubject.value;

    SearchJob? newSearchJobInput = SearchJob(
      title: oldSearchJobInput!.title,
      company: oldSearchJobInput.company,
      skills: newskills,
    );
    _searchJobsInputSubject.sink.add(newSearchJobInput);
  }
}
