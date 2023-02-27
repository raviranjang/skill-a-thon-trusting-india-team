// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cloud_wallet_api.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$CloudWalletApi extends CloudWalletApi {
  _$CloudWalletApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = CloudWalletApi;

  @override
  Future<Response<DidAuthResponseTokenOutput>>
      _didAuthCreateDidAuthResponsePost(
          {required DidAuthResponseTokenInput? body}) {
    final Uri $url = Uri.parse('/did-auth/create-did-auth-response');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<DidAuthResponseTokenOutput, DidAuthResponseTokenOutput>($request);
  }

  @override
  Future<Response<List<StoredCredential>>> _walletCredentialsGet(
      {String? credentialShareRequestToken}) {
    final Uri $url = Uri.parse('/wallet/credentials');
    final Map<String, dynamic> $params = <String, dynamic>{
      'credentialShareRequestToken': credentialShareRequestToken
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<StoredCredential>, StoredCredential>($request);
  }

  @override
  Future<Response<SaveCredentialOutput>> _walletCredentialsPost(
      {required SaveCredentialInput? body}) {
    final Uri $url = Uri.parse('/wallet/credentials');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<SaveCredentialOutput, SaveCredentialOutput>($request);
  }

  @override
  Future<Response<ClaimCredentialOutput>> _walletCredentialsClaimGet(
      {required String? credentialOfferRequestToken}) {
    final Uri $url = Uri.parse('/wallet/credentials/claim');
    final Map<String, dynamic> $params = <String, dynamic>{
      'credentialOfferRequestToken': credentialOfferRequestToken
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ClaimCredentialOutput, ClaimCredentialOutput>($request);
  }

  @override
  Future<Response<Object>> _walletCredentialsIdGet({required String? id}) {
    final Uri $url = Uri.parse('/wallet/credentials/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<dynamic>> _walletCredentialsIdDelete({required String? id}) {
    final Uri $url = Uri.parse('/wallet/credentials/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ShareCredentialOutput>> _walletCredentialsIdSharePost({
    required String? id,
    required ShareCredentialInput? body,
  }) {
    final Uri $url = Uri.parse('/wallet/credentials/${id}/share');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ShareCredentialOutput, ShareCredentialOutput>($request);
  }

  @override
  Future<Response<SharePresentationOutput>> _walletCredentialsSharePost(
      {required SharePresentationInput? body}) {
    final Uri $url = Uri.parse('/wallet/credentials/share');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<SharePresentationOutput, SharePresentationOutput>($request);
  }

  @override
  Future<Response<SignCredentialOutput>> _walletSignCredentialPost(
      {required SignCredentialInput? body}) {
    final Uri $url = Uri.parse('/wallet/sign-credential');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<SignCredentialOutput, SignCredentialOutput>($request);
  }

  @override
  Future<Response<SignPresentationOutput>> _walletSignPresentationPost(
      {required SignPresentationInput? body}) {
    final Uri $url = Uri.parse('/wallet/sign-presentation');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<SignPresentationOutput, SignPresentationOutput>($request);
  }

  @override
  Future<Response<String>> _walletCredentialShareTokenGenerateRequestTokenPost(
      {required GenerateCredentialShareRequestTokenRequest? body}) {
    final Uri $url =
        Uri.parse('/wallet/credential-share-token/generate-request-token');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _walletCredentialShareTokenCreateResponseTokenPost(
      {required CreateCredentialShareResponseTokenRequest? body}) {
    final Uri $url =
        Uri.parse('/wallet/credential-share-token/create-response-token');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<ReadEncryptedMessageOuput>> _messagesReadEncryptedMessagePost(
      {required ReadEncryptedMessageInput? body}) {
    final Uri $url = Uri.parse('/messages/read-encrypted-message');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<ReadEncryptedMessageOuput, ReadEncryptedMessageOuput>($request);
  }

  @override
  Future<Response<CreateEncryptedMessageOuput>>
      _messagesCreateEncryptedMessagePost(
          {required CreateEncryptedMessageInput? body}) {
    final Uri $url = Uri.parse('/messages/create-encrypted-message');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<CreateEncryptedMessageOuput,
        CreateEncryptedMessageOuput>($request);
  }

  @override
  Future<Response<dynamic>> _shareHashGet({
    required String? hash,
    required String? key,
  }) {
    final Uri $url = Uri.parse('/share/${hash}');
    final Map<String, dynamic> $params = <String, dynamic>{'key': key};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<String>> _usersGetDidGet() {
    final Uri $url = Uri.parse('/users/get-did');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<UserInfoOutput>> _usersGetInfoGet() {
    final Uri $url = Uri.parse('/users/get-info');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<UserInfoOutput, UserInfoOutput>($request);
  }

  @override
  Future<Response<LoginOutput>> _usersLoginPost({required LoginInput? body}) {
    final Uri $url = Uri.parse('/users/login');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<LoginOutput, LoginOutput>($request);
  }

  @override
  Future<Response<dynamic>> _usersSignupPost({required SignUpInput? body}) {
    final Uri $url = Uri.parse('/users/signup');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ConfirmSignUpOutput>> _usersSignupConfirmPost(
      {required ConfirmSignUpInput? body}) {
    final Uri $url = Uri.parse('/users/signup/confirm');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ConfirmSignUpOutput, ConfirmSignUpOutput>($request);
  }

  @override
  Future<Response<dynamic>> _usersLogoutPost() {
    final Uri $url = Uri.parse('/users/logout');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _usersForgotPasswordPost(
      {required ForgotPasswordInput? body}) {
    final Uri $url = Uri.parse('/users/forgot-password');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _usersForgotPasswordConfirmPost(
      {required ForgotPasswordConfirmInput? body}) {
    final Uri $url = Uri.parse('/users/forgot-password/confirm');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _usersChangeUsernamePost(
      {required ChangeUsernameInput? body}) {
    final Uri $url = Uri.parse('/users/change-username');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _usersChangeUsernameConfirmPost(
      {required ChangeUsernameConfirmInput? body}) {
    final Uri $url = Uri.parse('/users/change-username/confirm');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _usersChangePasswordPost(
      {required ChangePasswordInput? body}) {
    final Uri $url = Uri.parse('/users/change-password');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<String>> _usersSignInPasswordlessPost(
      {required SignInInput? body}) {
    final Uri $url = Uri.parse('/users/sign-in-passwordless');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<SignInWithTruecallerOutput>> _usersSignInTruecallerPost(
      {required SignInWithTuecallerInput? body}) {
    final Uri $url = Uri.parse('/users/sign-in-truecaller');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<SignInWithTruecallerOutput, SignInWithTruecallerOutput>($request);
  }

  @override
  Future<Response<ConfirmSignInOutput>> _usersSignInPasswordlessConfirmPost(
      {required ConfirmSignInInput? body}) {
    final Uri $url = Uri.parse('/users/sign-in-passwordless/confirm');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ConfirmSignInOutput, ConfirmSignInOutput>($request);
  }

  @override
  Future<Response<String>> _usersLogInPasswordlessPost(
      {required PasswordlessLoginInput? body}) {
    final Uri $url = Uri.parse('/users/log-in-passwordless');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<ConfirmPasswordlessLoginOutput>>
      _usersLogInPasswordlessConfirmPost(
          {required ConfirmPasswordlessLoginInput? body}) {
    final Uri $url = Uri.parse('/users/log-in-passwordless/confirm');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ConfirmPasswordlessLoginOutput,
        ConfirmPasswordlessLoginOutput>($request);
  }

  @override
  Future<Response<dynamic>> _usersLoginWithRefreshTokenPost(
      {required LoginWithRefreshTokenInput? body}) {
    final Uri $url = Uri.parse('/users/login-with-refresh-token');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<SignJwtOutput>> _utilitiesSignJwtPost(
      {required SignJwtInput? body}) {
    final Uri $url = Uri.parse('/utilities/sign-jwt');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<SignJwtOutput, SignJwtOutput>($request);
  }
}
