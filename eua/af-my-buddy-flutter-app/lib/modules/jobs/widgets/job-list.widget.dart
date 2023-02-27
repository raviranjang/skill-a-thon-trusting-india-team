import 'dart:convert';
import 'dart:math';

import 'package:chopper/chopper.dart';
import 'package:dsep_reference_flutter/animations/slide-bottom.animation.dart';
import 'package:dsep_reference_flutter/animations/slide-right.animation.dart';
import 'package:dsep_reference_flutter/common/widgets/decorated-text.widget.dart';
import 'package:dsep_reference_flutter/common/widgets/job-list-tem.widget.dart';
import 'package:dsep_reference_flutter/common/widgets/loading-animation.widget.dart';

import 'package:dsep_reference_flutter/global_constants.dart';
import 'package:dsep_reference_flutter/local_models/serializable-models/serialized-job.dart';
import 'package:dsep_reference_flutter/modules/jobs/pages/view-job.page.dart';
import 'package:dsep_reference_flutter/modules/jobs/widgets/job-filters.widget.dart';
import 'package:dsep_reference_flutter/swagger_models_apis/job_seeker_api.swagger.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dsep_reference_flutter/swagger_models_apis/job_seeker_api.models.swagger.dart'
    as jobseekermodels;
import 'package:flutter_svg/svg.dart';

class JobListWidget extends StatefulWidget {
  const JobListWidget({super.key});

  @override
  State<JobListWidget> createState() => _JobListWidgetState();
}

class _JobListWidgetState extends State<JobListWidget> {
  bool _pageInitialized = false;
  // List<JobSummary>? _jobs;
  List<SerializedJob>? _jobs = [];
  bool _loadingJobsInProgressFlag = false;

  @override
  void didChangeDependencies() {
    if (!_pageInitialized) {
      _pageInitialized = true;
      _loadAllJobs();
    }
    super.didChangeDependencies();
  }

  _loadAllJobs() {
    setState(() {
      _loadingJobsInProgressFlag = true;
    });
    SearchJob? _searchJobBody = SearchJob(
      title: SearchJob$Title(key: "DevOps"),
    );

    // SearchJob? _searchJobBody = SearchJob.fromJson({});
    Provider.of<JobSeekerApi>(
      context,
      listen: false,
    )
        .jobSearchPost(body: _searchJobBody)
        .then((Response<SearchJobsResponse> response) {
      if (response.isSuccessful) {
        Map<String, dynamic> searchJobResponseMap =
            jsonDecode(response.bodyString);
        setState(() {
          _jobs = [];
          List<Map<String, dynamic>> jobResults = [];

          searchJobResponseMap["jobResults"].forEach((dynamic jobResult) {
            jobResults.add(jobResult as Map<String, dynamic>);
          });
          jobResults.forEach((jobResultMap) {
            Map<String, dynamic> companyMap =
                jobResultMap["company"] as Map<String, dynamic>;
            Company company = Company.fromJson(companyMap);
            String? logoUrl;
            if (companyMap["imageLink"] != null) {
              companyMap["imageLink"].forEach((dynamic imageLinkDynamic) {
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
                locations.add(
                    Location.fromJson(locationDynamic as Map<String, dynamic>));
              });
              JobSummary jobsummary = JobSummary.fromJson(jobSummaryMap);
              SerializedJob newJob = SerializedJob(
                jobId: jobsummary.jobId,
                role: jobsummary.role,
                company: company.name ?? "",
                bppId: response.body!.context.bppId,
                bppUri: response.body!.context.bppUri,
                description: jobsummary.description,
                city: (locations.length > 0) ? locations[0].city : null,
                state: (locations.length > 0) ? locations[0].state : null,
                companyLogo: logoUrl,
              );
              _jobs!.add(newJob);
            });
          });
          _loadingJobsInProgressFlag = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              height: 40,
              color: GlobalConstants.backgroundColor.withOpacity(0.1),
            ),
            Container(
              height: 80,
              width: (MediaQuery.of(context).size.width - 30),
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        20,
                      ),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.search,
                          color: Colors.black45,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Expanded(
                          child: DecoratedTextWidget(
                            content:
                                "Search by skills, location, experience, etc...",
                            textColor: Colors.black45,
                            maxLines: 1,
                            overflowEllipsisFlag: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    SlideBottomRoute(
                      page: const JobFiltersWidget(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              (!_loadingJobsInProgressFlag)
                  ? Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 6,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            ((_jobs ?? []).length.toString() + " jobs found"),
                          ),
                          GestureDetector(
                            child:
                                SvgPicture.asset('assets/svgs/ic_filter.svg'),
                            onTap: () {
                              Navigator.of(context).push(
                                SlideBottomRoute(
                                  page: const JobFiltersWidget(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    )
                  : Container(),
              Expanded(
                child: _loadingJobsInProgressFlag
                    ? LoadingAnimationWidget()
                    : SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: (_jobs ?? []).map((job) {
                            return GestureDetector(
                                child: Container(
                                  height: 150,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  margin: const EdgeInsets.all(8.0),
                                  padding: const EdgeInsets.all(8.0),
                                  child: JobListItemWidget(
                                    job: job,
                                  ),
                                ),
                                onTap: () {
                                  Navigator.of(context).push(SlideRightRoute(
                                      page: ViewJobPage(
                                    job: job,
                                  )));
                                });
                            ;
                          }).toList(),
                        ),
                      ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
