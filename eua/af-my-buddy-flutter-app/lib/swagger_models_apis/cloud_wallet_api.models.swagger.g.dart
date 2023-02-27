// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cloud_wallet_api.models.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorObject _$ErrorObjectFromJson(Map<String, dynamic> json) => ErrorObject(
      serviceName: json['serviceName'] as String,
      code: json['code'] as String,
      fields: json['fields'] as Map<String, dynamic>?,
      httpStatusCode: (json['httpStatusCode'] as num).toDouble(),
      message: json['message'] as String,
      context: json['context'],
      originalError: json['originalError'],
      inputParams: json['inputParams'],
      endpointUrl: json['endpointUrl'] as String,
    );

Map<String, dynamic> _$ErrorObjectToJson(ErrorObject instance) {
  final val = <String, dynamic>{
    'serviceName': instance.serviceName,
    'code': instance.code,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fields', instance.fields);
  val['httpStatusCode'] = instance.httpStatusCode;
  val['message'] = instance.message;
  writeNotNull('context', instance.context);
  writeNotNull('originalError', instance.originalError);
  writeNotNull('inputParams', instance.inputParams);
  val['endpointUrl'] = instance.endpointUrl;
  return val;
}

DidAuthResponseTokenOutput _$DidAuthResponseTokenOutputFromJson(
        Map<String, dynamic> json) =>
    DidAuthResponseTokenOutput(
      didAuthResponseToken: json['didAuthResponseToken'] as String,
    );

Map<String, dynamic> _$DidAuthResponseTokenOutputToJson(
        DidAuthResponseTokenOutput instance) =>
    <String, dynamic>{
      'didAuthResponseToken': instance.didAuthResponseToken,
    };

DidAuthResponseTokenInput _$DidAuthResponseTokenInputFromJson(
        Map<String, dynamic> json) =>
    DidAuthResponseTokenInput(
      didAuthRequestToken: json['didAuthRequestToken'] as String,
    );

Map<String, dynamic> _$DidAuthResponseTokenInputToJson(
        DidAuthResponseTokenInput instance) =>
    <String, dynamic>{
      'didAuthRequestToken': instance.didAuthRequestToken,
    };

AnyData _$AnyDataFromJson(Map<String, dynamic> json) => AnyData();

Map<String, dynamic> _$AnyDataToJson(AnyData instance) => <String, dynamic>{};

W3cCredentialStatus _$W3cCredentialStatusFromJson(Map<String, dynamic> json) =>
    W3cCredentialStatus(
      id: json['id'] as String,
      type: json['type'] as String,
      revocationListIndex: json['revocationListIndex'] as String,
      revocationListCredential: json['revocationListCredential'] as String,
    );

Map<String, dynamic> _$W3cCredentialStatusToJson(
        W3cCredentialStatus instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'revocationListIndex': instance.revocationListIndex,
      'revocationListCredential': instance.revocationListCredential,
    };

UnsignedW3cCredential _$UnsignedW3cCredentialFromJson(
        Map<String, dynamic> json) =>
    UnsignedW3cCredential(
      context: AnyData.fromJson(json['@context'] as Map<String, dynamic>),
      id: json['id'] as String,
      type:
          (json['type'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
      holder: json['holder'] == null
          ? null
          : AnyData.fromJson(json['holder'] as Map<String, dynamic>),
      credentialSubject:
          AnyData.fromJson(json['credentialSubject'] as Map<String, dynamic>),
      issuanceDate: json['issuanceDate'] as String?,
      credentialStatus: json['credentialStatus'] == null
          ? null
          : W3cCredentialStatus.fromJson(
              json['credentialStatus'] as Map<String, dynamic>),
      expirationDate: json['expirationDate'] as String?,
      credentialSchema: json['credentialSchema'] == null
          ? null
          : UnsignedW3cCredential$CredentialSchema.fromJson(
              json['credentialSchema'] as Map<String, dynamic>),
      proof: json['proof'] == null
          ? null
          : UnsignedW3cCredential$Proof.fromJson(
              json['proof'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UnsignedW3cCredentialToJson(
    UnsignedW3cCredential instance) {
  final val = <String, dynamic>{
    '@context': instance.context.toJson(),
    'id': instance.id,
    'type': instance.type,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('holder', instance.holder?.toJson());
  val['credentialSubject'] = instance.credentialSubject.toJson();
  writeNotNull('issuanceDate', instance.issuanceDate);
  writeNotNull('credentialStatus', instance.credentialStatus?.toJson());
  writeNotNull('expirationDate', instance.expirationDate);
  writeNotNull('credentialSchema', instance.credentialSchema?.toJson());
  writeNotNull('proof', instance.proof?.toJson());
  return val;
}

StoredOpenAttestationDocumentSignature
    _$StoredOpenAttestationDocumentSignatureFromJson(
            Map<String, dynamic> json) =>
        StoredOpenAttestationDocumentSignature(
          type: json['type'] as String?,
          targetHash: json['targetHash'] as String?,
          proof: json['proof'] == null
              ? null
              : AnyData.fromJson(json['proof'] as Map<String, dynamic>),
          merkleRoot: json['merkleRoot'] as String?,
        );

Map<String, dynamic> _$StoredOpenAttestationDocumentSignatureToJson(
    StoredOpenAttestationDocumentSignature instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('targetHash', instance.targetHash);
  writeNotNull('proof', instance.proof?.toJson());
  writeNotNull('merkleRoot', instance.merkleRoot);
  return val;
}

StoredOpenAttestationDocument _$StoredOpenAttestationDocumentFromJson(
        Map<String, dynamic> json) =>
    StoredOpenAttestationDocument(
      version: json['version'] as String,
      data: AnyData.fromJson(json['data'] as Map<String, dynamic>),
      signature: json['signature'] == null
          ? null
          : StoredOpenAttestationDocumentSignature.fromJson(
              json['signature'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StoredOpenAttestationDocumentToJson(
    StoredOpenAttestationDocument instance) {
  final val = <String, dynamic>{
    'version': instance.version,
    'data': instance.data.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('signature', instance.signature?.toJson());
  return val;
}

StoredCredential _$StoredCredentialFromJson(Map<String, dynamic> json) =>
    StoredCredential();

Map<String, dynamic> _$StoredCredentialToJson(StoredCredential instance) =>
    <String, dynamic>{};

ClaimCredentialOutput _$ClaimCredentialOutputFromJson(
        Map<String, dynamic> json) =>
    ClaimCredentialOutput(
      credentialIds: (json['credentialIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$ClaimCredentialOutputToJson(
        ClaimCredentialOutput instance) =>
    <String, dynamic>{
      'credentialIds': instance.credentialIds,
    };

ShareCredentialOutput _$ShareCredentialOutputFromJson(
        Map<String, dynamic> json) =>
    ShareCredentialOutput(
      qrCode: json['qrCode'] as String,
      sharingUrl: json['sharingUrl'] as String,
    );

Map<String, dynamic> _$ShareCredentialOutputToJson(
        ShareCredentialOutput instance) =>
    <String, dynamic>{
      'qrCode': instance.qrCode,
      'sharingUrl': instance.sharingUrl,
    };

ShareCredentialInput _$ShareCredentialInputFromJson(
        Map<String, dynamic> json) =>
    ShareCredentialInput(
      ttl: json['ttl'] as String?,
      fieldsToShare: (json['fieldsToShare'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$ShareCredentialInputToJson(
    ShareCredentialInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ttl', instance.ttl);
  writeNotNull('fieldsToShare', instance.fieldsToShare);
  return val;
}

SharePresentationOutput _$SharePresentationOutputFromJson(
        Map<String, dynamic> json) =>
    SharePresentationOutput(
      qrCode: json['qrCode'] as String,
      sharingUrl: json['sharingUrl'] as String,
    );

Map<String, dynamic> _$SharePresentationOutputToJson(
        SharePresentationOutput instance) =>
    <String, dynamic>{
      'qrCode': instance.qrCode,
      'sharingUrl': instance.sharingUrl,
    };

AnyObject _$AnyObjectFromJson(Map<String, dynamic> json) => AnyObject();

Map<String, dynamic> _$AnyObjectToJson(AnyObject instance) =>
    <String, dynamic>{};

W3cProof _$W3cProofFromJson(Map<String, dynamic> json) => W3cProof(
      type: json['type'] as String,
    );

Map<String, dynamic> _$W3cProofToJson(W3cProof instance) => <String, dynamic>{
      'type': instance.type,
    };

W3cCredential _$W3cCredentialFromJson(Map<String, dynamic> json) =>
    W3cCredential(
      context: AnyData.fromJson(json['@context'] as Map<String, dynamic>),
      id: json['id'] as String,
      type:
          (json['type'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
      holder: AnyData.fromJson(json['holder'] as Map<String, dynamic>),
      credentialSubject:
          AnyData.fromJson(json['credentialSubject'] as Map<String, dynamic>),
      credentialSchema: json['credentialSchema'] == null
          ? null
          : AnyData.fromJson(json['credentialSchema'] as Map<String, dynamic>),
      issuanceDate: json['issuanceDate'] as String,
      issuer: AnyData.fromJson(json['issuer'] as Map<String, dynamic>),
      credentialStatus: json['credentialStatus'] == null
          ? null
          : W3cCredentialStatus.fromJson(
              json['credentialStatus'] as Map<String, dynamic>),
      expirationDate: json['expirationDate'] as String?,
      proof: W3cProof.fromJson(json['proof'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$W3cCredentialToJson(W3cCredential instance) {
  final val = <String, dynamic>{
    '@context': instance.context.toJson(),
    'id': instance.id,
    'type': instance.type,
    'holder': instance.holder.toJson(),
    'credentialSubject': instance.credentialSubject.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('credentialSchema', instance.credentialSchema?.toJson());
  val['issuanceDate'] = instance.issuanceDate;
  val['issuer'] = instance.issuer.toJson();
  writeNotNull('credentialStatus', instance.credentialStatus?.toJson());
  writeNotNull('expirationDate', instance.expirationDate);
  val['proof'] = instance.proof.toJson();
  return val;
}

W3cPresentation _$W3cPresentationFromJson(Map<String, dynamic> json) =>
    W3cPresentation(
      context: AnyData.fromJson(json['@context'] as Map<String, dynamic>),
      id: json['id'] as String?,
      type:
          (json['type'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
      holder: AnyData.fromJson(json['holder'] as Map<String, dynamic>),
      verifiableCredential: (json['verifiableCredential'] as List<dynamic>?)
              ?.map((e) => W3cCredential.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      proof: AnyData.fromJson(json['proof'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$W3cPresentationToJson(W3cPresentation instance) {
  final val = <String, dynamic>{
    '@context': instance.context.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['type'] = instance.type;
  val['holder'] = instance.holder.toJson();
  val['verifiableCredential'] =
      instance.verifiableCredential.map((e) => e.toJson()).toList();
  val['proof'] = instance.proof.toJson();
  return val;
}

SharePresentationInput _$SharePresentationInputFromJson(
        Map<String, dynamic> json) =>
    SharePresentationInput(
      ttl: json['ttl'] as String?,
      oneTimeUse: json['oneTimeUse'],
      signedPresentation: W3cPresentation.fromJson(
          json['signedPresentation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SharePresentationInputToJson(
    SharePresentationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ttl', instance.ttl);
  writeNotNull('oneTimeUse', instance.oneTimeUse);
  val['signedPresentation'] = instance.signedPresentation.toJson();
  return val;
}

SaveCredentialOutput _$SaveCredentialOutputFromJson(
        Map<String, dynamic> json) =>
    SaveCredentialOutput(
      credentialIds: (json['credentialIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$SaveCredentialOutputToJson(
        SaveCredentialOutput instance) =>
    <String, dynamic>{
      'credentialIds': instance.credentialIds,
    };

SaveCredentialInput _$SaveCredentialInputFromJson(Map<String, dynamic> json) =>
    SaveCredentialInput(
      data:
          (json['data'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
              [],
    );

Map<String, dynamic> _$SaveCredentialInputToJson(
        SaveCredentialInput instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

SignCredentialOutput _$SignCredentialOutputFromJson(
        Map<String, dynamic> json) =>
    SignCredentialOutput(
      signedCredential: W3cCredential.fromJson(
          json['signedCredential'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignCredentialOutputToJson(
        SignCredentialOutput instance) =>
    <String, dynamic>{
      'signedCredential': instance.signedCredential.toJson(),
    };

SignCredentialInput _$SignCredentialInputFromJson(Map<String, dynamic> json) =>
    SignCredentialInput(
      unsignedCredential: UnsignedW3cCredential.fromJson(
          json['unsignedCredential'] as Map<String, dynamic>),
      keyType: keyTypesFromJson(json['keyType']),
    );

Map<String, dynamic> _$SignCredentialInputToJson(SignCredentialInput instance) {
  final val = <String, dynamic>{
    'unsignedCredential': instance.unsignedCredential.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('keyType', keyTypesToJson(instance.keyType));
  return val;
}

SignPresentationOutput _$SignPresentationOutputFromJson(
        Map<String, dynamic> json) =>
    SignPresentationOutput(
      signedPresentation: W3cPresentation.fromJson(
          json['signedPresentation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignPresentationOutputToJson(
        SignPresentationOutput instance) =>
    <String, dynamic>{
      'signedPresentation': instance.signedPresentation.toJson(),
    };

UnsignedW3cPresentation _$UnsignedW3cPresentationFromJson(
        Map<String, dynamic> json) =>
    UnsignedW3cPresentation(
      context: AnyData.fromJson(json['@context'] as Map<String, dynamic>),
      id: json['id'] as String?,
      type:
          (json['type'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
      holder: AnyData.fromJson(json['holder'] as Map<String, dynamic>),
      verifiableCredential: (json['verifiableCredential'] as List<dynamic>?)
              ?.map((e) => W3cCredential.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$UnsignedW3cPresentationToJson(
    UnsignedW3cPresentation instance) {
  final val = <String, dynamic>{
    '@context': instance.context.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['type'] = instance.type;
  val['holder'] = instance.holder.toJson();
  val['verifiableCredential'] =
      instance.verifiableCredential.map((e) => e.toJson()).toList();
  return val;
}

SignPresentationInput _$SignPresentationInputFromJson(
        Map<String, dynamic> json) =>
    SignPresentationInput(
      unsignedPresentation: UnsignedW3cPresentation.fromJson(
          json['unsignedPresentation'] as Map<String, dynamic>),
      challenge: json['challenge'] as String,
      domain: json['domain'] as String,
    );

Map<String, dynamic> _$SignPresentationInputToJson(
        SignPresentationInput instance) =>
    <String, dynamic>{
      'unsignedPresentation': instance.unsignedPresentation.toJson(),
      'challenge': instance.challenge,
      'domain': instance.domain,
    };

ApiCredentialRequirement _$ApiCredentialRequirementFromJson(
        Map<String, dynamic> json) =>
    ApiCredentialRequirement(
      constraints: (json['constraints'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      type:
          (json['type'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
    );

Map<String, dynamic> _$ApiCredentialRequirementToJson(
    ApiCredentialRequirement instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('constraints', instance.constraints);
  val['type'] = instance.type;
  return val;
}

GenerateCredentialShareRequestTokenRequest
    _$GenerateCredentialShareRequestTokenRequestFromJson(
            Map<String, dynamic> json) =>
        GenerateCredentialShareRequestTokenRequest(
          requirements: (json['requirements'] as List<dynamic>?)
                  ?.map((e) => ApiCredentialRequirement.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              [],
          issuerDid: json['issuerDid'] as String?,
          audienceDid: json['audienceDid'] as String?,
          expiresAt: json['expiresAt'] as String?,
          nonce: json['nonce'] as String?,
          callbackUrl: json['callbackUrl'] as String?,
        );

Map<String, dynamic> _$GenerateCredentialShareRequestTokenRequestToJson(
    GenerateCredentialShareRequestTokenRequest instance) {
  final val = <String, dynamic>{
    'requirements': instance.requirements.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('issuerDid', instance.issuerDid);
  writeNotNull('audienceDid', instance.audienceDid);
  writeNotNull('expiresAt', instance.expiresAt);
  writeNotNull('nonce', instance.nonce);
  writeNotNull('callbackUrl', instance.callbackUrl);
  return val;
}

CreateCredentialShareResponseTokenRequest
    _$CreateCredentialShareResponseTokenRequestFromJson(
            Map<String, dynamic> json) =>
        CreateCredentialShareResponseTokenRequest(
          credentialShareRequestToken:
              json['credentialShareRequestToken'] as String,
          credentials: (json['credentials'] as List<dynamic>?)
                  ?.map(
                      (e) => W3cCredential.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              [],
          expiresAt: json['expiresAt'] as String?,
        );

Map<String, dynamic> _$CreateCredentialShareResponseTokenRequestToJson(
    CreateCredentialShareResponseTokenRequest instance) {
  final val = <String, dynamic>{
    'credentialShareRequestToken': instance.credentialShareRequestToken,
    'credentials': instance.credentials.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('expiresAt', instance.expiresAt);
  return val;
}

ReadEncryptedMessageOuput _$ReadEncryptedMessageOuputFromJson(
        Map<String, dynamic> json) =>
    ReadEncryptedMessageOuput(
      message: AnyData.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReadEncryptedMessageOuputToJson(
        ReadEncryptedMessageOuput instance) =>
    <String, dynamic>{
      'message': instance.message.toJson(),
    };

ReadEncryptedMessageInput _$ReadEncryptedMessageInputFromJson(
        Map<String, dynamic> json) =>
    ReadEncryptedMessageInput(
      encryptedMessage: json['encryptedMessage'] as String,
    );

Map<String, dynamic> _$ReadEncryptedMessageInputToJson(
        ReadEncryptedMessageInput instance) =>
    <String, dynamic>{
      'encryptedMessage': instance.encryptedMessage,
    };

CreateEncryptedMessageOuput _$CreateEncryptedMessageOuputFromJson(
        Map<String, dynamic> json) =>
    CreateEncryptedMessageOuput(
      encryptedMessage: json['encryptedMessage'] as String,
    );

Map<String, dynamic> _$CreateEncryptedMessageOuputToJson(
        CreateEncryptedMessageOuput instance) =>
    <String, dynamic>{
      'encryptedMessage': instance.encryptedMessage,
    };

CreateEncryptedMessageInput _$CreateEncryptedMessageInputFromJson(
        Map<String, dynamic> json) =>
    CreateEncryptedMessageInput(
      did: json['did'] as String,
      message: AnyData.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateEncryptedMessageInputToJson(
        CreateEncryptedMessageInput instance) =>
    <String, dynamic>{
      'did': instance.did,
      'message': instance.message.toJson(),
    };

UserInfoOutput _$UserInfoOutputFromJson(Map<String, dynamic> json) =>
    UserInfoOutput(
      userCreateDate: json['userCreateDate'] as String?,
    );

Map<String, dynamic> _$UserInfoOutputToJson(UserInfoOutput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userCreateDate', instance.userCreateDate);
  return val;
}

LoginOutput _$LoginOutputFromJson(Map<String, dynamic> json) => LoginOutput(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      did: json['did'] as String,
    );

Map<String, dynamic> _$LoginOutputToJson(LoginOutput instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'did': instance.did,
    };

LoginInput _$LoginInputFromJson(Map<String, dynamic> json) => LoginInput(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$LoginInputToJson(LoginInput instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

ArbitraryUsernameSignUpOutput _$ArbitraryUsernameSignUpOutputFromJson(
        Map<String, dynamic> json) =>
    ArbitraryUsernameSignUpOutput(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      did: json['did'] as String,
    );

Map<String, dynamic> _$ArbitraryUsernameSignUpOutputToJson(
        ArbitraryUsernameSignUpOutput instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'did': instance.did,
    };

SdkOptionsInput _$SdkOptionsInputFromJson(Map<String, dynamic> json) =>
    SdkOptionsInput(
      didMethod: apiDidMethodFromJson(json['didMethod']),
      keyTypes: keyTypesListFromJson(json['keyTypes'] as List?),
    );

Map<String, dynamic> _$SdkOptionsInputToJson(SdkOptionsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('didMethod', apiDidMethodToJson(instance.didMethod));
  val['keyTypes'] = keyTypesListToJson(instance.keyTypes);
  return val;
}

ApiMessageParameters _$ApiMessageParametersFromJson(
        Map<String, dynamic> json) =>
    ApiMessageParameters(
      htmlMessage: json['htmlMessage'] as String?,
      subject: json['subject'] as String?,
      message: json['message'] as String,
    );

Map<String, dynamic> _$ApiMessageParametersToJson(
    ApiMessageParameters instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('htmlMessage', instance.htmlMessage);
  writeNotNull('subject', instance.subject);
  val['message'] = instance.message;
  return val;
}

SignUpInput _$SignUpInputFromJson(Map<String, dynamic> json) => SignUpInput(
      username: json['username'] as String,
      password: json['password'] as String,
      options: json['options'] == null
          ? null
          : SdkOptionsInput.fromJson(json['options'] as Map<String, dynamic>),
      messageParameters: json['messageParameters'] == null
          ? null
          : ApiMessageParameters.fromJson(
              json['messageParameters'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignUpInputToJson(SignUpInput instance) {
  final val = <String, dynamic>{
    'username': instance.username,
    'password': instance.password,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('options', instance.options?.toJson());
  writeNotNull('messageParameters', instance.messageParameters?.toJson());
  return val;
}

ConfirmSignUpOutput _$ConfirmSignUpOutputFromJson(Map<String, dynamic> json) =>
    ConfirmSignUpOutput(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      idToken: json['idToken'] as String,
      did: json['did'] as String,
    );

Map<String, dynamic> _$ConfirmSignUpOutputToJson(
        ConfirmSignUpOutput instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'idToken': instance.idToken,
      'did': instance.did,
    };

ConfirmSignUpInput _$ConfirmSignUpInputFromJson(Map<String, dynamic> json) =>
    ConfirmSignUpInput(
      token: json['token'] as String,
      confirmationCode: json['confirmationCode'] as String,
      options: json['options'] == null
          ? null
          : SdkOptionsInput.fromJson(json['options'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConfirmSignUpInputToJson(ConfirmSignUpInput instance) {
  final val = <String, dynamic>{
    'token': instance.token,
    'confirmationCode': instance.confirmationCode,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('options', instance.options?.toJson());
  return val;
}

ForgotPasswordInput _$ForgotPasswordInputFromJson(Map<String, dynamic> json) =>
    ForgotPasswordInput(
      username: json['username'] as String,
    );

Map<String, dynamic> _$ForgotPasswordInputToJson(
        ForgotPasswordInput instance) =>
    <String, dynamic>{
      'username': instance.username,
    };

ForgotPasswordConfirmInput _$ForgotPasswordConfirmInputFromJson(
        Map<String, dynamic> json) =>
    ForgotPasswordConfirmInput(
      username: json['username'] as String,
      otp: json['otp'] as String,
      newPassword: json['newPassword'] as String,
    );

Map<String, dynamic> _$ForgotPasswordConfirmInputToJson(
        ForgotPasswordConfirmInput instance) =>
    <String, dynamic>{
      'username': instance.username,
      'otp': instance.otp,
      'newPassword': instance.newPassword,
    };

ChangeUsernameInput _$ChangeUsernameInputFromJson(Map<String, dynamic> json) =>
    ChangeUsernameInput(
      username: json['username'] as String,
    );

Map<String, dynamic> _$ChangeUsernameInputToJson(
        ChangeUsernameInput instance) =>
    <String, dynamic>{
      'username': instance.username,
    };

ChangeUsernameConfirmInput _$ChangeUsernameConfirmInputFromJson(
        Map<String, dynamic> json) =>
    ChangeUsernameConfirmInput(
      username: json['username'] as String,
      confirmationCode: json['confirmationCode'] as String,
    );

Map<String, dynamic> _$ChangeUsernameConfirmInputToJson(
        ChangeUsernameConfirmInput instance) =>
    <String, dynamic>{
      'username': instance.username,
      'confirmationCode': instance.confirmationCode,
    };

ChangePasswordInput _$ChangePasswordInputFromJson(Map<String, dynamic> json) =>
    ChangePasswordInput(
      oldPassword: json['oldPassword'] as String,
      newPassword: json['newPassword'] as String,
    );

Map<String, dynamic> _$ChangePasswordInputToJson(
        ChangePasswordInput instance) =>
    <String, dynamic>{
      'oldPassword': instance.oldPassword,
      'newPassword': instance.newPassword,
    };

SignInInput _$SignInInputFromJson(Map<String, dynamic> json) => SignInInput(
      username: json['username'] as String,
      messageParameters: json['messageParameters'] == null
          ? null
          : ApiMessageParameters.fromJson(
              json['messageParameters'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignInInputToJson(SignInInput instance) {
  final val = <String, dynamic>{
    'username': instance.username,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('messageParameters', instance.messageParameters?.toJson());
  return val;
}

SignInWithTruecallerOutput _$SignInWithTruecallerOutputFromJson(
        Map<String, dynamic> json) =>
    SignInWithTruecallerOutput(
      accessToken: json['accessToken'] as String,
      idToken: json['idToken'] as String,
      refreshToken: json['refreshToken'] as String,
      did: json['did'] as String,
    );

Map<String, dynamic> _$SignInWithTruecallerOutputToJson(
        SignInWithTruecallerOutput instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'idToken': instance.idToken,
      'refreshToken': instance.refreshToken,
      'did': instance.did,
    };

ProfileTrueCaller _$ProfileTrueCallerFromJson(Map<String, dynamic> json) =>
    ProfileTrueCaller(
      payload: json['payload'] as String,
      signature: json['signature'] as String,
      signatureAlgorithm: json['signatureAlgorithm'] as String,
      avatarUrl: json['avatarUrl'] as String?,
      city: json['city'] as String?,
      companyName: json['companyName'] as String?,
      countryCode: json['countryCode'] as String?,
      email: json['email'] as String?,
      facebookId: json['facebookId'] as String?,
      firstName: json['firstName'] as String?,
      gender: json['gender'] as String?,
      isAmbassador: json['isAmbassador'] as bool?,
      isBusiness: json['isBusiness'] as bool?,
      isVerified: json['isVerified'] as bool?,
      jobTitle: json['jobTitle'] as String?,
      lastName: json['lastName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      requestNonce: json['requestNonce'] as String?,
      street: json['street'] as String?,
      successful: json['successful'] as bool?,
      twitterId: json['twitterId'] as String?,
      url: json['url'] as String?,
      zipcode: json['zipcode'] as String?,
    );

Map<String, dynamic> _$ProfileTrueCallerToJson(ProfileTrueCaller instance) {
  final val = <String, dynamic>{
    'payload': instance.payload,
    'signature': instance.signature,
    'signatureAlgorithm': instance.signatureAlgorithm,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('avatarUrl', instance.avatarUrl);
  writeNotNull('city', instance.city);
  writeNotNull('companyName', instance.companyName);
  writeNotNull('countryCode', instance.countryCode);
  writeNotNull('email', instance.email);
  writeNotNull('facebookId', instance.facebookId);
  writeNotNull('firstName', instance.firstName);
  writeNotNull('gender', instance.gender);
  writeNotNull('isAmbassador', instance.isAmbassador);
  writeNotNull('isBusiness', instance.isBusiness);
  writeNotNull('isVerified', instance.isVerified);
  writeNotNull('jobTitle', instance.jobTitle);
  writeNotNull('lastName', instance.lastName);
  writeNotNull('phoneNumber', instance.phoneNumber);
  writeNotNull('requestNonce', instance.requestNonce);
  writeNotNull('street', instance.street);
  writeNotNull('successful', instance.successful);
  writeNotNull('twitterId', instance.twitterId);
  writeNotNull('url', instance.url);
  writeNotNull('zipcode', instance.zipcode);
  return val;
}

SignInWithTuecallerInput _$SignInWithTuecallerInputFromJson(
        Map<String, dynamic> json) =>
    SignInWithTuecallerInput(
      token: ProfileTrueCaller.fromJson(json['token'] as Map<String, dynamic>),
      options: json['options'] == null
          ? null
          : SdkOptionsInput.fromJson(json['options'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignInWithTuecallerInputToJson(
    SignInWithTuecallerInput instance) {
  final val = <String, dynamic>{
    'token': instance.token.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('options', instance.options?.toJson());
  return val;
}

ConfirmSignInOutput _$ConfirmSignInOutputFromJson(Map<String, dynamic> json) =>
    ConfirmSignInOutput(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      idToken: json['idToken'] as String,
      did: json['did'] as String,
    );

Map<String, dynamic> _$ConfirmSignInOutputToJson(
        ConfirmSignInOutput instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'idToken': instance.idToken,
      'did': instance.did,
    };

ConfirmSignInInput _$ConfirmSignInInputFromJson(Map<String, dynamic> json) =>
    ConfirmSignInInput(
      token: json['token'] as String,
      confirmationCode: json['confirmationCode'] as String,
      issueSignupCredential: json['issueSignupCredential'] as bool?,
      options: json['options'] == null
          ? null
          : SdkOptionsInput.fromJson(json['options'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConfirmSignInInputToJson(ConfirmSignInInput instance) {
  final val = <String, dynamic>{
    'token': instance.token,
    'confirmationCode': instance.confirmationCode,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('issueSignupCredential', instance.issueSignupCredential);
  writeNotNull('options', instance.options?.toJson());
  return val;
}

PasswordlessLoginInput _$PasswordlessLoginInputFromJson(
        Map<String, dynamic> json) =>
    PasswordlessLoginInput(
      username: json['username'] as String,
      messageParameters: json['messageParameters'] == null
          ? null
          : ApiMessageParameters.fromJson(
              json['messageParameters'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PasswordlessLoginInputToJson(
    PasswordlessLoginInput instance) {
  final val = <String, dynamic>{
    'username': instance.username,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('messageParameters', instance.messageParameters?.toJson());
  return val;
}

ConfirmPasswordlessLoginOutput _$ConfirmPasswordlessLoginOutputFromJson(
        Map<String, dynamic> json) =>
    ConfirmPasswordlessLoginOutput(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      idToken: json['idToken'] as String,
      did: json['did'] as String,
    );

Map<String, dynamic> _$ConfirmPasswordlessLoginOutputToJson(
        ConfirmPasswordlessLoginOutput instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'idToken': instance.idToken,
      'did': instance.did,
    };

ConfirmPasswordlessLoginInput _$ConfirmPasswordlessLoginInputFromJson(
        Map<String, dynamic> json) =>
    ConfirmPasswordlessLoginInput(
      token: json['token'] as String,
      confirmationCode: json['confirmationCode'] as String,
    );

Map<String, dynamic> _$ConfirmPasswordlessLoginInputToJson(
        ConfirmPasswordlessLoginInput instance) =>
    <String, dynamic>{
      'token': instance.token,
      'confirmationCode': instance.confirmationCode,
    };

PickLoginOutputExcludeKeyofLoginOutputRefreshToken
    _$PickLoginOutputExcludeKeyofLoginOutputRefreshTokenFromJson(
            Map<String, dynamic> json) =>
        PickLoginOutputExcludeKeyofLoginOutputRefreshToken(
          accessToken: json['accessToken'] as String,
          did: json['did'] as String,
        );

Map<String, dynamic> _$PickLoginOutputExcludeKeyofLoginOutputRefreshTokenToJson(
        PickLoginOutputExcludeKeyofLoginOutputRefreshToken instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'did': instance.did,
    };

LoginWithRefreshTokenInput _$LoginWithRefreshTokenInputFromJson(
        Map<String, dynamic> json) =>
    LoginWithRefreshTokenInput(
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$LoginWithRefreshTokenInputToJson(
        LoginWithRefreshTokenInput instance) =>
    <String, dynamic>{
      'refreshToken': instance.refreshToken,
    };

SignedJwtObject _$SignedJwtObjectFromJson(Map<String, dynamic> json) =>
    SignedJwtObject(
      header: AnyData.fromJson(json['header'] as Map<String, dynamic>),
      payload: AnyData.fromJson(json['payload'] as Map<String, dynamic>),
      signature: json['signature'] as String?,
    );

Map<String, dynamic> _$SignedJwtObjectToJson(SignedJwtObject instance) {
  final val = <String, dynamic>{
    'header': instance.header.toJson(),
    'payload': instance.payload.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('signature', instance.signature);
  return val;
}

SignJwtOutput _$SignJwtOutputFromJson(Map<String, dynamic> json) =>
    SignJwtOutput(
      jwtObject:
          SignedJwtObject.fromJson(json['jwtObject'] as Map<String, dynamic>),
      jwt: json['jwt'] as String?,
    );

Map<String, dynamic> _$SignJwtOutputToJson(SignJwtOutput instance) {
  final val = <String, dynamic>{
    'jwtObject': instance.jwtObject.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('jwt', instance.jwt);
  return val;
}

UnsignedJwtObject _$UnsignedJwtObjectFromJson(Map<String, dynamic> json) =>
    UnsignedJwtObject(
      header: AnyData.fromJson(json['header'] as Map<String, dynamic>),
      payload: AnyData.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UnsignedJwtObjectToJson(UnsignedJwtObject instance) =>
    <String, dynamic>{
      'header': instance.header.toJson(),
      'payload': instance.payload.toJson(),
    };

SignJwtInput _$SignJwtInputFromJson(Map<String, dynamic> json) => SignJwtInput(
      jwtObject:
          UnsignedJwtObject.fromJson(json['jwtObject'] as Map<String, dynamic>),
      returnEncodedJwt: json['returnEncodedJwt'] as bool?,
    );

Map<String, dynamic> _$SignJwtInputToJson(SignJwtInput instance) {
  final val = <String, dynamic>{
    'jwtObject': instance.jwtObject.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('returnEncodedJwt', instance.returnEncodedJwt);
  return val;
}

UnsignedW3cCredential$CredentialSchema
    _$UnsignedW3cCredential$CredentialSchemaFromJson(
            Map<String, dynamic> json) =>
        UnsignedW3cCredential$CredentialSchema(
          type: json['type'] as String,
          id: json['id'] as String,
        );

Map<String, dynamic> _$UnsignedW3cCredential$CredentialSchemaToJson(
        UnsignedW3cCredential$CredentialSchema instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
    };

UnsignedW3cCredential$Proof _$UnsignedW3cCredential$ProofFromJson(
        Map<String, dynamic> json) =>
    UnsignedW3cCredential$Proof(
      type: json['type'] as String,
    );

Map<String, dynamic> _$UnsignedW3cCredential$ProofToJson(
        UnsignedW3cCredential$Proof instance) =>
    <String, dynamic>{
      'type': instance.type,
    };
