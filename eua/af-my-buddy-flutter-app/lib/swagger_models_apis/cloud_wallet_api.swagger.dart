import 'cloud_wallet_api.models.swagger.dart';
import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:chopper/chopper.dart' as chopper;
import 'cloud_wallet_api.enums.swagger.dart' as enums;
export 'cloud_wallet_api.enums.swagger.dart';
export 'cloud_wallet_api.models.swagger.dart';

part 'cloud_wallet_api.swagger.chopper.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class CloudWalletApi extends ChopperService {
  static CloudWalletApi create({
    ChopperClient? client,
    Authenticator? authenticator,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$CloudWalletApi(client);
    }

    final newClient = ChopperClient(
        services: [_$CloudWalletApi()],
        converter: $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        authenticator: authenticator,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$CloudWalletApi(newClient);
  }

  ///
  Future<chopper.Response<DidAuthResponseTokenOutput>>
      didAuthCreateDidAuthResponsePost(
          {required DidAuthResponseTokenInput? body}) {
    generatedMapping.putIfAbsent(DidAuthResponseTokenOutput,
        () => DidAuthResponseTokenOutput.fromJsonFactory);

    return _didAuthCreateDidAuthResponsePost(body: body);
  }

  ///
  @Post(
    path: '/did-auth/create-did-auth-response',
    optionalBody: true,
  )
  Future<chopper.Response<DidAuthResponseTokenOutput>>
      _didAuthCreateDidAuthResponsePost(
          {@Body() required DidAuthResponseTokenInput? body});

  ///
  ///@param credentialShareRequestToken
  Future<chopper.Response<GetCredentialsOutput>> walletCredentialsGet(
      {String? credentialShareRequestToken}) {
    generatedMapping.putIfAbsent(
        StoredCredential, () => StoredCredential.fromJsonFactory);

    return _walletCredentialsGet(
        credentialShareRequestToken: credentialShareRequestToken);
  }

  ///
  ///@param credentialShareRequestToken
  @Get(path: '/wallet/credentials')
  Future<chopper.Response<GetCredentialsOutput>> _walletCredentialsGet(
      {@Query('credentialShareRequestToken')
          String? credentialShareRequestToken});

  ///
  Future<chopper.Response<SaveCredentialOutput>> walletCredentialsPost(
      {required SaveCredentialInput? body}) {
    generatedMapping.putIfAbsent(
        SaveCredentialOutput, () => SaveCredentialOutput.fromJsonFactory);

    return _walletCredentialsPost(body: body);
  }

  ///
  @Post(
    path: '/wallet/credentials',
    optionalBody: true,
  )
  Future<chopper.Response<SaveCredentialOutput>> _walletCredentialsPost(
      {@Body() required SaveCredentialInput? body});

  ///
  ///@param credentialOfferRequestToken
  Future<chopper.Response<ClaimCredentialOutput>> walletCredentialsClaimGet(
      {required String? credentialOfferRequestToken}) {
    generatedMapping.putIfAbsent(
        ClaimCredentialOutput, () => ClaimCredentialOutput.fromJsonFactory);

    return _walletCredentialsClaimGet(
        credentialOfferRequestToken: credentialOfferRequestToken);
  }

  ///
  ///@param credentialOfferRequestToken
  @Get(path: '/wallet/credentials/claim')
  Future<chopper.Response<ClaimCredentialOutput>> _walletCredentialsClaimGet(
      {@Query('credentialOfferRequestToken')
          required String? credentialOfferRequestToken});

  ///
  ///@param id
  Future<chopper.Response<Object>> walletCredentialsIdGet(
      {required String? id}) {
    return _walletCredentialsIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/wallet/credentials/{id}')
  Future<chopper.Response<Object>> _walletCredentialsIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response> walletCredentialsIdDelete({required String? id}) {
    return _walletCredentialsIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/wallet/credentials/{id}')
  Future<chopper.Response> _walletCredentialsIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<ShareCredentialOutput>> walletCredentialsIdSharePost({
    required String? id,
    required ShareCredentialInput? body,
  }) {
    generatedMapping.putIfAbsent(
        ShareCredentialOutput, () => ShareCredentialOutput.fromJsonFactory);

    return _walletCredentialsIdSharePost(id: id, body: body);
  }

  ///
  ///@param id
  @Post(
    path: '/wallet/credentials/{id}/share',
    optionalBody: true,
  )
  Future<chopper.Response<ShareCredentialOutput>>
      _walletCredentialsIdSharePost({
    @Path('id') required String? id,
    @Body() required ShareCredentialInput? body,
  });

  ///
  Future<chopper.Response<SharePresentationOutput>> walletCredentialsSharePost(
      {required SharePresentationInput? body}) {
    generatedMapping.putIfAbsent(
        SharePresentationOutput, () => SharePresentationOutput.fromJsonFactory);

    return _walletCredentialsSharePost(body: body);
  }

  ///
  @Post(
    path: '/wallet/credentials/share',
    optionalBody: true,
  )
  Future<chopper.Response<SharePresentationOutput>> _walletCredentialsSharePost(
      {@Body() required SharePresentationInput? body});

  ///
  Future<chopper.Response<SignCredentialOutput>> walletSignCredentialPost(
      {required SignCredentialInput? body}) {
    generatedMapping.putIfAbsent(
        SignCredentialOutput, () => SignCredentialOutput.fromJsonFactory);

    return _walletSignCredentialPost(body: body);
  }

  ///
  @Post(
    path: '/wallet/sign-credential',
    optionalBody: true,
  )
  Future<chopper.Response<SignCredentialOutput>> _walletSignCredentialPost(
      {@Body() required SignCredentialInput? body});

  ///
  Future<chopper.Response<SignPresentationOutput>> walletSignPresentationPost(
      {required SignPresentationInput? body}) {
    generatedMapping.putIfAbsent(
        SignPresentationOutput, () => SignPresentationOutput.fromJsonFactory);

    return _walletSignPresentationPost(body: body);
  }

  ///
  @Post(
    path: '/wallet/sign-presentation',
    optionalBody: true,
  )
  Future<chopper.Response<SignPresentationOutput>> _walletSignPresentationPost(
      {@Body() required SignPresentationInput? body});

  ///
  Future<chopper.Response<String>>
      walletCredentialShareTokenGenerateRequestTokenPost(
          {required GenerateCredentialShareRequestTokenRequest? body}) {
    return _walletCredentialShareTokenGenerateRequestTokenPost(body: body);
  }

  ///
  @Post(
    path: '/wallet/credential-share-token/generate-request-token',
    optionalBody: true,
  )
  Future<chopper.Response<String>>
      _walletCredentialShareTokenGenerateRequestTokenPost(
          {@Body() required GenerateCredentialShareRequestTokenRequest? body});

  ///
  Future<chopper.Response<String>>
      walletCredentialShareTokenCreateResponseTokenPost(
          {required CreateCredentialShareResponseTokenRequest? body}) {
    return _walletCredentialShareTokenCreateResponseTokenPost(body: body);
  }

  ///
  @Post(
    path: '/wallet/credential-share-token/create-response-token',
    optionalBody: true,
  )
  Future<chopper.Response<String>>
      _walletCredentialShareTokenCreateResponseTokenPost(
          {@Body() required CreateCredentialShareResponseTokenRequest? body});

  ///
  Future<chopper.Response<ReadEncryptedMessageOuput>>
      messagesReadEncryptedMessagePost(
          {required ReadEncryptedMessageInput? body}) {
    generatedMapping.putIfAbsent(ReadEncryptedMessageOuput,
        () => ReadEncryptedMessageOuput.fromJsonFactory);

    return _messagesReadEncryptedMessagePost(body: body);
  }

  ///
  @Post(
    path: '/messages/read-encrypted-message',
    optionalBody: true,
  )
  Future<chopper.Response<ReadEncryptedMessageOuput>>
      _messagesReadEncryptedMessagePost(
          {@Body() required ReadEncryptedMessageInput? body});

  ///
  Future<chopper.Response<CreateEncryptedMessageOuput>>
      messagesCreateEncryptedMessagePost(
          {required CreateEncryptedMessageInput? body}) {
    generatedMapping.putIfAbsent(CreateEncryptedMessageOuput,
        () => CreateEncryptedMessageOuput.fromJsonFactory);

    return _messagesCreateEncryptedMessagePost(body: body);
  }

  ///
  @Post(
    path: '/messages/create-encrypted-message',
    optionalBody: true,
  )
  Future<chopper.Response<CreateEncryptedMessageOuput>>
      _messagesCreateEncryptedMessagePost(
          {@Body() required CreateEncryptedMessageInput? body});

  ///
  ///@param hash
  ///@param key
  Future<chopper.Response> shareHashGet({
    required String? hash,
    required String? key,
  }) {
    return _shareHashGet(hash: hash, key: key);
  }

  ///
  ///@param hash
  ///@param key
  @Get(path: '/share/{hash}')
  Future<chopper.Response> _shareHashGet({
    @Path('hash') required String? hash,
    @Query('key') required String? key,
  });

  ///
  Future<chopper.Response<String>> usersGetDidGet() {
    return _usersGetDidGet();
  }

  ///
  @Get(path: '/users/get-did')
  Future<chopper.Response<String>> _usersGetDidGet();

  ///
  Future<chopper.Response<UserInfoOutput>> usersGetInfoGet() {
    generatedMapping.putIfAbsent(
        UserInfoOutput, () => UserInfoOutput.fromJsonFactory);

    return _usersGetInfoGet();
  }

  ///
  @Get(path: '/users/get-info')
  Future<chopper.Response<UserInfoOutput>> _usersGetInfoGet();

  ///
  Future<chopper.Response<LoginOutput>> usersLoginPost(
      {required LoginInput? body}) {
    generatedMapping.putIfAbsent(
        LoginOutput, () => LoginOutput.fromJsonFactory);

    return _usersLoginPost(body: body);
  }

  ///
  @Post(
    path: '/users/login',
    optionalBody: true,
  )
  Future<chopper.Response<LoginOutput>> _usersLoginPost(
      {@Body() required LoginInput? body});

  ///
  Future<chopper.Response> usersSignupPost({required SignUpInput? body}) {
    return _usersSignupPost(body: body);
  }

  ///
  @Post(
    path: '/users/signup',
    optionalBody: true,
  )
  Future<chopper.Response> _usersSignupPost(
      {@Body() required SignUpInput? body});

  ///
  Future<chopper.Response<ConfirmSignUpOutput>> usersSignupConfirmPost(
      {required ConfirmSignUpInput? body}) {
    generatedMapping.putIfAbsent(
        ConfirmSignUpOutput, () => ConfirmSignUpOutput.fromJsonFactory);

    return _usersSignupConfirmPost(body: body);
  }

  ///
  @Post(
    path: '/users/signup/confirm',
    optionalBody: true,
  )
  Future<chopper.Response<ConfirmSignUpOutput>> _usersSignupConfirmPost(
      {@Body() required ConfirmSignUpInput? body});

  ///
  Future<chopper.Response> usersLogoutPost() {
    return _usersLogoutPost();
  }

  ///
  @Post(
    path: '/users/logout',
    optionalBody: true,
  )
  Future<chopper.Response> _usersLogoutPost();

  ///
  Future<chopper.Response> usersForgotPasswordPost(
      {required ForgotPasswordInput? body}) {
    return _usersForgotPasswordPost(body: body);
  }

  ///
  @Post(
    path: '/users/forgot-password',
    optionalBody: true,
  )
  Future<chopper.Response> _usersForgotPasswordPost(
      {@Body() required ForgotPasswordInput? body});

  ///
  Future<chopper.Response> usersForgotPasswordConfirmPost(
      {required ForgotPasswordConfirmInput? body}) {
    return _usersForgotPasswordConfirmPost(body: body);
  }

  ///
  @Post(
    path: '/users/forgot-password/confirm',
    optionalBody: true,
  )
  Future<chopper.Response> _usersForgotPasswordConfirmPost(
      {@Body() required ForgotPasswordConfirmInput? body});

  ///
  Future<chopper.Response> usersChangeUsernamePost(
      {required ChangeUsernameInput? body}) {
    return _usersChangeUsernamePost(body: body);
  }

  ///
  @Post(
    path: '/users/change-username',
    optionalBody: true,
  )
  Future<chopper.Response> _usersChangeUsernamePost(
      {@Body() required ChangeUsernameInput? body});

  ///
  Future<chopper.Response> usersChangeUsernameConfirmPost(
      {required ChangeUsernameConfirmInput? body}) {
    return _usersChangeUsernameConfirmPost(body: body);
  }

  ///
  @Post(
    path: '/users/change-username/confirm',
    optionalBody: true,
  )
  Future<chopper.Response> _usersChangeUsernameConfirmPost(
      {@Body() required ChangeUsernameConfirmInput? body});

  ///
  Future<chopper.Response> usersChangePasswordPost(
      {required ChangePasswordInput? body}) {
    return _usersChangePasswordPost(body: body);
  }

  ///
  @Post(
    path: '/users/change-password',
    optionalBody: true,
  )
  Future<chopper.Response> _usersChangePasswordPost(
      {@Body() required ChangePasswordInput? body});

  ///
  Future<chopper.Response<String>> usersSignInPasswordlessPost(
      {required SignInInput? body}) {
    return _usersSignInPasswordlessPost(body: body);
  }

  ///
  @Post(
    path: '/users/sign-in-passwordless',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _usersSignInPasswordlessPost(
      {@Body() required SignInInput? body});

  ///
  Future<chopper.Response<SignInWithTruecallerOutput>>
      usersSignInTruecallerPost({required SignInWithTuecallerInput? body}) {
    generatedMapping.putIfAbsent(SignInWithTruecallerOutput,
        () => SignInWithTruecallerOutput.fromJsonFactory);

    return _usersSignInTruecallerPost(body: body);
  }

  ///
  @Post(
    path: '/users/sign-in-truecaller',
    optionalBody: true,
  )
  Future<chopper.Response<SignInWithTruecallerOutput>>
      _usersSignInTruecallerPost(
          {@Body() required SignInWithTuecallerInput? body});

  ///
  Future<chopper.Response<ConfirmSignInOutput>>
      usersSignInPasswordlessConfirmPost({required ConfirmSignInInput? body}) {
    generatedMapping.putIfAbsent(
        ConfirmSignInOutput, () => ConfirmSignInOutput.fromJsonFactory);

    return _usersSignInPasswordlessConfirmPost(body: body);
  }

  ///
  @Post(
    path: '/users/sign-in-passwordless/confirm',
    optionalBody: true,
  )
  Future<chopper.Response<ConfirmSignInOutput>>
      _usersSignInPasswordlessConfirmPost(
          {@Body() required ConfirmSignInInput? body});

  ///
  Future<chopper.Response<String>> usersLogInPasswordlessPost(
      {required PasswordlessLoginInput? body}) {
    return _usersLogInPasswordlessPost(body: body);
  }

  ///
  @Post(
    path: '/users/log-in-passwordless',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _usersLogInPasswordlessPost(
      {@Body() required PasswordlessLoginInput? body});

  ///
  Future<chopper.Response<ConfirmPasswordlessLoginOutput>>
      usersLogInPasswordlessConfirmPost(
          {required ConfirmPasswordlessLoginInput? body}) {
    generatedMapping.putIfAbsent(ConfirmPasswordlessLoginOutput,
        () => ConfirmPasswordlessLoginOutput.fromJsonFactory);

    return _usersLogInPasswordlessConfirmPost(body: body);
  }

  ///
  @Post(
    path: '/users/log-in-passwordless/confirm',
    optionalBody: true,
  )
  Future<chopper.Response<ConfirmPasswordlessLoginOutput>>
      _usersLogInPasswordlessConfirmPost(
          {@Body() required ConfirmPasswordlessLoginInput? body});

  ///
  Future<chopper.Response> usersLoginWithRefreshTokenPost(
      {required LoginWithRefreshTokenInput? body}) {
    return _usersLoginWithRefreshTokenPost(body: body);
  }

  ///
  @Post(
    path: '/users/login-with-refresh-token',
    optionalBody: true,
  )
  Future<chopper.Response> _usersLoginWithRefreshTokenPost(
      {@Body() required LoginWithRefreshTokenInput? body});

  ///
  Future<chopper.Response<SignJwtOutput>> utilitiesSignJwtPost(
      {required SignJwtInput? body}) {
    generatedMapping.putIfAbsent(
        SignJwtOutput, () => SignJwtOutput.fromJsonFactory);

    return _utilitiesSignJwtPost(body: body);
  }

  ///
  @Post(
    path: '/utilities/sign-jwt',
    optionalBody: true,
  )
  Future<chopper.Response<SignJwtOutput>> _utilitiesSignJwtPost(
      {@Body() required SignJwtInput? body});
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
