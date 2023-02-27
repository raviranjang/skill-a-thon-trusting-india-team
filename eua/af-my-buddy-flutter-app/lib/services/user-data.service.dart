import 'package:dsep_reference_flutter/local_models/serializable-models/serialized-course.dart';
import 'package:dsep_reference_flutter/local_models/serializable-models/serialized-job.dart';
import 'package:dsep_reference_flutter/swagger_models_apis/job_seeker_api.models.swagger.dart';
import 'package:dsep_reference_flutter/swagger_models_apis/user_management_api.swagger.dart'
    as usermanagement;
import 'package:flutter/material.dart';

class UserDataService {
  static final UserDataService _UserDataService = UserDataService._internal();
  List<SerializedCourse>? _savedCourses;
  List<SerializedCourse>? _appliedCourses;
  List<SerializedCourse>? get savedCourses => _savedCourses;
  List<SerializedCourse>? get appliedCourses => _appliedCourses;
  factory UserDataService() {
    return _UserDataService;
  }

  UserDataService._internal() {}
  void updateSavedCourses({required List<SerializedCourse> courses}) {
    _savedCourses = courses;
  }

  void updateAppliedCourses({required List<SerializedCourse> courses}) {
    _appliedCourses = courses;
  }

  void addNewSavedCourse({required SerializedCourse course}) {
    if (_savedCourses == null) {
      _savedCourses = [];
    }
    _savedCourses!.add(course);
  }

  void addNewAppliedCourse({required SerializedCourse course}) {
    if (_appliedCourses == null) {
      _appliedCourses = [];
    }
    _appliedCourses!.add(course);
  }

  void removeSavedCourse({required SerializedCourse course}) {
    if ((_savedCourses ?? []).isNotEmpty) {
      _savedCourses!.removeWhere((SerializedCourse savedCourse) {
        return (savedCourse.courseId == course.courseId);
      });
    }
  }

  List<SerializedJob>? _savedJobs;
  List<SerializedJob>? _appliedJobs;
  List<SerializedJob>? get savedJobs => _savedJobs;
  List<SerializedJob>? get appliedJobs => _appliedJobs;
  void updateSavedJobs({required List<SerializedJob> jobs}) {
    _savedJobs = jobs;
  }

  void updateAppliedJobs({required List<SerializedJob> jobs}) {
    _appliedJobs = jobs;
  }

  void addNewSavedJob({required SerializedJob job}) {
    if (_savedJobs == null) {
      _savedJobs = [];
    }
    _savedJobs!.add(job);
  }

  void addNewAppliedJob({required SerializedJob job}) {
    if (_appliedJobs == null) {
      _appliedJobs = [];
    }
    _appliedJobs!.add(job);
  }

  void removeSavedJob({required SerializedJob job}) {
    if ((_savedJobs ?? []).isNotEmpty) {
      _savedJobs!.removeWhere((SerializedJob savedJob) {
        return (savedJob.jobId == job.jobId);
      });
    }
  }
}
