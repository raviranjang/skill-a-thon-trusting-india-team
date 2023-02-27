// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_management_api.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$UserManagementApi extends UserManagementApi {
  _$UserManagementApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = UserManagementApi;

  @override
  Future<Response<UserProfile>> _userProfilePost({required UserProfile? body}) {
    final Uri $url = Uri.parse('/user/profile');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserProfile, UserProfile>($request);
  }

  @override
  Future<Response<UserProfile>> _userProfileEmailGet({required String? email}) {
    final Uri $url = Uri.parse('/user/profile/${email}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<UserProfile, UserProfile>($request);
  }

  @override
  Future<Response<UserResume>> _userResumePost({required UserResume? body}) {
    final Uri $url = Uri.parse('/user/resume');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserResume, UserResume>($request);
  }

  @override
  Future<Response<List<Object>>> _userResumeEmailGet({required String? email}) {
    final Uri $url = Uri.parse('/user/resume/${email}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<Object>, Object>($request);
  }

  @override
  Future<Response<Object>> _userItemCategoryEmailActionPost({
    required String? category,
    required String? email,
    required String? action,
    required Object? body,
  }) {
    final Uri $url = Uri.parse('/user/item/${category}/${email}/${action}');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<UserItems>> _userItemEmailGet({required String? email}) {
    final Uri $url = Uri.parse('/user/item/${email}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<UserItems, UserItems>($request);
  }

  @override
  Future<Response<CategoriesItem>> _userItemSavedEmailGet(
      {required String? email}) {
    final Uri $url = Uri.parse('/user/item/saved/${email}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<CategoriesItem, CategoriesItem>($request);
  }

  @override
  Future<Response<CategoriesItem>> _userItemAppliedEmailGet(
      {required String? email}) {
    final Uri $url = Uri.parse('/user/item/applied/${email}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<CategoriesItem, CategoriesItem>($request);
  }
}
