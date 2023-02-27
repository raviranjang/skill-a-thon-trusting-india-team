import 'user_management_api.models.swagger.dart';
import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:chopper/chopper.dart' as chopper;
export 'user_management_api.models.swagger.dart';

part 'user_management_api.swagger.chopper.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class UserManagementApi extends ChopperService {
  static UserManagementApi create({
    ChopperClient? client,
    Authenticator? authenticator,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$UserManagementApi(client);
    }

    final newClient = ChopperClient(
        services: [_$UserManagementApi()],
        converter: $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        authenticator: authenticator,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$UserManagementApi(newClient);
  }

  ///Setup user profile
  Future<chopper.Response<UserProfile>> userProfilePost(
      {required UserProfile? body}) {
    generatedMapping.putIfAbsent(
        UserProfile, () => UserProfile.fromJsonFactory);

    return _userProfilePost(body: body);
  }

  ///Setup user profile
  @Post(
    path: '/user/profile',
    optionalBody: true,
  )
  Future<chopper.Response<UserProfile>> _userProfilePost(
      {@Body() required UserProfile? body});

  ///Get the User profile
  Future<chopper.Response<UserProfile>> userProfileEmailGet(
      {required String? email}) {
    generatedMapping.putIfAbsent(
        UserProfile, () => UserProfile.fromJsonFactory);

    return _userProfileEmailGet(email: email);
  }

  ///Get the User profile
  @Get(path: '/user/profile/{email}')
  Future<chopper.Response<UserProfile>> _userProfileEmailGet(
      {@Path('email') required String? email});

  ///Add User Resume
  Future<chopper.Response<UserResume>> userResumePost(
      {required UserResume? body}) {
    generatedMapping.putIfAbsent(UserResume, () => UserResume.fromJsonFactory);

    return _userResumePost(body: body);
  }

  ///Add User Resume
  @Post(
    path: '/user/resume',
    optionalBody: true,
  )
  Future<chopper.Response<UserResume>> _userResumePost(
      {@Body() required UserResume? body});

  ///Get the User resume
  Future<chopper.Response<UserDocument>> userResumeEmailGet(
      {required String? email}) {
    // generatedMapping.putIfAbsent(
    //     UserDocument$Item, () => UserDocument$Item.fromJsonFactory);

    return _userResumeEmailGet(email: email);
  }

  ///Get the User resume
  @Get(path: '/user/resume/{email}')
  Future<chopper.Response<UserDocument>> _userResumeEmailGet(
      {@Path('email') required String? email});

  ///Add item in my catalog either as applied or saved item
  Future<chopper.Response<Object>> userItemCategoryEmailActionPost({
    required String? category,
    required String? email,
    required String? action,
    required Object? body,
  }) {
    return _userItemCategoryEmailActionPost(
        category: category, email: email, action: action, body: body);
  }

  ///Add item in my catalog either as applied or saved item
  @Post(
    path: '/user/item/{category}/{email}/{action}',
    optionalBody: true,
  )
  Future<chopper.Response<Object>> _userItemCategoryEmailActionPost({
    @Path('category') required String? category,
    @Path('email') required String? email,
    @Path('action') required String? action,
    @Body() required Object? body,
  });

  ///Get the user saved and applied data for all dsep categories
  Future<chopper.Response<UserItems>> userItemEmailGet(
      {required String? email}) {
    generatedMapping.putIfAbsent(UserItems, () => UserItems.fromJsonFactory);

    return _userItemEmailGet(email: email);
  }

  ///Get the user saved and applied data for all dsep categories
  @Get(path: '/user/item/{email}')
  Future<chopper.Response<UserItems>> _userItemEmailGet(
      {@Path('email') required String? email});

  ///Get the user saved items for all dsep categories
  Future<chopper.Response<CategoriesItem>> userItemSavedEmailGet(
      {required String? email}) {
    generatedMapping.putIfAbsent(
        CategoriesItem, () => CategoriesItem.fromJsonFactory);

    return _userItemSavedEmailGet(email: email);
  }

  ///Get the user saved items for all dsep categories
  @Get(path: '/user/item/saved/{email}')
  Future<chopper.Response<CategoriesItem>> _userItemSavedEmailGet(
      {@Path('email') required String? email});

  ///Get the user applied items for all dsep categories
  Future<chopper.Response<CategoriesItem>> userItemAppliedEmailGet(
      {required String? email}) {
    generatedMapping.putIfAbsent(
        CategoriesItem, () => CategoriesItem.fromJsonFactory);

    return _userItemAppliedEmailGet(email: email);
  }

  ///Get the user applied items for all dsep categories
  @Get(path: '/user/item/applied/{email}')
  Future<chopper.Response<CategoriesItem>> _userItemAppliedEmailGet(
      {@Path('email') required String? email});
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
