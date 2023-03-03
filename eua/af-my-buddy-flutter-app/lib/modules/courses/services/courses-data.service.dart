import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:my_buddy/local_models/serializable-models/serialized-course.dart';
import 'package:my_buddy/swagger_models_apis/job_seeker_api.swagger.dart';
import 'package:rxdart/rxdart.dart';
import 'package:my_buddy/local_models/serializable-models/serialized-job.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_buddy/swagger_models_apis/job_seeker_api.models.swagger.dart'
    as jobseekermodels;

class CoursesDataService {
  static final CoursesDataService _coursesDataService =
      CoursesDataService._internal();
  bool? initialized = false;
  CoursesDataService._internal() {}
  initialize({
    required BuildContext context,
  }) {
    if (!(initialized ?? false)) {
      initialized = true;
      searchCoursesInput$.listen((SearchCourseRequest? searchCourseInput) {
        if (searchCourseInput != null) {
          _loadingInProgressFlagSubject.sink.add(true);
          Provider.of<JobSeekerApi>(
            context,
            listen: false,
          )
              .courseSearchPost(body: searchCourseInput)
              .then((Response<CourseResults> response) {
            if (response.isSuccessful) {
              List<SerializedCourse> _courses = [];
              if (response.bodyString.isNotEmpty) {
                debugPrint("courses result bodyString: ");
                debugPrint(response.bodyString);
                Map<String, dynamic> searchCourseResponseMap =
                    jsonDecode(response.bodyString);
                if (searchCourseResponseMap.isNotEmpty) {
                  Context? jobseekerContext = response.body!.context;
                  List<Map<String, dynamic>> courseResults = [];

                  searchCourseResponseMap["courses"]
                      .forEach((dynamic courseResult) {
                    courseResults.add(courseResult as Map<String, dynamic>);
                  });
                  courseResults.forEach((courseResultMap) {
                    Course jobseekerCourse = Course.fromJson(
                        courseResultMap as Map<String, dynamic>);
                    SerializedCourse newCourse = SerializedCourse(
                      courseId: jobseekerCourse.id,
                      providerId: jobseekerCourse.provider.id,
                      providerName: jobseekerCourse.provider.name,
                      title: jobseekerCourse.name,
                      duration: jobseekerCourse.duration,
                      bppId: jobseekerContext!.bppId,
                      bppUri: jobseekerContext.bppUri,
                      categoryName: jobseekerCourse.category!.name ?? "",
                      imageUrl: (jobseekerCourse.imageLocations.length > 0)
                          ? jobseekerCourse.imageLocations[0]
                          : null,
                    );

                    _courses.add(newCourse);
                  });
                }
              }
              _loadingInProgressFlagSubject.sink.add(false);
              _allcoursesSubject.sink.add(_courses);
            }
          });
        }
      });
    }
  }

  factory CoursesDataService() {
    return _coursesDataService;
  }
  BehaviorSubject<List<SerializedCourse>> _allcoursesSubject =
      BehaviorSubject<List<SerializedCourse>>.seeded([]);
  Stream<List<SerializedCourse>> get allcourses$ => _allcoursesSubject.stream;

  BehaviorSubject<SearchCourseRequest?> _searchCoursesInputSubject =
      BehaviorSubject<SearchCourseRequest?>.seeded(SearchCourseRequest());

  Stream<SearchCourseRequest?> get searchCoursesInput$ =>
      _searchCoursesInputSubject.stream;

  BehaviorSubject<bool?> _loadingInProgressFlagSubject =
      BehaviorSubject<bool?>.seeded(false);

  Stream<bool?> get loadingInProgressFlag$ =>
      _loadingInProgressFlagSubject.stream;

  updateSearchCourseRequestInput({
    required SearchCourseRequest searchCourseInput,
  }) {
    bool changedFlag = false;
    SearchCourseRequest? oldSearchCourseRequestInput =
        _searchCoursesInputSubject.value;
    if (oldSearchCourseRequestInput != null) {
      if (oldSearchCourseRequestInput != searchCourseInput) {
        changedFlag = true;
      }
    } else {
      changedFlag = true;
    }
    if (changedFlag) {
      _searchCoursesInputSubject.sink.add(searchCourseInput);
    }
  }
}
