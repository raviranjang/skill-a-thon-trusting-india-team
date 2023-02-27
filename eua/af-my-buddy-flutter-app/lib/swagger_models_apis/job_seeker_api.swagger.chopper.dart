// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_seeker_api.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$JobSeekerApi extends JobSeekerApi {
  _$JobSeekerApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = JobSeekerApi;

  @override
  Future<Response<SearchJobsResponse>> _jobSearchPost(
      {required SearchJob? body}) {
    final Uri $url = Uri.parse('/job/search');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<SearchJobsResponse, SearchJobsResponse>($request);
  }

  @override
  Future<Response<SelectedJobResponse>> _jobSelectPost(
      {required SelectJob? body}) {
    final Uri $url = Uri.parse('/job/select');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<SelectedJobResponse, SelectedJobResponse>($request);
  }

  @override
  Future<Response<InitJobResponse>> _jobInitPost({required InitJob? body}) {
    final Uri $url = Uri.parse('/job/init');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<InitJobResponse, InitJobResponse>($request);
  }

  @override
  Future<Response<ConfirmJobResponse>> _jobConfirmPost(
      {required ConfirmJobRequest? body}) {
    final Uri $url = Uri.parse('/job/confirm');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ConfirmJobResponse, ConfirmJobResponse>($request);
  }

  @override
  Future<Response<JobStatusResponse>> _jobStatusPost(
      {required JobStatusRequest? body}) {
    final Uri $url = Uri.parse('/job/status');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<JobStatusResponse, JobStatusResponse>($request);
  }

  @override
  Future<Response<MentorshipResults>> _mentorshipSearchPost(
      {required SearchMentorshipRequest? body}) {
    final Uri $url = Uri.parse('/mentorship/search');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<MentorshipResults, MentorshipResults>($request);
  }

  @override
  Future<Response<SelectMentorshipResponse>> _mentorshipSelectPost(
      {required SelectMentorshipRequest? body}) {
    final Uri $url = Uri.parse('/mentorship/select');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<SelectMentorshipResponse, SelectMentorshipResponse>($request);
  }

  @override
  Future<Response<InitMentorshipResponse>> _mentorshipInitPost(
      {required InitMentorshipRequest? body}) {
    final Uri $url = Uri.parse('/mentorship/init');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<InitMentorshipResponse, InitMentorshipResponse>($request);
  }

  @override
  Future<Response<ConfirmMentorshipResponse>> _mentorshipConfirmPost(
      {required ConfirmMentorshipRequest? body}) {
    final Uri $url = Uri.parse('/mentorship/confirm');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<ConfirmMentorshipResponse, ConfirmMentorshipResponse>($request);
  }

  @override
  Future<Response<MentorshipStatusResponse>> _mentorshipStatusPost(
      {required MentorshipStatusRequest? body}) {
    final Uri $url = Uri.parse('/mentorship/status');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<MentorshipStatusResponse, MentorshipStatusResponse>($request);
  }

  @override
  Future<Response<MentorshipCancelResponse>> _mentorshipCancelPost(
      {required MentorshipCancelRequest? body}) {
    final Uri $url = Uri.parse('/mentorship/cancel');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<MentorshipCancelResponse, MentorshipCancelResponse>($request);
  }

  @override
  Future<Response<ScholarshipResults>> _scholarshipSearchPost(
      {required SearchScholarship? body}) {
    final Uri $url = Uri.parse('/scholarship/search');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ScholarshipResults, ScholarshipResults>($request);
  }

  @override
  Future<Response<SelectScholarshipResponse>> _scholarshipSelectPost(
      {required SelectScholarship? body}) {
    final Uri $url = Uri.parse('/scholarship/select');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<SelectScholarshipResponse, SelectScholarshipResponse>($request);
  }

  @override
  Future<Response<InitScholarshipResponse>> _scholarshipInitPost(
      {required InitScholarshipRequest? body}) {
    final Uri $url = Uri.parse('/scholarship/init');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<InitScholarshipResponse, InitScholarshipResponse>($request);
  }

  @override
  Future<Response<ConfirmScholarshipResponse>> _scholarshipConfirmPost(
      {required ConfirmScholarshipRequest? body}) {
    final Uri $url = Uri.parse('/scholarship/confirm');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<ConfirmScholarshipResponse, ConfirmScholarshipResponse>($request);
  }

  @override
  Future<Response<ScholarshipStatusResponse>> _scholarshipStatusPost(
      {required ScholarshipStatusRequest? body}) {
    final Uri $url = Uri.parse('/scholarship/status');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<ScholarshipStatusResponse, ScholarshipStatusResponse>($request);
  }

  @override
  Future<Response<CourseResults>> _courseSearchPost(
      {required SearchCourseRequest? body}) {
    final Uri $url = Uri.parse('/course/search');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<CourseResults, CourseResults>($request);
  }

  @override
  Future<Response<SelectCourseResponse>> _courseSelectPost(
      {required SelectCourseRequest? body}) {
    final Uri $url = Uri.parse('/course/select');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<SelectCourseResponse, SelectCourseResponse>($request);
  }

  @override
  Future<Response<InitCourseResponse>> _courseInitPost(
      {required InitCourse? body}) {
    final Uri $url = Uri.parse('/course/init');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<InitCourseResponse, InitCourseResponse>($request);
  }

  @override
  Future<Response<ConfirmCourseResponse>> _courseConfirmPost(
      {required ConfirmCourseRequest? body}) {
    final Uri $url = Uri.parse('/course/confirm');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ConfirmCourseResponse, ConfirmCourseResponse>($request);
  }

  @override
  Future<Response<CourseStatusResponse>> _courseStatusPost(
      {required CourseStatusRequest? body}) {
    final Uri $url = Uri.parse('/course/status');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<CourseStatusResponse, CourseStatusResponse>($request);
  }
}
