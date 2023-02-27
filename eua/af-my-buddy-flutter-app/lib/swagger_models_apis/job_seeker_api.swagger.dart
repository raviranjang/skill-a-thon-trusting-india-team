import 'job_seeker_api.models.swagger.dart';
import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:chopper/chopper.dart' as chopper;
import 'job_seeker_api.enums.swagger.dart' as enums;
export 'job_seeker_api.enums.swagger.dart';
export 'job_seeker_api.models.swagger.dart';

part 'job_seeker_api.swagger.chopper.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class JobSeekerApi extends ChopperService {
  static JobSeekerApi create({
    ChopperClient? client,
    Authenticator? authenticator,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$JobSeekerApi(client);
    }

    final newClient = ChopperClient(
        services: [_$JobSeekerApi()],
        converter: $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        authenticator: authenticator,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$JobSeekerApi(newClient);
  }

  ///Seach jobs
  Future<chopper.Response<SearchJobsResponse>> jobSearchPost(
      {required SearchJob? body}) {
    generatedMapping.putIfAbsent(
        SearchJobsResponse, () => SearchJobsResponse.fromJsonFactory);

    return _jobSearchPost(body: body);
  }

  ///Seach jobs
  @Post(
    path: '/job/search',
    optionalBody: true,
  )
  Future<chopper.Response<SearchJobsResponse>> _jobSearchPost(
      {@Body() required SearchJob? body});

  ///Select jobs
  Future<chopper.Response<SelectedJobResponse>> jobSelectPost(
      {required SelectJob? body}) {
    generatedMapping.putIfAbsent(
        SelectedJobResponse, () => SelectedJobResponse.fromJsonFactory);

    return _jobSelectPost(body: body);
  }

  ///Select jobs
  @Post(
    path: '/job/select',
    optionalBody: true,
  )
  Future<chopper.Response<SelectedJobResponse>> _jobSelectPost(
      {@Body() required SelectJob? body});

  ///Initialize job
  Future<chopper.Response<InitJobResponse>> jobInitPost(
      {required InitJob? body}) {
    generatedMapping.putIfAbsent(
        InitJobResponse, () => InitJobResponse.fromJsonFactory);

    return _jobInitPost(body: body);
  }

  ///Initialize job
  @Post(
    path: '/job/init',
    optionalBody: true,
  )
  Future<chopper.Response<InitJobResponse>> _jobInitPost(
      {@Body() required InitJob? body});

  ///Confirm jobs
  Future<chopper.Response<ConfirmJobResponse>> jobConfirmPost(
      {required ConfirmJobRequest? body}) {
    generatedMapping.putIfAbsent(
        ConfirmJobResponse, () => ConfirmJobResponse.fromJsonFactory);

    return _jobConfirmPost(body: body);
  }

  ///Confirm jobs
  @Post(
    path: '/job/confirm',
    optionalBody: true,
  )
  Future<chopper.Response<ConfirmJobResponse>> _jobConfirmPost(
      {@Body() required ConfirmJobRequest? body});

  ///Job Status
  Future<chopper.Response<JobStatusResponse>> jobStatusPost(
      {required JobStatusRequest? body}) {
    generatedMapping.putIfAbsent(
        JobStatusResponse, () => JobStatusResponse.fromJsonFactory);

    return _jobStatusPost(body: body);
  }

  ///Job Status
  @Post(
    path: '/job/status',
    optionalBody: true,
  )
  Future<chopper.Response<JobStatusResponse>> _jobStatusPost(
      {@Body() required JobStatusRequest? body});

  ///Seach mentorships
  Future<chopper.Response<MentorshipResults>> mentorshipSearchPost(
      {required SearchMentorshipRequest? body}) {
    generatedMapping.putIfAbsent(
        MentorshipResults, () => MentorshipResults.fromJsonFactory);

    return _mentorshipSearchPost(body: body);
  }

  ///Seach mentorships
  @Post(
    path: '/mentorship/search',
    optionalBody: true,
  )
  Future<chopper.Response<MentorshipResults>> _mentorshipSearchPost(
      {@Body() required SearchMentorshipRequest? body});

  ///Select specific mentorship object
  Future<chopper.Response<SelectMentorshipResponse>> mentorshipSelectPost(
      {required SelectMentorshipRequest? body}) {
    generatedMapping.putIfAbsent(SelectMentorshipResponse,
        () => SelectMentorshipResponse.fromJsonFactory);

    return _mentorshipSelectPost(body: body);
  }

  ///Select specific mentorship object
  @Post(
    path: '/mentorship/select',
    optionalBody: true,
  )
  Future<chopper.Response<SelectMentorshipResponse>> _mentorshipSelectPost(
      {@Body() required SelectMentorshipRequest? body});

  ///Init Mentorship
  Future<chopper.Response<InitMentorshipResponse>> mentorshipInitPost(
      {required InitMentorshipRequest? body}) {
    generatedMapping.putIfAbsent(
        InitMentorshipResponse, () => InitMentorshipResponse.fromJsonFactory);

    return _mentorshipInitPost(body: body);
  }

  ///Init Mentorship
  @Post(
    path: '/mentorship/init',
    optionalBody: true,
  )
  Future<chopper.Response<InitMentorshipResponse>> _mentorshipInitPost(
      {@Body() required InitMentorshipRequest? body});

  ///Confirm mentorship
  Future<chopper.Response<ConfirmMentorshipResponse>> mentorshipConfirmPost(
      {required ConfirmMentorshipRequest? body}) {
    generatedMapping.putIfAbsent(ConfirmMentorshipResponse,
        () => ConfirmMentorshipResponse.fromJsonFactory);

    return _mentorshipConfirmPost(body: body);
  }

  ///Confirm mentorship
  @Post(
    path: '/mentorship/confirm',
    optionalBody: true,
  )
  Future<chopper.Response<ConfirmMentorshipResponse>> _mentorshipConfirmPost(
      {@Body() required ConfirmMentorshipRequest? body});

  ///Mentorship status check
  Future<chopper.Response<MentorshipStatusResponse>> mentorshipStatusPost(
      {required MentorshipStatusRequest? body}) {
    generatedMapping.putIfAbsent(MentorshipStatusResponse,
        () => MentorshipStatusResponse.fromJsonFactory);

    return _mentorshipStatusPost(body: body);
  }

  ///Mentorship status check
  @Post(
    path: '/mentorship/status',
    optionalBody: true,
  )
  Future<chopper.Response<MentorshipStatusResponse>> _mentorshipStatusPost(
      {@Body() required MentorshipStatusRequest? body});

  ///Mentorship cancel request
  Future<chopper.Response<MentorshipCancelResponse>> mentorshipCancelPost(
      {required MentorshipCancelRequest? body}) {
    generatedMapping.putIfAbsent(MentorshipCancelResponse,
        () => MentorshipCancelResponse.fromJsonFactory);

    return _mentorshipCancelPost(body: body);
  }

  ///Mentorship cancel request
  @Post(
    path: '/mentorship/cancel',
    optionalBody: true,
  )
  Future<chopper.Response<MentorshipCancelResponse>> _mentorshipCancelPost(
      {@Body() required MentorshipCancelRequest? body});

  ///Search scholarships
  Future<chopper.Response<ScholarshipResults>> scholarshipSearchPost(
      {required SearchScholarship? body}) {
    generatedMapping.putIfAbsent(
        ScholarshipResults, () => ScholarshipResults.fromJsonFactory);

    return _scholarshipSearchPost(body: body);
  }

  ///Search scholarships
  @Post(
    path: '/scholarship/search',
    optionalBody: true,
  )
  Future<chopper.Response<ScholarshipResults>> _scholarshipSearchPost(
      {@Body() required SearchScholarship? body});

  ///Select scholarship
  Future<chopper.Response<SelectScholarshipResponse>> scholarshipSelectPost(
      {required SelectScholarship? body}) {
    generatedMapping.putIfAbsent(SelectScholarshipResponse,
        () => SelectScholarshipResponse.fromJsonFactory);

    return _scholarshipSelectPost(body: body);
  }

  ///Select scholarship
  @Post(
    path: '/scholarship/select',
    optionalBody: true,
  )
  Future<chopper.Response<SelectScholarshipResponse>> _scholarshipSelectPost(
      {@Body() required SelectScholarship? body});

  ///Init Scholarship
  Future<chopper.Response<InitScholarshipResponse>> scholarshipInitPost(
      {required InitScholarshipRequest? body}) {
    generatedMapping.putIfAbsent(
        InitScholarshipResponse, () => InitScholarshipResponse.fromJsonFactory);

    return _scholarshipInitPost(body: body);
  }

  ///Init Scholarship
  @Post(
    path: '/scholarship/init',
    optionalBody: true,
  )
  Future<chopper.Response<InitScholarshipResponse>> _scholarshipInitPost(
      {@Body() required InitScholarshipRequest? body});

  ///Confirm scholarship
  Future<chopper.Response<ConfirmScholarshipResponse>> scholarshipConfirmPost(
      {required ConfirmScholarshipRequest? body}) {
    generatedMapping.putIfAbsent(ConfirmScholarshipResponse,
        () => ConfirmScholarshipResponse.fromJsonFactory);

    return _scholarshipConfirmPost(body: body);
  }

  ///Confirm scholarship
  @Post(
    path: '/scholarship/confirm',
    optionalBody: true,
  )
  Future<chopper.Response<ConfirmScholarshipResponse>> _scholarshipConfirmPost(
      {@Body() required ConfirmScholarshipRequest? body});

  ///Scholarship status check
  Future<chopper.Response<ScholarshipStatusResponse>> scholarshipStatusPost(
      {required ScholarshipStatusRequest? body}) {
    generatedMapping.putIfAbsent(ScholarshipStatusResponse,
        () => ScholarshipStatusResponse.fromJsonFactory);

    return _scholarshipStatusPost(body: body);
  }

  ///Scholarship status check
  @Post(
    path: '/scholarship/status',
    optionalBody: true,
  )
  Future<chopper.Response<ScholarshipStatusResponse>> _scholarshipStatusPost(
      {@Body() required ScholarshipStatusRequest? body});

  ///Seach courses
  Future<chopper.Response<CourseResults>> courseSearchPost(
      {required SearchCourseRequest? body}) {
    generatedMapping.putIfAbsent(
        CourseResults, () => CourseResults.fromJsonFactory);

    return _courseSearchPost(body: body);
  }

  ///Seach courses
  @Post(
    path: '/course/search',
    optionalBody: true,
  )
  Future<chopper.Response<CourseResults>> _courseSearchPost(
      {@Body() required SearchCourseRequest? body});

  ///Select specific course object
  Future<chopper.Response<SelectCourseResponse>> courseSelectPost(
      {required SelectCourseRequest? body}) {
    generatedMapping.putIfAbsent(
        SelectCourseResponse, () => SelectCourseResponse.fromJsonFactory);

    return _courseSelectPost(body: body);
  }

  ///Select specific course object
  @Post(
    path: '/course/select',
    optionalBody: true,
  )
  Future<chopper.Response<SelectCourseResponse>> _courseSelectPost(
      {@Body() required SelectCourseRequest? body});

  ///Initialize course
  Future<chopper.Response<InitCourseResponse>> courseInitPost(
      {required InitCourse? body}) {
    generatedMapping.putIfAbsent(
        InitCourseResponse, () => InitCourseResponse.fromJsonFactory);

    return _courseInitPost(body: body);
  }

  ///Initialize course
  @Post(
    path: '/course/init',
    optionalBody: true,
  )
  Future<chopper.Response<InitCourseResponse>> _courseInitPost(
      {@Body() required InitCourse? body});

  ///Confirm course
  Future<chopper.Response<ConfirmCourseResponse>> courseConfirmPost(
      {required ConfirmCourseRequest? body}) {
    generatedMapping.putIfAbsent(
        ConfirmCourseResponse, () => ConfirmCourseResponse.fromJsonFactory);

    return _courseConfirmPost(body: body);
  }

  ///Confirm course
  @Post(
    path: '/course/confirm',
    optionalBody: true,
  )
  Future<chopper.Response<ConfirmCourseResponse>> _courseConfirmPost(
      {@Body() required ConfirmCourseRequest? body});

  ///Course Status
  Future<chopper.Response<CourseStatusResponse>> courseStatusPost(
      {required CourseStatusRequest? body}) {
    generatedMapping.putIfAbsent(
        CourseStatusResponse, () => CourseStatusResponse.fromJsonFactory);

    return _courseStatusPost(body: body);
  }

  ///Course Status
  @Post(
    path: '/course/status',
    optionalBody: true,
  )
  Future<chopper.Response<CourseStatusResponse>> _courseStatusPost(
      {@Body() required CourseStatusRequest? body});
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);
