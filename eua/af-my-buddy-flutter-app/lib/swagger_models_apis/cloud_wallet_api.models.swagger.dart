// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'cloud_wallet_api.enums.swagger.dart' as enums;

part 'cloud_wallet_api.models.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class ErrorObject {
  ErrorObject({
    required this.serviceName,
    required this.code,
    this.fields,
    required this.httpStatusCode,
    required this.message,
    this.context,
    this.originalError,
    required this.inputParams,
    required this.endpointUrl,
  });

  factory ErrorObject.fromJson(Map<String, dynamic> json) =>
      _$ErrorObjectFromJson(json);

  @JsonKey(name: 'serviceName', includeIfNull: false)
  final String serviceName;
  @JsonKey(name: 'code', includeIfNull: false)
  final String code;
  @JsonKey(name: 'fields', includeIfNull: false)
  final Map<String, dynamic>? fields;
  @JsonKey(name: 'httpStatusCode', includeIfNull: false)
  final double httpStatusCode;
  @JsonKey(name: 'message', includeIfNull: false)
  final String message;
  @JsonKey(name: 'context', includeIfNull: false)
  final dynamic context;
  @JsonKey(name: 'originalError', includeIfNull: false)
  final dynamic originalError;
  @JsonKey(name: 'inputParams', includeIfNull: false)
  final dynamic inputParams;
  @JsonKey(name: 'endpointUrl', includeIfNull: false)
  final String endpointUrl;
  static const fromJsonFactory = _$ErrorObjectFromJson;
  static const toJsonFactory = _$ErrorObjectToJson;
  Map<String, dynamic> toJson() => _$ErrorObjectToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorObject &&
            (identical(other.serviceName, serviceName) ||
                const DeepCollectionEquality()
                    .equals(other.serviceName, serviceName)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.fields, fields) ||
                const DeepCollectionEquality().equals(other.fields, fields)) &&
            (identical(other.httpStatusCode, httpStatusCode) ||
                const DeepCollectionEquality()
                    .equals(other.httpStatusCode, httpStatusCode)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.originalError, originalError) ||
                const DeepCollectionEquality()
                    .equals(other.originalError, originalError)) &&
            (identical(other.inputParams, inputParams) ||
                const DeepCollectionEquality()
                    .equals(other.inputParams, inputParams)) &&
            (identical(other.endpointUrl, endpointUrl) ||
                const DeepCollectionEquality()
                    .equals(other.endpointUrl, endpointUrl)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(serviceName) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(fields) ^
      const DeepCollectionEquality().hash(httpStatusCode) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(originalError) ^
      const DeepCollectionEquality().hash(inputParams) ^
      const DeepCollectionEquality().hash(endpointUrl) ^
      runtimeType.hashCode;
}

extension $ErrorObjectExtension on ErrorObject {
  ErrorObject copyWith(
      {String? serviceName,
      String? code,
      Map<String, dynamic>? fields,
      double? httpStatusCode,
      String? message,
      dynamic context,
      dynamic originalError,
      dynamic inputParams,
      String? endpointUrl}) {
    return ErrorObject(
        serviceName: serviceName ?? this.serviceName,
        code: code ?? this.code,
        fields: fields ?? this.fields,
        httpStatusCode: httpStatusCode ?? this.httpStatusCode,
        message: message ?? this.message,
        context: context ?? this.context,
        originalError: originalError ?? this.originalError,
        inputParams: inputParams ?? this.inputParams,
        endpointUrl: endpointUrl ?? this.endpointUrl);
  }

  ErrorObject copyWithWrapped(
      {Wrapped<String>? serviceName,
      Wrapped<String>? code,
      Wrapped<Map<String, dynamic>?>? fields,
      Wrapped<double>? httpStatusCode,
      Wrapped<String>? message,
      Wrapped<dynamic>? context,
      Wrapped<dynamic>? originalError,
      Wrapped<dynamic>? inputParams,
      Wrapped<String>? endpointUrl}) {
    return ErrorObject(
        serviceName:
            (serviceName != null ? serviceName.value : this.serviceName),
        code: (code != null ? code.value : this.code),
        fields: (fields != null ? fields.value : this.fields),
        httpStatusCode: (httpStatusCode != null
            ? httpStatusCode.value
            : this.httpStatusCode),
        message: (message != null ? message.value : this.message),
        context: (context != null ? context.value : this.context),
        originalError:
            (originalError != null ? originalError.value : this.originalError),
        inputParams:
            (inputParams != null ? inputParams.value : this.inputParams),
        endpointUrl:
            (endpointUrl != null ? endpointUrl.value : this.endpointUrl));
  }
}

@JsonSerializable(explicitToJson: true)
class DidAuthResponseTokenOutput {
  DidAuthResponseTokenOutput({
    required this.didAuthResponseToken,
  });

  factory DidAuthResponseTokenOutput.fromJson(Map<String, dynamic> json) =>
      _$DidAuthResponseTokenOutputFromJson(json);

  @JsonKey(name: 'didAuthResponseToken', includeIfNull: false)
  final String didAuthResponseToken;
  static const fromJsonFactory = _$DidAuthResponseTokenOutputFromJson;
  static const toJsonFactory = _$DidAuthResponseTokenOutputToJson;
  Map<String, dynamic> toJson() => _$DidAuthResponseTokenOutputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DidAuthResponseTokenOutput &&
            (identical(other.didAuthResponseToken, didAuthResponseToken) ||
                const DeepCollectionEquality()
                    .equals(other.didAuthResponseToken, didAuthResponseToken)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(didAuthResponseToken) ^
      runtimeType.hashCode;
}

extension $DidAuthResponseTokenOutputExtension on DidAuthResponseTokenOutput {
  DidAuthResponseTokenOutput copyWith({String? didAuthResponseToken}) {
    return DidAuthResponseTokenOutput(
        didAuthResponseToken:
            didAuthResponseToken ?? this.didAuthResponseToken);
  }

  DidAuthResponseTokenOutput copyWithWrapped(
      {Wrapped<String>? didAuthResponseToken}) {
    return DidAuthResponseTokenOutput(
        didAuthResponseToken: (didAuthResponseToken != null
            ? didAuthResponseToken.value
            : this.didAuthResponseToken));
  }
}

@JsonSerializable(explicitToJson: true)
class DidAuthResponseTokenInput {
  DidAuthResponseTokenInput({
    required this.didAuthRequestToken,
  });

  factory DidAuthResponseTokenInput.fromJson(Map<String, dynamic> json) =>
      _$DidAuthResponseTokenInputFromJson(json);

  @JsonKey(name: 'didAuthRequestToken', includeIfNull: false)
  final String didAuthRequestToken;
  static const fromJsonFactory = _$DidAuthResponseTokenInputFromJson;
  static const toJsonFactory = _$DidAuthResponseTokenInputToJson;
  Map<String, dynamic> toJson() => _$DidAuthResponseTokenInputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DidAuthResponseTokenInput &&
            (identical(other.didAuthRequestToken, didAuthRequestToken) ||
                const DeepCollectionEquality()
                    .equals(other.didAuthRequestToken, didAuthRequestToken)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(didAuthRequestToken) ^
      runtimeType.hashCode;
}

extension $DidAuthResponseTokenInputExtension on DidAuthResponseTokenInput {
  DidAuthResponseTokenInput copyWith({String? didAuthRequestToken}) {
    return DidAuthResponseTokenInput(
        didAuthRequestToken: didAuthRequestToken ?? this.didAuthRequestToken);
  }

  DidAuthResponseTokenInput copyWithWrapped(
      {Wrapped<String>? didAuthRequestToken}) {
    return DidAuthResponseTokenInput(
        didAuthRequestToken: (didAuthRequestToken != null
            ? didAuthRequestToken.value
            : this.didAuthRequestToken));
  }
}

@JsonSerializable(explicitToJson: true)
class AnyData {
  AnyData();

  factory AnyData.fromJson(Map<String, dynamic> json) =>
      _$AnyDataFromJson(json);

  static const fromJsonFactory = _$AnyDataFromJson;
  static const toJsonFactory = _$AnyDataToJson;
  Map<String, dynamic> toJson() => _$AnyDataToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class W3cCredentialStatus {
  W3cCredentialStatus({
    required this.id,
    required this.type,
    required this.revocationListIndex,
    required this.revocationListCredential,
  });

  factory W3cCredentialStatus.fromJson(Map<String, dynamic> json) =>
      _$W3cCredentialStatusFromJson(json);

  @JsonKey(name: 'id', includeIfNull: false)
  final String id;
  @JsonKey(name: 'type', includeIfNull: false)
  final String type;
  @JsonKey(name: 'revocationListIndex', includeIfNull: false)
  final String revocationListIndex;
  @JsonKey(name: 'revocationListCredential', includeIfNull: false)
  final String revocationListCredential;
  static const fromJsonFactory = _$W3cCredentialStatusFromJson;
  static const toJsonFactory = _$W3cCredentialStatusToJson;
  Map<String, dynamic> toJson() => _$W3cCredentialStatusToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is W3cCredentialStatus &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.revocationListIndex, revocationListIndex) ||
                const DeepCollectionEquality()
                    .equals(other.revocationListIndex, revocationListIndex)) &&
            (identical(
                    other.revocationListCredential, revocationListCredential) ||
                const DeepCollectionEquality().equals(
                    other.revocationListCredential, revocationListCredential)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(revocationListIndex) ^
      const DeepCollectionEquality().hash(revocationListCredential) ^
      runtimeType.hashCode;
}

extension $W3cCredentialStatusExtension on W3cCredentialStatus {
  W3cCredentialStatus copyWith(
      {String? id,
      String? type,
      String? revocationListIndex,
      String? revocationListCredential}) {
    return W3cCredentialStatus(
        id: id ?? this.id,
        type: type ?? this.type,
        revocationListIndex: revocationListIndex ?? this.revocationListIndex,
        revocationListCredential:
            revocationListCredential ?? this.revocationListCredential);
  }

  W3cCredentialStatus copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? type,
      Wrapped<String>? revocationListIndex,
      Wrapped<String>? revocationListCredential}) {
    return W3cCredentialStatus(
        id: (id != null ? id.value : this.id),
        type: (type != null ? type.value : this.type),
        revocationListIndex: (revocationListIndex != null
            ? revocationListIndex.value
            : this.revocationListIndex),
        revocationListCredential: (revocationListCredential != null
            ? revocationListCredential.value
            : this.revocationListCredential));
  }
}

@JsonSerializable(explicitToJson: true)
class UnsignedW3cCredential {
  UnsignedW3cCredential({
    required this.context,
    required this.id,
    required this.type,
    this.holder,
    required this.credentialSubject,
    this.issuanceDate,
    this.credentialStatus,
    this.expirationDate,
    this.credentialSchema,
    this.proof,
  });

  factory UnsignedW3cCredential.fromJson(Map<String, dynamic> json) =>
      _$UnsignedW3cCredentialFromJson(json);

  @JsonKey(name: '@context', includeIfNull: false)
  final AnyData context;
  @JsonKey(name: 'id', includeIfNull: false)
  final String id;
  @JsonKey(name: 'type', includeIfNull: false, defaultValue: <String>[])
  final List<String> type;
  @JsonKey(name: 'holder', includeIfNull: false)
  final AnyData? holder;
  @JsonKey(name: 'credentialSubject', includeIfNull: false)
  final AnyData credentialSubject;
  @JsonKey(name: 'issuanceDate', includeIfNull: false)
  final String? issuanceDate;
  @JsonKey(name: 'credentialStatus', includeIfNull: false)
  final W3cCredentialStatus? credentialStatus;
  @JsonKey(name: 'expirationDate', includeIfNull: false)
  final String? expirationDate;
  @JsonKey(name: 'credentialSchema', includeIfNull: false)
  final UnsignedW3cCredential$CredentialSchema? credentialSchema;
  @JsonKey(name: 'proof', includeIfNull: false)
  final UnsignedW3cCredential$Proof? proof;
  static const fromJsonFactory = _$UnsignedW3cCredentialFromJson;
  static const toJsonFactory = _$UnsignedW3cCredentialToJson;
  Map<String, dynamic> toJson() => _$UnsignedW3cCredentialToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnsignedW3cCredential &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.holder, holder) ||
                const DeepCollectionEquality().equals(other.holder, holder)) &&
            (identical(other.credentialSubject, credentialSubject) ||
                const DeepCollectionEquality()
                    .equals(other.credentialSubject, credentialSubject)) &&
            (identical(other.issuanceDate, issuanceDate) ||
                const DeepCollectionEquality()
                    .equals(other.issuanceDate, issuanceDate)) &&
            (identical(other.credentialStatus, credentialStatus) ||
                const DeepCollectionEquality()
                    .equals(other.credentialStatus, credentialStatus)) &&
            (identical(other.expirationDate, expirationDate) ||
                const DeepCollectionEquality()
                    .equals(other.expirationDate, expirationDate)) &&
            (identical(other.credentialSchema, credentialSchema) ||
                const DeepCollectionEquality()
                    .equals(other.credentialSchema, credentialSchema)) &&
            (identical(other.proof, proof) ||
                const DeepCollectionEquality().equals(other.proof, proof)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(holder) ^
      const DeepCollectionEquality().hash(credentialSubject) ^
      const DeepCollectionEquality().hash(issuanceDate) ^
      const DeepCollectionEquality().hash(credentialStatus) ^
      const DeepCollectionEquality().hash(expirationDate) ^
      const DeepCollectionEquality().hash(credentialSchema) ^
      const DeepCollectionEquality().hash(proof) ^
      runtimeType.hashCode;
}

extension $UnsignedW3cCredentialExtension on UnsignedW3cCredential {
  UnsignedW3cCredential copyWith(
      {AnyData? context,
      String? id,
      List<String>? type,
      AnyData? holder,
      AnyData? credentialSubject,
      String? issuanceDate,
      W3cCredentialStatus? credentialStatus,
      String? expirationDate,
      UnsignedW3cCredential$CredentialSchema? credentialSchema,
      UnsignedW3cCredential$Proof? proof}) {
    return UnsignedW3cCredential(
        context: context ?? this.context,
        id: id ?? this.id,
        type: type ?? this.type,
        holder: holder ?? this.holder,
        credentialSubject: credentialSubject ?? this.credentialSubject,
        issuanceDate: issuanceDate ?? this.issuanceDate,
        credentialStatus: credentialStatus ?? this.credentialStatus,
        expirationDate: expirationDate ?? this.expirationDate,
        credentialSchema: credentialSchema ?? this.credentialSchema,
        proof: proof ?? this.proof);
  }

  UnsignedW3cCredential copyWithWrapped(
      {Wrapped<AnyData>? context,
      Wrapped<String>? id,
      Wrapped<List<String>>? type,
      Wrapped<AnyData?>? holder,
      Wrapped<AnyData>? credentialSubject,
      Wrapped<String?>? issuanceDate,
      Wrapped<W3cCredentialStatus?>? credentialStatus,
      Wrapped<String?>? expirationDate,
      Wrapped<UnsignedW3cCredential$CredentialSchema?>? credentialSchema,
      Wrapped<UnsignedW3cCredential$Proof?>? proof}) {
    return UnsignedW3cCredential(
        context: (context != null ? context.value : this.context),
        id: (id != null ? id.value : this.id),
        type: (type != null ? type.value : this.type),
        holder: (holder != null ? holder.value : this.holder),
        credentialSubject: (credentialSubject != null
            ? credentialSubject.value
            : this.credentialSubject),
        issuanceDate:
            (issuanceDate != null ? issuanceDate.value : this.issuanceDate),
        credentialStatus: (credentialStatus != null
            ? credentialStatus.value
            : this.credentialStatus),
        expirationDate: (expirationDate != null
            ? expirationDate.value
            : this.expirationDate),
        credentialSchema: (credentialSchema != null
            ? credentialSchema.value
            : this.credentialSchema),
        proof: (proof != null ? proof.value : this.proof));
  }
}

class StoredW3cCredential {}

@JsonSerializable(explicitToJson: true)
class StoredOpenAttestationDocumentSignature {
  StoredOpenAttestationDocumentSignature({
    this.type,
    this.targetHash,
    this.proof,
    this.merkleRoot,
  });

  factory StoredOpenAttestationDocumentSignature.fromJson(
          Map<String, dynamic> json) =>
      _$StoredOpenAttestationDocumentSignatureFromJson(json);

  @JsonKey(name: 'type', includeIfNull: false)
  final String? type;
  @JsonKey(name: 'targetHash', includeIfNull: false)
  final String? targetHash;
  @JsonKey(name: 'proof', includeIfNull: false)
  final AnyData? proof;
  @JsonKey(name: 'merkleRoot', includeIfNull: false)
  final String? merkleRoot;
  static const fromJsonFactory =
      _$StoredOpenAttestationDocumentSignatureFromJson;
  static const toJsonFactory = _$StoredOpenAttestationDocumentSignatureToJson;
  Map<String, dynamic> toJson() =>
      _$StoredOpenAttestationDocumentSignatureToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StoredOpenAttestationDocumentSignature &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.targetHash, targetHash) ||
                const DeepCollectionEquality()
                    .equals(other.targetHash, targetHash)) &&
            (identical(other.proof, proof) ||
                const DeepCollectionEquality().equals(other.proof, proof)) &&
            (identical(other.merkleRoot, merkleRoot) ||
                const DeepCollectionEquality()
                    .equals(other.merkleRoot, merkleRoot)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(targetHash) ^
      const DeepCollectionEquality().hash(proof) ^
      const DeepCollectionEquality().hash(merkleRoot) ^
      runtimeType.hashCode;
}

extension $StoredOpenAttestationDocumentSignatureExtension
    on StoredOpenAttestationDocumentSignature {
  StoredOpenAttestationDocumentSignature copyWith(
      {String? type, String? targetHash, AnyData? proof, String? merkleRoot}) {
    return StoredOpenAttestationDocumentSignature(
        type: type ?? this.type,
        targetHash: targetHash ?? this.targetHash,
        proof: proof ?? this.proof,
        merkleRoot: merkleRoot ?? this.merkleRoot);
  }

  StoredOpenAttestationDocumentSignature copyWithWrapped(
      {Wrapped<String?>? type,
      Wrapped<String?>? targetHash,
      Wrapped<AnyData?>? proof,
      Wrapped<String?>? merkleRoot}) {
    return StoredOpenAttestationDocumentSignature(
        type: (type != null ? type.value : this.type),
        targetHash: (targetHash != null ? targetHash.value : this.targetHash),
        proof: (proof != null ? proof.value : this.proof),
        merkleRoot: (merkleRoot != null ? merkleRoot.value : this.merkleRoot));
  }
}

@JsonSerializable(explicitToJson: true)
class StoredOpenAttestationDocument {
  StoredOpenAttestationDocument({
    required this.version,
    required this.data,
    this.signature,
  });

  factory StoredOpenAttestationDocument.fromJson(Map<String, dynamic> json) =>
      _$StoredOpenAttestationDocumentFromJson(json);

  @JsonKey(name: 'version', includeIfNull: false)
  final String version;
  @JsonKey(name: 'data', includeIfNull: false)
  final AnyData data;
  @JsonKey(name: 'signature', includeIfNull: false)
  final StoredOpenAttestationDocumentSignature? signature;
  static const fromJsonFactory = _$StoredOpenAttestationDocumentFromJson;
  static const toJsonFactory = _$StoredOpenAttestationDocumentToJson;
  Map<String, dynamic> toJson() => _$StoredOpenAttestationDocumentToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StoredOpenAttestationDocument &&
            (identical(other.version, version) ||
                const DeepCollectionEquality()
                    .equals(other.version, version)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.signature, signature) ||
                const DeepCollectionEquality()
                    .equals(other.signature, signature)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(version) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(signature) ^
      runtimeType.hashCode;
}

extension $StoredOpenAttestationDocumentExtension
    on StoredOpenAttestationDocument {
  StoredOpenAttestationDocument copyWith(
      {String? version,
      AnyData? data,
      StoredOpenAttestationDocumentSignature? signature}) {
    return StoredOpenAttestationDocument(
        version: version ?? this.version,
        data: data ?? this.data,
        signature: signature ?? this.signature);
  }

  StoredOpenAttestationDocument copyWithWrapped(
      {Wrapped<String>? version,
      Wrapped<AnyData>? data,
      Wrapped<StoredOpenAttestationDocumentSignature?>? signature}) {
    return StoredOpenAttestationDocument(
        version: (version != null ? version.value : this.version),
        data: (data != null ? data.value : this.data),
        signature: (signature != null ? signature.value : this.signature));
  }
}

@JsonSerializable(explicitToJson: true)
class StoredCredential {
  StoredCredential();

  factory StoredCredential.fromJson(Map<String, dynamic> json) =>
      _$StoredCredentialFromJson(json);

  static const fromJsonFactory = _$StoredCredentialFromJson;
  static const toJsonFactory = _$StoredCredentialToJson;
  Map<String, dynamic> toJson() => _$StoredCredentialToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

typedef GetCredentialsOutput = List<StoredCredential>;

@JsonSerializable(explicitToJson: true)
class ClaimCredentialOutput {
  ClaimCredentialOutput({
    required this.credentialIds,
  });

  factory ClaimCredentialOutput.fromJson(Map<String, dynamic> json) =>
      _$ClaimCredentialOutputFromJson(json);

  @JsonKey(
      name: 'credentialIds', includeIfNull: false, defaultValue: <String>[])
  final List<String> credentialIds;
  static const fromJsonFactory = _$ClaimCredentialOutputFromJson;
  static const toJsonFactory = _$ClaimCredentialOutputToJson;
  Map<String, dynamic> toJson() => _$ClaimCredentialOutputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ClaimCredentialOutput &&
            (identical(other.credentialIds, credentialIds) ||
                const DeepCollectionEquality()
                    .equals(other.credentialIds, credentialIds)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(credentialIds) ^ runtimeType.hashCode;
}

extension $ClaimCredentialOutputExtension on ClaimCredentialOutput {
  ClaimCredentialOutput copyWith({List<String>? credentialIds}) {
    return ClaimCredentialOutput(
        credentialIds: credentialIds ?? this.credentialIds);
  }

  ClaimCredentialOutput copyWithWrapped(
      {Wrapped<List<String>>? credentialIds}) {
    return ClaimCredentialOutput(
        credentialIds:
            (credentialIds != null ? credentialIds.value : this.credentialIds));
  }
}

@JsonSerializable(explicitToJson: true)
class ShareCredentialOutput {
  ShareCredentialOutput({
    required this.qrCode,
    required this.sharingUrl,
  });

  factory ShareCredentialOutput.fromJson(Map<String, dynamic> json) =>
      _$ShareCredentialOutputFromJson(json);

  @JsonKey(name: 'qrCode', includeIfNull: false)
  final String qrCode;
  @JsonKey(name: 'sharingUrl', includeIfNull: false)
  final String sharingUrl;
  static const fromJsonFactory = _$ShareCredentialOutputFromJson;
  static const toJsonFactory = _$ShareCredentialOutputToJson;
  Map<String, dynamic> toJson() => _$ShareCredentialOutputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShareCredentialOutput &&
            (identical(other.qrCode, qrCode) ||
                const DeepCollectionEquality().equals(other.qrCode, qrCode)) &&
            (identical(other.sharingUrl, sharingUrl) ||
                const DeepCollectionEquality()
                    .equals(other.sharingUrl, sharingUrl)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(qrCode) ^
      const DeepCollectionEquality().hash(sharingUrl) ^
      runtimeType.hashCode;
}

extension $ShareCredentialOutputExtension on ShareCredentialOutput {
  ShareCredentialOutput copyWith({String? qrCode, String? sharingUrl}) {
    return ShareCredentialOutput(
        qrCode: qrCode ?? this.qrCode,
        sharingUrl: sharingUrl ?? this.sharingUrl);
  }

  ShareCredentialOutput copyWithWrapped(
      {Wrapped<String>? qrCode, Wrapped<String>? sharingUrl}) {
    return ShareCredentialOutput(
        qrCode: (qrCode != null ? qrCode.value : this.qrCode),
        sharingUrl: (sharingUrl != null ? sharingUrl.value : this.sharingUrl));
  }
}

@JsonSerializable(explicitToJson: true)
class ShareCredentialInput {
  ShareCredentialInput({
    this.ttl,
    this.fieldsToShare,
  });

  factory ShareCredentialInput.fromJson(Map<String, dynamic> json) =>
      _$ShareCredentialInputFromJson(json);

  @JsonKey(name: 'ttl', includeIfNull: false)
  final String? ttl;
  @JsonKey(
      name: 'fieldsToShare', includeIfNull: false, defaultValue: <String>[])
  final List<String>? fieldsToShare;
  static const fromJsonFactory = _$ShareCredentialInputFromJson;
  static const toJsonFactory = _$ShareCredentialInputToJson;
  Map<String, dynamic> toJson() => _$ShareCredentialInputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShareCredentialInput &&
            (identical(other.ttl, ttl) ||
                const DeepCollectionEquality().equals(other.ttl, ttl)) &&
            (identical(other.fieldsToShare, fieldsToShare) ||
                const DeepCollectionEquality()
                    .equals(other.fieldsToShare, fieldsToShare)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ttl) ^
      const DeepCollectionEquality().hash(fieldsToShare) ^
      runtimeType.hashCode;
}

extension $ShareCredentialInputExtension on ShareCredentialInput {
  ShareCredentialInput copyWith({String? ttl, List<String>? fieldsToShare}) {
    return ShareCredentialInput(
        ttl: ttl ?? this.ttl,
        fieldsToShare: fieldsToShare ?? this.fieldsToShare);
  }

  ShareCredentialInput copyWithWrapped(
      {Wrapped<String?>? ttl, Wrapped<List<String>?>? fieldsToShare}) {
    return ShareCredentialInput(
        ttl: (ttl != null ? ttl.value : this.ttl),
        fieldsToShare:
            (fieldsToShare != null ? fieldsToShare.value : this.fieldsToShare));
  }
}

@JsonSerializable(explicitToJson: true)
class SharePresentationOutput {
  SharePresentationOutput({
    required this.qrCode,
    required this.sharingUrl,
  });

  factory SharePresentationOutput.fromJson(Map<String, dynamic> json) =>
      _$SharePresentationOutputFromJson(json);

  @JsonKey(name: 'qrCode', includeIfNull: false)
  final String qrCode;
  @JsonKey(name: 'sharingUrl', includeIfNull: false)
  final String sharingUrl;
  static const fromJsonFactory = _$SharePresentationOutputFromJson;
  static const toJsonFactory = _$SharePresentationOutputToJson;
  Map<String, dynamic> toJson() => _$SharePresentationOutputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SharePresentationOutput &&
            (identical(other.qrCode, qrCode) ||
                const DeepCollectionEquality().equals(other.qrCode, qrCode)) &&
            (identical(other.sharingUrl, sharingUrl) ||
                const DeepCollectionEquality()
                    .equals(other.sharingUrl, sharingUrl)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(qrCode) ^
      const DeepCollectionEquality().hash(sharingUrl) ^
      runtimeType.hashCode;
}

extension $SharePresentationOutputExtension on SharePresentationOutput {
  SharePresentationOutput copyWith({String? qrCode, String? sharingUrl}) {
    return SharePresentationOutput(
        qrCode: qrCode ?? this.qrCode,
        sharingUrl: sharingUrl ?? this.sharingUrl);
  }

  SharePresentationOutput copyWithWrapped(
      {Wrapped<String>? qrCode, Wrapped<String>? sharingUrl}) {
    return SharePresentationOutput(
        qrCode: (qrCode != null ? qrCode.value : this.qrCode),
        sharingUrl: (sharingUrl != null ? sharingUrl.value : this.sharingUrl));
  }
}

@JsonSerializable(explicitToJson: true)
class AnyObject {
  AnyObject();

  factory AnyObject.fromJson(Map<String, dynamic> json) =>
      _$AnyObjectFromJson(json);

  static const fromJsonFactory = _$AnyObjectFromJson;
  static const toJsonFactory = _$AnyObjectToJson;
  Map<String, dynamic> toJson() => _$AnyObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class W3cProof {
  W3cProof({
    required this.type,
  });

  factory W3cProof.fromJson(Map<String, dynamic> json) =>
      _$W3cProofFromJson(json);

  @JsonKey(name: 'type', includeIfNull: false)
  final String type;
  static const fromJsonFactory = _$W3cProofFromJson;
  static const toJsonFactory = _$W3cProofToJson;
  Map<String, dynamic> toJson() => _$W3cProofToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is W3cProof &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^ runtimeType.hashCode;
}

extension $W3cProofExtension on W3cProof {
  W3cProof copyWith({String? type}) {
    return W3cProof(type: type ?? this.type);
  }

  W3cProof copyWithWrapped({Wrapped<String>? type}) {
    return W3cProof(type: (type != null ? type.value : this.type));
  }
}

@JsonSerializable(explicitToJson: true)
class W3cCredential {
  W3cCredential({
    required this.context,
    required this.id,
    required this.type,
    required this.holder,
    required this.credentialSubject,
    this.credentialSchema,
    required this.issuanceDate,
    required this.issuer,
    this.credentialStatus,
    this.expirationDate,
    required this.proof,
  });

  factory W3cCredential.fromJson(Map<String, dynamic> json) =>
      _$W3cCredentialFromJson(json);

  @JsonKey(name: '@context', includeIfNull: false)
  final AnyData context;
  @JsonKey(name: 'id', includeIfNull: false)
  final String id;
  @JsonKey(name: 'type', includeIfNull: false, defaultValue: <String>[])
  final List<String> type;
  @JsonKey(name: 'holder', includeIfNull: false)
  final AnyData holder;
  @JsonKey(name: 'credentialSubject', includeIfNull: false)
  final AnyData credentialSubject;
  @JsonKey(name: 'credentialSchema', includeIfNull: false)
  final AnyData? credentialSchema;
  @JsonKey(name: 'issuanceDate', includeIfNull: false)
  final String issuanceDate;
  @JsonKey(name: 'issuer', includeIfNull: false)
  final AnyData issuer;
  @JsonKey(name: 'credentialStatus', includeIfNull: false)
  final W3cCredentialStatus? credentialStatus;
  @JsonKey(name: 'expirationDate', includeIfNull: false)
  final String? expirationDate;
  @JsonKey(name: 'proof', includeIfNull: false)
  final W3cProof proof;
  static const fromJsonFactory = _$W3cCredentialFromJson;
  static const toJsonFactory = _$W3cCredentialToJson;
  Map<String, dynamic> toJson() => _$W3cCredentialToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is W3cCredential &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.holder, holder) ||
                const DeepCollectionEquality().equals(other.holder, holder)) &&
            (identical(other.credentialSubject, credentialSubject) ||
                const DeepCollectionEquality()
                    .equals(other.credentialSubject, credentialSubject)) &&
            (identical(other.credentialSchema, credentialSchema) ||
                const DeepCollectionEquality()
                    .equals(other.credentialSchema, credentialSchema)) &&
            (identical(other.issuanceDate, issuanceDate) ||
                const DeepCollectionEquality()
                    .equals(other.issuanceDate, issuanceDate)) &&
            (identical(other.issuer, issuer) ||
                const DeepCollectionEquality().equals(other.issuer, issuer)) &&
            (identical(other.credentialStatus, credentialStatus) ||
                const DeepCollectionEquality()
                    .equals(other.credentialStatus, credentialStatus)) &&
            (identical(other.expirationDate, expirationDate) ||
                const DeepCollectionEquality()
                    .equals(other.expirationDate, expirationDate)) &&
            (identical(other.proof, proof) ||
                const DeepCollectionEquality().equals(other.proof, proof)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(holder) ^
      const DeepCollectionEquality().hash(credentialSubject) ^
      const DeepCollectionEquality().hash(credentialSchema) ^
      const DeepCollectionEquality().hash(issuanceDate) ^
      const DeepCollectionEquality().hash(issuer) ^
      const DeepCollectionEquality().hash(credentialStatus) ^
      const DeepCollectionEquality().hash(expirationDate) ^
      const DeepCollectionEquality().hash(proof) ^
      runtimeType.hashCode;
}

extension $W3cCredentialExtension on W3cCredential {
  W3cCredential copyWith(
      {AnyData? context,
      String? id,
      List<String>? type,
      AnyData? holder,
      AnyData? credentialSubject,
      AnyData? credentialSchema,
      String? issuanceDate,
      AnyData? issuer,
      W3cCredentialStatus? credentialStatus,
      String? expirationDate,
      W3cProof? proof}) {
    return W3cCredential(
        context: context ?? this.context,
        id: id ?? this.id,
        type: type ?? this.type,
        holder: holder ?? this.holder,
        credentialSubject: credentialSubject ?? this.credentialSubject,
        credentialSchema: credentialSchema ?? this.credentialSchema,
        issuanceDate: issuanceDate ?? this.issuanceDate,
        issuer: issuer ?? this.issuer,
        credentialStatus: credentialStatus ?? this.credentialStatus,
        expirationDate: expirationDate ?? this.expirationDate,
        proof: proof ?? this.proof);
  }

  W3cCredential copyWithWrapped(
      {Wrapped<AnyData>? context,
      Wrapped<String>? id,
      Wrapped<List<String>>? type,
      Wrapped<AnyData>? holder,
      Wrapped<AnyData>? credentialSubject,
      Wrapped<AnyData?>? credentialSchema,
      Wrapped<String>? issuanceDate,
      Wrapped<AnyData>? issuer,
      Wrapped<W3cCredentialStatus?>? credentialStatus,
      Wrapped<String?>? expirationDate,
      Wrapped<W3cProof>? proof}) {
    return W3cCredential(
        context: (context != null ? context.value : this.context),
        id: (id != null ? id.value : this.id),
        type: (type != null ? type.value : this.type),
        holder: (holder != null ? holder.value : this.holder),
        credentialSubject: (credentialSubject != null
            ? credentialSubject.value
            : this.credentialSubject),
        credentialSchema: (credentialSchema != null
            ? credentialSchema.value
            : this.credentialSchema),
        issuanceDate:
            (issuanceDate != null ? issuanceDate.value : this.issuanceDate),
        issuer: (issuer != null ? issuer.value : this.issuer),
        credentialStatus: (credentialStatus != null
            ? credentialStatus.value
            : this.credentialStatus),
        expirationDate: (expirationDate != null
            ? expirationDate.value
            : this.expirationDate),
        proof: (proof != null ? proof.value : this.proof));
  }
}

@JsonSerializable(explicitToJson: true)
class W3cPresentation {
  W3cPresentation({
    required this.context,
    this.id,
    required this.type,
    required this.holder,
    required this.verifiableCredential,
    required this.proof,
  });

  factory W3cPresentation.fromJson(Map<String, dynamic> json) =>
      _$W3cPresentationFromJson(json);

  @JsonKey(name: '@context', includeIfNull: false)
  final AnyData context;
  @JsonKey(name: 'id', includeIfNull: false)
  final String? id;
  @JsonKey(name: 'type', includeIfNull: false, defaultValue: <String>[])
  final List<String> type;
  @JsonKey(name: 'holder', includeIfNull: false)
  final AnyData holder;
  @JsonKey(
      name: 'verifiableCredential',
      includeIfNull: false,
      defaultValue: <W3cCredential>[])
  final List<W3cCredential> verifiableCredential;
  @JsonKey(name: 'proof', includeIfNull: false)
  final AnyData proof;
  static const fromJsonFactory = _$W3cPresentationFromJson;
  static const toJsonFactory = _$W3cPresentationToJson;
  Map<String, dynamic> toJson() => _$W3cPresentationToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is W3cPresentation &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.holder, holder) ||
                const DeepCollectionEquality().equals(other.holder, holder)) &&
            (identical(other.verifiableCredential, verifiableCredential) ||
                const DeepCollectionEquality().equals(
                    other.verifiableCredential, verifiableCredential)) &&
            (identical(other.proof, proof) ||
                const DeepCollectionEquality().equals(other.proof, proof)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(holder) ^
      const DeepCollectionEquality().hash(verifiableCredential) ^
      const DeepCollectionEquality().hash(proof) ^
      runtimeType.hashCode;
}

extension $W3cPresentationExtension on W3cPresentation {
  W3cPresentation copyWith(
      {AnyData? context,
      String? id,
      List<String>? type,
      AnyData? holder,
      List<W3cCredential>? verifiableCredential,
      AnyData? proof}) {
    return W3cPresentation(
        context: context ?? this.context,
        id: id ?? this.id,
        type: type ?? this.type,
        holder: holder ?? this.holder,
        verifiableCredential: verifiableCredential ?? this.verifiableCredential,
        proof: proof ?? this.proof);
  }

  W3cPresentation copyWithWrapped(
      {Wrapped<AnyData>? context,
      Wrapped<String?>? id,
      Wrapped<List<String>>? type,
      Wrapped<AnyData>? holder,
      Wrapped<List<W3cCredential>>? verifiableCredential,
      Wrapped<AnyData>? proof}) {
    return W3cPresentation(
        context: (context != null ? context.value : this.context),
        id: (id != null ? id.value : this.id),
        type: (type != null ? type.value : this.type),
        holder: (holder != null ? holder.value : this.holder),
        verifiableCredential: (verifiableCredential != null
            ? verifiableCredential.value
            : this.verifiableCredential),
        proof: (proof != null ? proof.value : this.proof));
  }
}

@JsonSerializable(explicitToJson: true)
class SharePresentationInput {
  SharePresentationInput({
    this.ttl,
    this.oneTimeUse,
    required this.signedPresentation,
  });

  factory SharePresentationInput.fromJson(Map<String, dynamic> json) =>
      _$SharePresentationInputFromJson(json);

  @JsonKey(name: 'ttl', includeIfNull: false)
  final String? ttl;
  @JsonKey(name: 'oneTimeUse', includeIfNull: false)
  final dynamic oneTimeUse;
  @JsonKey(name: 'signedPresentation', includeIfNull: false)
  final W3cPresentation signedPresentation;
  static const fromJsonFactory = _$SharePresentationInputFromJson;
  static const toJsonFactory = _$SharePresentationInputToJson;
  Map<String, dynamic> toJson() => _$SharePresentationInputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SharePresentationInput &&
            (identical(other.ttl, ttl) ||
                const DeepCollectionEquality().equals(other.ttl, ttl)) &&
            (identical(other.oneTimeUse, oneTimeUse) ||
                const DeepCollectionEquality()
                    .equals(other.oneTimeUse, oneTimeUse)) &&
            (identical(other.signedPresentation, signedPresentation) ||
                const DeepCollectionEquality()
                    .equals(other.signedPresentation, signedPresentation)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ttl) ^
      const DeepCollectionEquality().hash(oneTimeUse) ^
      const DeepCollectionEquality().hash(signedPresentation) ^
      runtimeType.hashCode;
}

extension $SharePresentationInputExtension on SharePresentationInput {
  SharePresentationInput copyWith(
      {String? ttl, dynamic oneTimeUse, W3cPresentation? signedPresentation}) {
    return SharePresentationInput(
        ttl: ttl ?? this.ttl,
        oneTimeUse: oneTimeUse ?? this.oneTimeUse,
        signedPresentation: signedPresentation ?? this.signedPresentation);
  }

  SharePresentationInput copyWithWrapped(
      {Wrapped<String?>? ttl,
      Wrapped<dynamic>? oneTimeUse,
      Wrapped<W3cPresentation>? signedPresentation}) {
    return SharePresentationInput(
        ttl: (ttl != null ? ttl.value : this.ttl),
        oneTimeUse: (oneTimeUse != null ? oneTimeUse.value : this.oneTimeUse),
        signedPresentation: (signedPresentation != null
            ? signedPresentation.value
            : this.signedPresentation));
  }
}

@JsonSerializable(explicitToJson: true)
class SaveCredentialOutput {
  SaveCredentialOutput({
    required this.credentialIds,
  });

  factory SaveCredentialOutput.fromJson(Map<String, dynamic> json) =>
      _$SaveCredentialOutputFromJson(json);

  @JsonKey(
      name: 'credentialIds', includeIfNull: false, defaultValue: <String>[])
  final List<String> credentialIds;
  static const fromJsonFactory = _$SaveCredentialOutputFromJson;
  static const toJsonFactory = _$SaveCredentialOutputToJson;
  Map<String, dynamic> toJson() => _$SaveCredentialOutputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SaveCredentialOutput &&
            (identical(other.credentialIds, credentialIds) ||
                const DeepCollectionEquality()
                    .equals(other.credentialIds, credentialIds)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(credentialIds) ^ runtimeType.hashCode;
}

extension $SaveCredentialOutputExtension on SaveCredentialOutput {
  SaveCredentialOutput copyWith({List<String>? credentialIds}) {
    return SaveCredentialOutput(
        credentialIds: credentialIds ?? this.credentialIds);
  }

  SaveCredentialOutput copyWithWrapped({Wrapped<List<String>>? credentialIds}) {
    return SaveCredentialOutput(
        credentialIds:
            (credentialIds != null ? credentialIds.value : this.credentialIds));
  }
}

@JsonSerializable(explicitToJson: true)
class SaveCredentialInput {
  SaveCredentialInput({
    required this.data,
  });

  factory SaveCredentialInput.fromJson(Map<String, dynamic> json) =>
      _$SaveCredentialInputFromJson(json);

  @JsonKey(name: 'data', includeIfNull: false, defaultValue: <Object>[])
  final List<Object> data;
  static const fromJsonFactory = _$SaveCredentialInputFromJson;
  static const toJsonFactory = _$SaveCredentialInputToJson;
  Map<String, dynamic> toJson() => _$SaveCredentialInputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SaveCredentialInput &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $SaveCredentialInputExtension on SaveCredentialInput {
  SaveCredentialInput copyWith({List<Object>? data}) {
    return SaveCredentialInput(data: data ?? this.data);
  }

  SaveCredentialInput copyWithWrapped({Wrapped<List<Object>>? data}) {
    return SaveCredentialInput(data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class SignCredentialOutput {
  SignCredentialOutput({
    required this.signedCredential,
  });

  factory SignCredentialOutput.fromJson(Map<String, dynamic> json) =>
      _$SignCredentialOutputFromJson(json);

  @JsonKey(name: 'signedCredential', includeIfNull: false)
  final W3cCredential signedCredential;
  static const fromJsonFactory = _$SignCredentialOutputFromJson;
  static const toJsonFactory = _$SignCredentialOutputToJson;
  Map<String, dynamic> toJson() => _$SignCredentialOutputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignCredentialOutput &&
            (identical(other.signedCredential, signedCredential) ||
                const DeepCollectionEquality()
                    .equals(other.signedCredential, signedCredential)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(signedCredential) ^
      runtimeType.hashCode;
}

extension $SignCredentialOutputExtension on SignCredentialOutput {
  SignCredentialOutput copyWith({W3cCredential? signedCredential}) {
    return SignCredentialOutput(
        signedCredential: signedCredential ?? this.signedCredential);
  }

  SignCredentialOutput copyWithWrapped(
      {Wrapped<W3cCredential>? signedCredential}) {
    return SignCredentialOutput(
        signedCredential: (signedCredential != null
            ? signedCredential.value
            : this.signedCredential));
  }
}

@JsonSerializable(explicitToJson: true)
class SignCredentialInput {
  SignCredentialInput({
    required this.unsignedCredential,
    this.keyType,
  });

  factory SignCredentialInput.fromJson(Map<String, dynamic> json) =>
      _$SignCredentialInputFromJson(json);

  @JsonKey(name: 'unsignedCredential', includeIfNull: false)
  final UnsignedW3cCredential unsignedCredential;
  @JsonKey(
    name: 'keyType',
    includeIfNull: false,
    toJson: keyTypesToJson,
    fromJson: keyTypesFromJson,
  )
  final enums.KeyTypes? keyType;
  static const fromJsonFactory = _$SignCredentialInputFromJson;
  static const toJsonFactory = _$SignCredentialInputToJson;
  Map<String, dynamic> toJson() => _$SignCredentialInputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignCredentialInput &&
            (identical(other.unsignedCredential, unsignedCredential) ||
                const DeepCollectionEquality()
                    .equals(other.unsignedCredential, unsignedCredential)) &&
            (identical(other.keyType, keyType) ||
                const DeepCollectionEquality().equals(other.keyType, keyType)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(unsignedCredential) ^
      const DeepCollectionEquality().hash(keyType) ^
      runtimeType.hashCode;
}

extension $SignCredentialInputExtension on SignCredentialInput {
  SignCredentialInput copyWith(
      {UnsignedW3cCredential? unsignedCredential, enums.KeyTypes? keyType}) {
    return SignCredentialInput(
        unsignedCredential: unsignedCredential ?? this.unsignedCredential,
        keyType: keyType ?? this.keyType);
  }

  SignCredentialInput copyWithWrapped(
      {Wrapped<UnsignedW3cCredential>? unsignedCredential,
      Wrapped<enums.KeyTypes?>? keyType}) {
    return SignCredentialInput(
        unsignedCredential: (unsignedCredential != null
            ? unsignedCredential.value
            : this.unsignedCredential),
        keyType: (keyType != null ? keyType.value : this.keyType));
  }
}

@JsonSerializable(explicitToJson: true)
class SignPresentationOutput {
  SignPresentationOutput({
    required this.signedPresentation,
  });

  factory SignPresentationOutput.fromJson(Map<String, dynamic> json) =>
      _$SignPresentationOutputFromJson(json);

  @JsonKey(name: 'signedPresentation', includeIfNull: false)
  final W3cPresentation signedPresentation;
  static const fromJsonFactory = _$SignPresentationOutputFromJson;
  static const toJsonFactory = _$SignPresentationOutputToJson;
  Map<String, dynamic> toJson() => _$SignPresentationOutputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignPresentationOutput &&
            (identical(other.signedPresentation, signedPresentation) ||
                const DeepCollectionEquality()
                    .equals(other.signedPresentation, signedPresentation)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(signedPresentation) ^
      runtimeType.hashCode;
}

extension $SignPresentationOutputExtension on SignPresentationOutput {
  SignPresentationOutput copyWith({W3cPresentation? signedPresentation}) {
    return SignPresentationOutput(
        signedPresentation: signedPresentation ?? this.signedPresentation);
  }

  SignPresentationOutput copyWithWrapped(
      {Wrapped<W3cPresentation>? signedPresentation}) {
    return SignPresentationOutput(
        signedPresentation: (signedPresentation != null
            ? signedPresentation.value
            : this.signedPresentation));
  }
}

@JsonSerializable(explicitToJson: true)
class UnsignedW3cPresentation {
  UnsignedW3cPresentation({
    required this.context,
    this.id,
    required this.type,
    required this.holder,
    required this.verifiableCredential,
  });

  factory UnsignedW3cPresentation.fromJson(Map<String, dynamic> json) =>
      _$UnsignedW3cPresentationFromJson(json);

  @JsonKey(name: '@context', includeIfNull: false)
  final AnyData context;
  @JsonKey(name: 'id', includeIfNull: false)
  final String? id;
  @JsonKey(name: 'type', includeIfNull: false, defaultValue: <String>[])
  final List<String> type;
  @JsonKey(name: 'holder', includeIfNull: false)
  final AnyData holder;
  @JsonKey(
      name: 'verifiableCredential',
      includeIfNull: false,
      defaultValue: <W3cCredential>[])
  final List<W3cCredential> verifiableCredential;
  static const fromJsonFactory = _$UnsignedW3cPresentationFromJson;
  static const toJsonFactory = _$UnsignedW3cPresentationToJson;
  Map<String, dynamic> toJson() => _$UnsignedW3cPresentationToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnsignedW3cPresentation &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.holder, holder) ||
                const DeepCollectionEquality().equals(other.holder, holder)) &&
            (identical(other.verifiableCredential, verifiableCredential) ||
                const DeepCollectionEquality()
                    .equals(other.verifiableCredential, verifiableCredential)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(holder) ^
      const DeepCollectionEquality().hash(verifiableCredential) ^
      runtimeType.hashCode;
}

extension $UnsignedW3cPresentationExtension on UnsignedW3cPresentation {
  UnsignedW3cPresentation copyWith(
      {AnyData? context,
      String? id,
      List<String>? type,
      AnyData? holder,
      List<W3cCredential>? verifiableCredential}) {
    return UnsignedW3cPresentation(
        context: context ?? this.context,
        id: id ?? this.id,
        type: type ?? this.type,
        holder: holder ?? this.holder,
        verifiableCredential:
            verifiableCredential ?? this.verifiableCredential);
  }

  UnsignedW3cPresentation copyWithWrapped(
      {Wrapped<AnyData>? context,
      Wrapped<String?>? id,
      Wrapped<List<String>>? type,
      Wrapped<AnyData>? holder,
      Wrapped<List<W3cCredential>>? verifiableCredential}) {
    return UnsignedW3cPresentation(
        context: (context != null ? context.value : this.context),
        id: (id != null ? id.value : this.id),
        type: (type != null ? type.value : this.type),
        holder: (holder != null ? holder.value : this.holder),
        verifiableCredential: (verifiableCredential != null
            ? verifiableCredential.value
            : this.verifiableCredential));
  }
}

@JsonSerializable(explicitToJson: true)
class SignPresentationInput {
  SignPresentationInput({
    required this.unsignedPresentation,
    required this.challenge,
    required this.domain,
  });

  factory SignPresentationInput.fromJson(Map<String, dynamic> json) =>
      _$SignPresentationInputFromJson(json);

  @JsonKey(name: 'unsignedPresentation', includeIfNull: false)
  final UnsignedW3cPresentation unsignedPresentation;
  @JsonKey(name: 'challenge', includeIfNull: false)
  final String challenge;
  @JsonKey(name: 'domain', includeIfNull: false)
  final String domain;
  static const fromJsonFactory = _$SignPresentationInputFromJson;
  static const toJsonFactory = _$SignPresentationInputToJson;
  Map<String, dynamic> toJson() => _$SignPresentationInputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignPresentationInput &&
            (identical(other.unsignedPresentation, unsignedPresentation) ||
                const DeepCollectionEquality().equals(
                    other.unsignedPresentation, unsignedPresentation)) &&
            (identical(other.challenge, challenge) ||
                const DeepCollectionEquality()
                    .equals(other.challenge, challenge)) &&
            (identical(other.domain, domain) ||
                const DeepCollectionEquality().equals(other.domain, domain)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(unsignedPresentation) ^
      const DeepCollectionEquality().hash(challenge) ^
      const DeepCollectionEquality().hash(domain) ^
      runtimeType.hashCode;
}

extension $SignPresentationInputExtension on SignPresentationInput {
  SignPresentationInput copyWith(
      {UnsignedW3cPresentation? unsignedPresentation,
      String? challenge,
      String? domain}) {
    return SignPresentationInput(
        unsignedPresentation: unsignedPresentation ?? this.unsignedPresentation,
        challenge: challenge ?? this.challenge,
        domain: domain ?? this.domain);
  }

  SignPresentationInput copyWithWrapped(
      {Wrapped<UnsignedW3cPresentation>? unsignedPresentation,
      Wrapped<String>? challenge,
      Wrapped<String>? domain}) {
    return SignPresentationInput(
        unsignedPresentation: (unsignedPresentation != null
            ? unsignedPresentation.value
            : this.unsignedPresentation),
        challenge: (challenge != null ? challenge.value : this.challenge),
        domain: (domain != null ? domain.value : this.domain));
  }
}

@JsonSerializable(explicitToJson: true)
class ApiCredentialRequirement {
  ApiCredentialRequirement({
    this.constraints,
    required this.type,
  });

  factory ApiCredentialRequirement.fromJson(Map<String, dynamic> json) =>
      _$ApiCredentialRequirementFromJson(json);

  @JsonKey(name: 'constraints', includeIfNull: false, defaultValue: <String>[])
  final List<String>? constraints;
  @JsonKey(name: 'type', includeIfNull: false, defaultValue: <String>[])
  final List<String> type;
  static const fromJsonFactory = _$ApiCredentialRequirementFromJson;
  static const toJsonFactory = _$ApiCredentialRequirementToJson;
  Map<String, dynamic> toJson() => _$ApiCredentialRequirementToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApiCredentialRequirement &&
            (identical(other.constraints, constraints) ||
                const DeepCollectionEquality()
                    .equals(other.constraints, constraints)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(constraints) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $ApiCredentialRequirementExtension on ApiCredentialRequirement {
  ApiCredentialRequirement copyWith(
      {List<String>? constraints, List<String>? type}) {
    return ApiCredentialRequirement(
        constraints: constraints ?? this.constraints, type: type ?? this.type);
  }

  ApiCredentialRequirement copyWithWrapped(
      {Wrapped<List<String>?>? constraints, Wrapped<List<String>>? type}) {
    return ApiCredentialRequirement(
        constraints:
            (constraints != null ? constraints.value : this.constraints),
        type: (type != null ? type.value : this.type));
  }
}

@JsonSerializable(explicitToJson: true)
class GenerateCredentialShareRequestTokenRequest {
  GenerateCredentialShareRequestTokenRequest({
    required this.requirements,
    this.issuerDid,
    this.audienceDid,
    this.expiresAt,
    this.nonce,
    this.callbackUrl,
  });

  factory GenerateCredentialShareRequestTokenRequest.fromJson(
          Map<String, dynamic> json) =>
      _$GenerateCredentialShareRequestTokenRequestFromJson(json);

  @JsonKey(
      name: 'requirements',
      includeIfNull: false,
      defaultValue: <ApiCredentialRequirement>[])
  final List<ApiCredentialRequirement> requirements;
  @JsonKey(name: 'issuerDid', includeIfNull: false)
  final String? issuerDid;
  @JsonKey(name: 'audienceDid', includeIfNull: false)
  final String? audienceDid;
  @JsonKey(name: 'expiresAt', includeIfNull: false)
  final String? expiresAt;
  @JsonKey(name: 'nonce', includeIfNull: false)
  final String? nonce;
  @JsonKey(name: 'callbackUrl', includeIfNull: false)
  final String? callbackUrl;
  static const fromJsonFactory =
      _$GenerateCredentialShareRequestTokenRequestFromJson;
  static const toJsonFactory =
      _$GenerateCredentialShareRequestTokenRequestToJson;
  Map<String, dynamic> toJson() =>
      _$GenerateCredentialShareRequestTokenRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GenerateCredentialShareRequestTokenRequest &&
            (identical(other.requirements, requirements) ||
                const DeepCollectionEquality()
                    .equals(other.requirements, requirements)) &&
            (identical(other.issuerDid, issuerDid) ||
                const DeepCollectionEquality()
                    .equals(other.issuerDid, issuerDid)) &&
            (identical(other.audienceDid, audienceDid) ||
                const DeepCollectionEquality()
                    .equals(other.audienceDid, audienceDid)) &&
            (identical(other.expiresAt, expiresAt) ||
                const DeepCollectionEquality()
                    .equals(other.expiresAt, expiresAt)) &&
            (identical(other.nonce, nonce) ||
                const DeepCollectionEquality().equals(other.nonce, nonce)) &&
            (identical(other.callbackUrl, callbackUrl) ||
                const DeepCollectionEquality()
                    .equals(other.callbackUrl, callbackUrl)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(requirements) ^
      const DeepCollectionEquality().hash(issuerDid) ^
      const DeepCollectionEquality().hash(audienceDid) ^
      const DeepCollectionEquality().hash(expiresAt) ^
      const DeepCollectionEquality().hash(nonce) ^
      const DeepCollectionEquality().hash(callbackUrl) ^
      runtimeType.hashCode;
}

extension $GenerateCredentialShareRequestTokenRequestExtension
    on GenerateCredentialShareRequestTokenRequest {
  GenerateCredentialShareRequestTokenRequest copyWith(
      {List<ApiCredentialRequirement>? requirements,
      String? issuerDid,
      String? audienceDid,
      String? expiresAt,
      String? nonce,
      String? callbackUrl}) {
    return GenerateCredentialShareRequestTokenRequest(
        requirements: requirements ?? this.requirements,
        issuerDid: issuerDid ?? this.issuerDid,
        audienceDid: audienceDid ?? this.audienceDid,
        expiresAt: expiresAt ?? this.expiresAt,
        nonce: nonce ?? this.nonce,
        callbackUrl: callbackUrl ?? this.callbackUrl);
  }

  GenerateCredentialShareRequestTokenRequest copyWithWrapped(
      {Wrapped<List<ApiCredentialRequirement>>? requirements,
      Wrapped<String?>? issuerDid,
      Wrapped<String?>? audienceDid,
      Wrapped<String?>? expiresAt,
      Wrapped<String?>? nonce,
      Wrapped<String?>? callbackUrl}) {
    return GenerateCredentialShareRequestTokenRequest(
        requirements:
            (requirements != null ? requirements.value : this.requirements),
        issuerDid: (issuerDid != null ? issuerDid.value : this.issuerDid),
        audienceDid:
            (audienceDid != null ? audienceDid.value : this.audienceDid),
        expiresAt: (expiresAt != null ? expiresAt.value : this.expiresAt),
        nonce: (nonce != null ? nonce.value : this.nonce),
        callbackUrl:
            (callbackUrl != null ? callbackUrl.value : this.callbackUrl));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateCredentialShareResponseTokenRequest {
  CreateCredentialShareResponseTokenRequest({
    required this.credentialShareRequestToken,
    required this.credentials,
    this.expiresAt,
  });

  factory CreateCredentialShareResponseTokenRequest.fromJson(
          Map<String, dynamic> json) =>
      _$CreateCredentialShareResponseTokenRequestFromJson(json);

  @JsonKey(name: 'credentialShareRequestToken', includeIfNull: false)
  final String credentialShareRequestToken;
  @JsonKey(
      name: 'credentials',
      includeIfNull: false,
      defaultValue: <W3cCredential>[])
  final List<W3cCredential> credentials;
  @JsonKey(name: 'expiresAt', includeIfNull: false)
  final String? expiresAt;
  static const fromJsonFactory =
      _$CreateCredentialShareResponseTokenRequestFromJson;
  static const toJsonFactory =
      _$CreateCredentialShareResponseTokenRequestToJson;
  Map<String, dynamic> toJson() =>
      _$CreateCredentialShareResponseTokenRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateCredentialShareResponseTokenRequest &&
            (identical(other.credentialShareRequestToken,
                    credentialShareRequestToken) ||
                const DeepCollectionEquality().equals(
                    other.credentialShareRequestToken,
                    credentialShareRequestToken)) &&
            (identical(other.credentials, credentials) ||
                const DeepCollectionEquality()
                    .equals(other.credentials, credentials)) &&
            (identical(other.expiresAt, expiresAt) ||
                const DeepCollectionEquality()
                    .equals(other.expiresAt, expiresAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(credentialShareRequestToken) ^
      const DeepCollectionEquality().hash(credentials) ^
      const DeepCollectionEquality().hash(expiresAt) ^
      runtimeType.hashCode;
}

extension $CreateCredentialShareResponseTokenRequestExtension
    on CreateCredentialShareResponseTokenRequest {
  CreateCredentialShareResponseTokenRequest copyWith(
      {String? credentialShareRequestToken,
      List<W3cCredential>? credentials,
      String? expiresAt}) {
    return CreateCredentialShareResponseTokenRequest(
        credentialShareRequestToken:
            credentialShareRequestToken ?? this.credentialShareRequestToken,
        credentials: credentials ?? this.credentials,
        expiresAt: expiresAt ?? this.expiresAt);
  }

  CreateCredentialShareResponseTokenRequest copyWithWrapped(
      {Wrapped<String>? credentialShareRequestToken,
      Wrapped<List<W3cCredential>>? credentials,
      Wrapped<String?>? expiresAt}) {
    return CreateCredentialShareResponseTokenRequest(
        credentialShareRequestToken: (credentialShareRequestToken != null
            ? credentialShareRequestToken.value
            : this.credentialShareRequestToken),
        credentials:
            (credentials != null ? credentials.value : this.credentials),
        expiresAt: (expiresAt != null ? expiresAt.value : this.expiresAt));
  }
}

@JsonSerializable(explicitToJson: true)
class ReadEncryptedMessageOuput {
  ReadEncryptedMessageOuput({
    required this.message,
  });

  factory ReadEncryptedMessageOuput.fromJson(Map<String, dynamic> json) =>
      _$ReadEncryptedMessageOuputFromJson(json);

  @JsonKey(name: 'message', includeIfNull: false)
  final AnyData message;
  static const fromJsonFactory = _$ReadEncryptedMessageOuputFromJson;
  static const toJsonFactory = _$ReadEncryptedMessageOuputToJson;
  Map<String, dynamic> toJson() => _$ReadEncryptedMessageOuputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReadEncryptedMessageOuput &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^ runtimeType.hashCode;
}

extension $ReadEncryptedMessageOuputExtension on ReadEncryptedMessageOuput {
  ReadEncryptedMessageOuput copyWith({AnyData? message}) {
    return ReadEncryptedMessageOuput(message: message ?? this.message);
  }

  ReadEncryptedMessageOuput copyWithWrapped({Wrapped<AnyData>? message}) {
    return ReadEncryptedMessageOuput(
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class ReadEncryptedMessageInput {
  ReadEncryptedMessageInput({
    required this.encryptedMessage,
  });

  factory ReadEncryptedMessageInput.fromJson(Map<String, dynamic> json) =>
      _$ReadEncryptedMessageInputFromJson(json);

  @JsonKey(name: 'encryptedMessage', includeIfNull: false)
  final String encryptedMessage;
  static const fromJsonFactory = _$ReadEncryptedMessageInputFromJson;
  static const toJsonFactory = _$ReadEncryptedMessageInputToJson;
  Map<String, dynamic> toJson() => _$ReadEncryptedMessageInputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReadEncryptedMessageInput &&
            (identical(other.encryptedMessage, encryptedMessage) ||
                const DeepCollectionEquality()
                    .equals(other.encryptedMessage, encryptedMessage)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(encryptedMessage) ^
      runtimeType.hashCode;
}

extension $ReadEncryptedMessageInputExtension on ReadEncryptedMessageInput {
  ReadEncryptedMessageInput copyWith({String? encryptedMessage}) {
    return ReadEncryptedMessageInput(
        encryptedMessage: encryptedMessage ?? this.encryptedMessage);
  }

  ReadEncryptedMessageInput copyWithWrapped(
      {Wrapped<String>? encryptedMessage}) {
    return ReadEncryptedMessageInput(
        encryptedMessage: (encryptedMessage != null
            ? encryptedMessage.value
            : this.encryptedMessage));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateEncryptedMessageOuput {
  CreateEncryptedMessageOuput({
    required this.encryptedMessage,
  });

  factory CreateEncryptedMessageOuput.fromJson(Map<String, dynamic> json) =>
      _$CreateEncryptedMessageOuputFromJson(json);

  @JsonKey(name: 'encryptedMessage', includeIfNull: false)
  final String encryptedMessage;
  static const fromJsonFactory = _$CreateEncryptedMessageOuputFromJson;
  static const toJsonFactory = _$CreateEncryptedMessageOuputToJson;
  Map<String, dynamic> toJson() => _$CreateEncryptedMessageOuputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateEncryptedMessageOuput &&
            (identical(other.encryptedMessage, encryptedMessage) ||
                const DeepCollectionEquality()
                    .equals(other.encryptedMessage, encryptedMessage)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(encryptedMessage) ^
      runtimeType.hashCode;
}

extension $CreateEncryptedMessageOuputExtension on CreateEncryptedMessageOuput {
  CreateEncryptedMessageOuput copyWith({String? encryptedMessage}) {
    return CreateEncryptedMessageOuput(
        encryptedMessage: encryptedMessage ?? this.encryptedMessage);
  }

  CreateEncryptedMessageOuput copyWithWrapped(
      {Wrapped<String>? encryptedMessage}) {
    return CreateEncryptedMessageOuput(
        encryptedMessage: (encryptedMessage != null
            ? encryptedMessage.value
            : this.encryptedMessage));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateEncryptedMessageInput {
  CreateEncryptedMessageInput({
    required this.did,
    required this.message,
  });

  factory CreateEncryptedMessageInput.fromJson(Map<String, dynamic> json) =>
      _$CreateEncryptedMessageInputFromJson(json);

  @JsonKey(name: 'did', includeIfNull: false)
  final String did;
  @JsonKey(name: 'message', includeIfNull: false)
  final AnyData message;
  static const fromJsonFactory = _$CreateEncryptedMessageInputFromJson;
  static const toJsonFactory = _$CreateEncryptedMessageInputToJson;
  Map<String, dynamic> toJson() => _$CreateEncryptedMessageInputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateEncryptedMessageInput &&
            (identical(other.did, did) ||
                const DeepCollectionEquality().equals(other.did, did)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(did) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $CreateEncryptedMessageInputExtension on CreateEncryptedMessageInput {
  CreateEncryptedMessageInput copyWith({String? did, AnyData? message}) {
    return CreateEncryptedMessageInput(
        did: did ?? this.did, message: message ?? this.message);
  }

  CreateEncryptedMessageInput copyWithWrapped(
      {Wrapped<String>? did, Wrapped<AnyData>? message}) {
    return CreateEncryptedMessageInput(
        did: (did != null ? did.value : this.did),
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class UserInfoOutput {
  UserInfoOutput({
    this.userCreateDate,
  });

  factory UserInfoOutput.fromJson(Map<String, dynamic> json) =>
      _$UserInfoOutputFromJson(json);

  @JsonKey(name: 'userCreateDate', includeIfNull: false)
  final String? userCreateDate;
  static const fromJsonFactory = _$UserInfoOutputFromJson;
  static const toJsonFactory = _$UserInfoOutputToJson;
  Map<String, dynamic> toJson() => _$UserInfoOutputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserInfoOutput &&
            (identical(other.userCreateDate, userCreateDate) ||
                const DeepCollectionEquality()
                    .equals(other.userCreateDate, userCreateDate)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userCreateDate) ^
      runtimeType.hashCode;
}

extension $UserInfoOutputExtension on UserInfoOutput {
  UserInfoOutput copyWith({String? userCreateDate}) {
    return UserInfoOutput(
        userCreateDate: userCreateDate ?? this.userCreateDate);
  }

  UserInfoOutput copyWithWrapped({Wrapped<String?>? userCreateDate}) {
    return UserInfoOutput(
        userCreateDate: (userCreateDate != null
            ? userCreateDate.value
            : this.userCreateDate));
  }
}

@JsonSerializable(explicitToJson: true)
class LoginOutput {
  LoginOutput({
    required this.accessToken,
    required this.refreshToken,
    required this.did,
  });

  factory LoginOutput.fromJson(Map<String, dynamic> json) =>
      _$LoginOutputFromJson(json);

  @JsonKey(name: 'accessToken', includeIfNull: false)
  final String accessToken;
  @JsonKey(name: 'refreshToken', includeIfNull: false)
  final String refreshToken;
  @JsonKey(name: 'did', includeIfNull: false)
  final String did;
  static const fromJsonFactory = _$LoginOutputFromJson;
  static const toJsonFactory = _$LoginOutputToJson;
  Map<String, dynamic> toJson() => _$LoginOutputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginOutput &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)) &&
            (identical(other.did, did) ||
                const DeepCollectionEquality().equals(other.did, did)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(did) ^
      runtimeType.hashCode;
}

extension $LoginOutputExtension on LoginOutput {
  LoginOutput copyWith(
      {String? accessToken, String? refreshToken, String? did}) {
    return LoginOutput(
        accessToken: accessToken ?? this.accessToken,
        refreshToken: refreshToken ?? this.refreshToken,
        did: did ?? this.did);
  }

  LoginOutput copyWithWrapped(
      {Wrapped<String>? accessToken,
      Wrapped<String>? refreshToken,
      Wrapped<String>? did}) {
    return LoginOutput(
        accessToken:
            (accessToken != null ? accessToken.value : this.accessToken),
        refreshToken:
            (refreshToken != null ? refreshToken.value : this.refreshToken),
        did: (did != null ? did.value : this.did));
  }
}

@JsonSerializable(explicitToJson: true)
class LoginInput {
  LoginInput({
    required this.username,
    required this.password,
  });

  factory LoginInput.fromJson(Map<String, dynamic> json) =>
      _$LoginInputFromJson(json);

  @JsonKey(name: 'username', includeIfNull: false)
  final String username;
  @JsonKey(name: 'password', includeIfNull: false)
  final String password;
  static const fromJsonFactory = _$LoginInputFromJson;
  static const toJsonFactory = _$LoginInputToJson;
  Map<String, dynamic> toJson() => _$LoginInputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginInput &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $LoginInputExtension on LoginInput {
  LoginInput copyWith({String? username, String? password}) {
    return LoginInput(
        username: username ?? this.username,
        password: password ?? this.password);
  }

  LoginInput copyWithWrapped(
      {Wrapped<String>? username, Wrapped<String>? password}) {
    return LoginInput(
        username: (username != null ? username.value : this.username),
        password: (password != null ? password.value : this.password));
  }
}

@JsonSerializable(explicitToJson: true)
class ArbitraryUsernameSignUpOutput {
  ArbitraryUsernameSignUpOutput({
    required this.accessToken,
    required this.refreshToken,
    required this.did,
  });

  factory ArbitraryUsernameSignUpOutput.fromJson(Map<String, dynamic> json) =>
      _$ArbitraryUsernameSignUpOutputFromJson(json);

  @JsonKey(name: 'accessToken', includeIfNull: false)
  final String accessToken;
  @JsonKey(name: 'refreshToken', includeIfNull: false)
  final String refreshToken;
  @JsonKey(name: 'did', includeIfNull: false)
  final String did;
  static const fromJsonFactory = _$ArbitraryUsernameSignUpOutputFromJson;
  static const toJsonFactory = _$ArbitraryUsernameSignUpOutputToJson;
  Map<String, dynamic> toJson() => _$ArbitraryUsernameSignUpOutputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ArbitraryUsernameSignUpOutput &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)) &&
            (identical(other.did, did) ||
                const DeepCollectionEquality().equals(other.did, did)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(did) ^
      runtimeType.hashCode;
}

extension $ArbitraryUsernameSignUpOutputExtension
    on ArbitraryUsernameSignUpOutput {
  ArbitraryUsernameSignUpOutput copyWith(
      {String? accessToken, String? refreshToken, String? did}) {
    return ArbitraryUsernameSignUpOutput(
        accessToken: accessToken ?? this.accessToken,
        refreshToken: refreshToken ?? this.refreshToken,
        did: did ?? this.did);
  }

  ArbitraryUsernameSignUpOutput copyWithWrapped(
      {Wrapped<String>? accessToken,
      Wrapped<String>? refreshToken,
      Wrapped<String>? did}) {
    return ArbitraryUsernameSignUpOutput(
        accessToken:
            (accessToken != null ? accessToken.value : this.accessToken),
        refreshToken:
            (refreshToken != null ? refreshToken.value : this.refreshToken),
        did: (did != null ? did.value : this.did));
  }
}

@JsonSerializable(explicitToJson: true)
class SdkOptionsInput {
  SdkOptionsInput({
    this.didMethod,
    this.keyTypes,
  });

  factory SdkOptionsInput.fromJson(Map<String, dynamic> json) =>
      _$SdkOptionsInputFromJson(json);

  @JsonKey(
    name: 'didMethod',
    includeIfNull: false,
    toJson: apiDidMethodToJson,
    fromJson: apiDidMethodFromJson,
  )
  final enums.ApiDidMethod? didMethod;
  @JsonKey(
    name: 'keyTypes',
    includeIfNull: false,
    toJson: keyTypesListToJson,
    fromJson: keyTypesListFromJson,
  )
  final List<enums.KeyTypes>? keyTypes;
  static const fromJsonFactory = _$SdkOptionsInputFromJson;
  static const toJsonFactory = _$SdkOptionsInputToJson;
  Map<String, dynamic> toJson() => _$SdkOptionsInputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SdkOptionsInput &&
            (identical(other.didMethod, didMethod) ||
                const DeepCollectionEquality()
                    .equals(other.didMethod, didMethod)) &&
            (identical(other.keyTypes, keyTypes) ||
                const DeepCollectionEquality()
                    .equals(other.keyTypes, keyTypes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(didMethod) ^
      const DeepCollectionEquality().hash(keyTypes) ^
      runtimeType.hashCode;
}

extension $SdkOptionsInputExtension on SdkOptionsInput {
  SdkOptionsInput copyWith(
      {enums.ApiDidMethod? didMethod, List<enums.KeyTypes>? keyTypes}) {
    return SdkOptionsInput(
        didMethod: didMethod ?? this.didMethod,
        keyTypes: keyTypes ?? this.keyTypes);
  }

  SdkOptionsInput copyWithWrapped(
      {Wrapped<enums.ApiDidMethod?>? didMethod,
      Wrapped<List<enums.KeyTypes>?>? keyTypes}) {
    return SdkOptionsInput(
        didMethod: (didMethod != null ? didMethod.value : this.didMethod),
        keyTypes: (keyTypes != null ? keyTypes.value : this.keyTypes));
  }
}

@JsonSerializable(explicitToJson: true)
class ApiMessageParameters {
  ApiMessageParameters({
    this.htmlMessage,
    this.subject,
    required this.message,
  });

  factory ApiMessageParameters.fromJson(Map<String, dynamic> json) =>
      _$ApiMessageParametersFromJson(json);

  @JsonKey(name: 'htmlMessage', includeIfNull: false)
  final String? htmlMessage;
  @JsonKey(name: 'subject', includeIfNull: false)
  final String? subject;
  @JsonKey(name: 'message', includeIfNull: false)
  final String message;
  static const fromJsonFactory = _$ApiMessageParametersFromJson;
  static const toJsonFactory = _$ApiMessageParametersToJson;
  Map<String, dynamic> toJson() => _$ApiMessageParametersToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApiMessageParameters &&
            (identical(other.htmlMessage, htmlMessage) ||
                const DeepCollectionEquality()
                    .equals(other.htmlMessage, htmlMessage)) &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality()
                    .equals(other.subject, subject)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(htmlMessage) ^
      const DeepCollectionEquality().hash(subject) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $ApiMessageParametersExtension on ApiMessageParameters {
  ApiMessageParameters copyWith(
      {String? htmlMessage, String? subject, String? message}) {
    return ApiMessageParameters(
        htmlMessage: htmlMessage ?? this.htmlMessage,
        subject: subject ?? this.subject,
        message: message ?? this.message);
  }

  ApiMessageParameters copyWithWrapped(
      {Wrapped<String?>? htmlMessage,
      Wrapped<String?>? subject,
      Wrapped<String>? message}) {
    return ApiMessageParameters(
        htmlMessage:
            (htmlMessage != null ? htmlMessage.value : this.htmlMessage),
        subject: (subject != null ? subject.value : this.subject),
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class SignUpInput {
  SignUpInput({
    required this.username,
    required this.password,
    this.options,
    this.messageParameters,
  });

  factory SignUpInput.fromJson(Map<String, dynamic> json) =>
      _$SignUpInputFromJson(json);

  @JsonKey(name: 'username', includeIfNull: false)
  final String username;
  @JsonKey(name: 'password', includeIfNull: false)
  final String password;
  @JsonKey(name: 'options', includeIfNull: false)
  final SdkOptionsInput? options;
  @JsonKey(name: 'messageParameters', includeIfNull: false)
  final ApiMessageParameters? messageParameters;
  static const fromJsonFactory = _$SignUpInputFromJson;
  static const toJsonFactory = _$SignUpInputToJson;
  Map<String, dynamic> toJson() => _$SignUpInputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignUpInput &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.options, options) ||
                const DeepCollectionEquality()
                    .equals(other.options, options)) &&
            (identical(other.messageParameters, messageParameters) ||
                const DeepCollectionEquality()
                    .equals(other.messageParameters, messageParameters)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(options) ^
      const DeepCollectionEquality().hash(messageParameters) ^
      runtimeType.hashCode;
}

extension $SignUpInputExtension on SignUpInput {
  SignUpInput copyWith(
      {String? username,
      String? password,
      SdkOptionsInput? options,
      ApiMessageParameters? messageParameters}) {
    return SignUpInput(
        username: username ?? this.username,
        password: password ?? this.password,
        options: options ?? this.options,
        messageParameters: messageParameters ?? this.messageParameters);
  }

  SignUpInput copyWithWrapped(
      {Wrapped<String>? username,
      Wrapped<String>? password,
      Wrapped<SdkOptionsInput?>? options,
      Wrapped<ApiMessageParameters?>? messageParameters}) {
    return SignUpInput(
        username: (username != null ? username.value : this.username),
        password: (password != null ? password.value : this.password),
        options: (options != null ? options.value : this.options),
        messageParameters: (messageParameters != null
            ? messageParameters.value
            : this.messageParameters));
  }
}

@JsonSerializable(explicitToJson: true)
class ConfirmSignUpOutput {
  ConfirmSignUpOutput({
    required this.accessToken,
    required this.refreshToken,
    required this.idToken,
    required this.did,
  });

  factory ConfirmSignUpOutput.fromJson(Map<String, dynamic> json) =>
      _$ConfirmSignUpOutputFromJson(json);

  @JsonKey(name: 'accessToken', includeIfNull: false)
  final String accessToken;
  @JsonKey(name: 'refreshToken', includeIfNull: false)
  final String refreshToken;
  @JsonKey(name: 'idToken', includeIfNull: false)
  final String idToken;
  @JsonKey(name: 'did', includeIfNull: false)
  final String did;
  static const fromJsonFactory = _$ConfirmSignUpOutputFromJson;
  static const toJsonFactory = _$ConfirmSignUpOutputToJson;
  Map<String, dynamic> toJson() => _$ConfirmSignUpOutputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmSignUpOutput &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)) &&
            (identical(other.idToken, idToken) ||
                const DeepCollectionEquality()
                    .equals(other.idToken, idToken)) &&
            (identical(other.did, did) ||
                const DeepCollectionEquality().equals(other.did, did)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(idToken) ^
      const DeepCollectionEquality().hash(did) ^
      runtimeType.hashCode;
}

extension $ConfirmSignUpOutputExtension on ConfirmSignUpOutput {
  ConfirmSignUpOutput copyWith(
      {String? accessToken,
      String? refreshToken,
      String? idToken,
      String? did}) {
    return ConfirmSignUpOutput(
        accessToken: accessToken ?? this.accessToken,
        refreshToken: refreshToken ?? this.refreshToken,
        idToken: idToken ?? this.idToken,
        did: did ?? this.did);
  }

  ConfirmSignUpOutput copyWithWrapped(
      {Wrapped<String>? accessToken,
      Wrapped<String>? refreshToken,
      Wrapped<String>? idToken,
      Wrapped<String>? did}) {
    return ConfirmSignUpOutput(
        accessToken:
            (accessToken != null ? accessToken.value : this.accessToken),
        refreshToken:
            (refreshToken != null ? refreshToken.value : this.refreshToken),
        idToken: (idToken != null ? idToken.value : this.idToken),
        did: (did != null ? did.value : this.did));
  }
}

@JsonSerializable(explicitToJson: true)
class ConfirmSignUpInput {
  ConfirmSignUpInput({
    required this.token,
    required this.confirmationCode,
    this.options,
  });

  factory ConfirmSignUpInput.fromJson(Map<String, dynamic> json) =>
      _$ConfirmSignUpInputFromJson(json);

  @JsonKey(name: 'token', includeIfNull: false)
  final String token;
  @JsonKey(name: 'confirmationCode', includeIfNull: false)
  final String confirmationCode;
  @JsonKey(name: 'options', includeIfNull: false)
  final SdkOptionsInput? options;
  static const fromJsonFactory = _$ConfirmSignUpInputFromJson;
  static const toJsonFactory = _$ConfirmSignUpInputToJson;
  Map<String, dynamic> toJson() => _$ConfirmSignUpInputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmSignUpInput &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.confirmationCode, confirmationCode) ||
                const DeepCollectionEquality()
                    .equals(other.confirmationCode, confirmationCode)) &&
            (identical(other.options, options) ||
                const DeepCollectionEquality().equals(other.options, options)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(confirmationCode) ^
      const DeepCollectionEquality().hash(options) ^
      runtimeType.hashCode;
}

extension $ConfirmSignUpInputExtension on ConfirmSignUpInput {
  ConfirmSignUpInput copyWith(
      {String? token, String? confirmationCode, SdkOptionsInput? options}) {
    return ConfirmSignUpInput(
        token: token ?? this.token,
        confirmationCode: confirmationCode ?? this.confirmationCode,
        options: options ?? this.options);
  }

  ConfirmSignUpInput copyWithWrapped(
      {Wrapped<String>? token,
      Wrapped<String>? confirmationCode,
      Wrapped<SdkOptionsInput?>? options}) {
    return ConfirmSignUpInput(
        token: (token != null ? token.value : this.token),
        confirmationCode: (confirmationCode != null
            ? confirmationCode.value
            : this.confirmationCode),
        options: (options != null ? options.value : this.options));
  }
}

@JsonSerializable(explicitToJson: true)
class ForgotPasswordInput {
  ForgotPasswordInput({
    required this.username,
  });

  factory ForgotPasswordInput.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordInputFromJson(json);

  @JsonKey(name: 'username', includeIfNull: false)
  final String username;
  static const fromJsonFactory = _$ForgotPasswordInputFromJson;
  static const toJsonFactory = _$ForgotPasswordInputToJson;
  Map<String, dynamic> toJson() => _$ForgotPasswordInputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ForgotPasswordInput &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(username) ^ runtimeType.hashCode;
}

extension $ForgotPasswordInputExtension on ForgotPasswordInput {
  ForgotPasswordInput copyWith({String? username}) {
    return ForgotPasswordInput(username: username ?? this.username);
  }

  ForgotPasswordInput copyWithWrapped({Wrapped<String>? username}) {
    return ForgotPasswordInput(
        username: (username != null ? username.value : this.username));
  }
}

@JsonSerializable(explicitToJson: true)
class ForgotPasswordConfirmInput {
  ForgotPasswordConfirmInput({
    required this.username,
    required this.otp,
    required this.newPassword,
  });

  factory ForgotPasswordConfirmInput.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordConfirmInputFromJson(json);

  @JsonKey(name: 'username', includeIfNull: false)
  final String username;
  @JsonKey(name: 'otp', includeIfNull: false)
  final String otp;
  @JsonKey(name: 'newPassword', includeIfNull: false)
  final String newPassword;
  static const fromJsonFactory = _$ForgotPasswordConfirmInputFromJson;
  static const toJsonFactory = _$ForgotPasswordConfirmInputToJson;
  Map<String, dynamic> toJson() => _$ForgotPasswordConfirmInputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ForgotPasswordConfirmInput &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.otp, otp) ||
                const DeepCollectionEquality().equals(other.otp, otp)) &&
            (identical(other.newPassword, newPassword) ||
                const DeepCollectionEquality()
                    .equals(other.newPassword, newPassword)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(otp) ^
      const DeepCollectionEquality().hash(newPassword) ^
      runtimeType.hashCode;
}

extension $ForgotPasswordConfirmInputExtension on ForgotPasswordConfirmInput {
  ForgotPasswordConfirmInput copyWith(
      {String? username, String? otp, String? newPassword}) {
    return ForgotPasswordConfirmInput(
        username: username ?? this.username,
        otp: otp ?? this.otp,
        newPassword: newPassword ?? this.newPassword);
  }

  ForgotPasswordConfirmInput copyWithWrapped(
      {Wrapped<String>? username,
      Wrapped<String>? otp,
      Wrapped<String>? newPassword}) {
    return ForgotPasswordConfirmInput(
        username: (username != null ? username.value : this.username),
        otp: (otp != null ? otp.value : this.otp),
        newPassword:
            (newPassword != null ? newPassword.value : this.newPassword));
  }
}

@JsonSerializable(explicitToJson: true)
class ChangeUsernameInput {
  ChangeUsernameInput({
    required this.username,
  });

  factory ChangeUsernameInput.fromJson(Map<String, dynamic> json) =>
      _$ChangeUsernameInputFromJson(json);

  @JsonKey(name: 'username', includeIfNull: false)
  final String username;
  static const fromJsonFactory = _$ChangeUsernameInputFromJson;
  static const toJsonFactory = _$ChangeUsernameInputToJson;
  Map<String, dynamic> toJson() => _$ChangeUsernameInputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeUsernameInput &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(username) ^ runtimeType.hashCode;
}

extension $ChangeUsernameInputExtension on ChangeUsernameInput {
  ChangeUsernameInput copyWith({String? username}) {
    return ChangeUsernameInput(username: username ?? this.username);
  }

  ChangeUsernameInput copyWithWrapped({Wrapped<String>? username}) {
    return ChangeUsernameInput(
        username: (username != null ? username.value : this.username));
  }
}

@JsonSerializable(explicitToJson: true)
class ChangeUsernameConfirmInput {
  ChangeUsernameConfirmInput({
    required this.username,
    required this.confirmationCode,
  });

  factory ChangeUsernameConfirmInput.fromJson(Map<String, dynamic> json) =>
      _$ChangeUsernameConfirmInputFromJson(json);

  @JsonKey(name: 'username', includeIfNull: false)
  final String username;
  @JsonKey(name: 'confirmationCode', includeIfNull: false)
  final String confirmationCode;
  static const fromJsonFactory = _$ChangeUsernameConfirmInputFromJson;
  static const toJsonFactory = _$ChangeUsernameConfirmInputToJson;
  Map<String, dynamic> toJson() => _$ChangeUsernameConfirmInputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeUsernameConfirmInput &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.confirmationCode, confirmationCode) ||
                const DeepCollectionEquality()
                    .equals(other.confirmationCode, confirmationCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(confirmationCode) ^
      runtimeType.hashCode;
}

extension $ChangeUsernameConfirmInputExtension on ChangeUsernameConfirmInput {
  ChangeUsernameConfirmInput copyWith(
      {String? username, String? confirmationCode}) {
    return ChangeUsernameConfirmInput(
        username: username ?? this.username,
        confirmationCode: confirmationCode ?? this.confirmationCode);
  }

  ChangeUsernameConfirmInput copyWithWrapped(
      {Wrapped<String>? username, Wrapped<String>? confirmationCode}) {
    return ChangeUsernameConfirmInput(
        username: (username != null ? username.value : this.username),
        confirmationCode: (confirmationCode != null
            ? confirmationCode.value
            : this.confirmationCode));
  }
}

@JsonSerializable(explicitToJson: true)
class ChangePasswordInput {
  ChangePasswordInput({
    required this.oldPassword,
    required this.newPassword,
  });

  factory ChangePasswordInput.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordInputFromJson(json);

  @JsonKey(name: 'oldPassword', includeIfNull: false)
  final String oldPassword;
  @JsonKey(name: 'newPassword', includeIfNull: false)
  final String newPassword;
  static const fromJsonFactory = _$ChangePasswordInputFromJson;
  static const toJsonFactory = _$ChangePasswordInputToJson;
  Map<String, dynamic> toJson() => _$ChangePasswordInputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangePasswordInput &&
            (identical(other.oldPassword, oldPassword) ||
                const DeepCollectionEquality()
                    .equals(other.oldPassword, oldPassword)) &&
            (identical(other.newPassword, newPassword) ||
                const DeepCollectionEquality()
                    .equals(other.newPassword, newPassword)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(oldPassword) ^
      const DeepCollectionEquality().hash(newPassword) ^
      runtimeType.hashCode;
}

extension $ChangePasswordInputExtension on ChangePasswordInput {
  ChangePasswordInput copyWith({String? oldPassword, String? newPassword}) {
    return ChangePasswordInput(
        oldPassword: oldPassword ?? this.oldPassword,
        newPassword: newPassword ?? this.newPassword);
  }

  ChangePasswordInput copyWithWrapped(
      {Wrapped<String>? oldPassword, Wrapped<String>? newPassword}) {
    return ChangePasswordInput(
        oldPassword:
            (oldPassword != null ? oldPassword.value : this.oldPassword),
        newPassword:
            (newPassword != null ? newPassword.value : this.newPassword));
  }
}

@JsonSerializable(explicitToJson: true)
class SignInInput {
  SignInInput({
    required this.username,
    this.messageParameters,
  });

  factory SignInInput.fromJson(Map<String, dynamic> json) =>
      _$SignInInputFromJson(json);

  @JsonKey(name: 'username', includeIfNull: false)
  final String username;
  @JsonKey(name: 'messageParameters', includeIfNull: false)
  final ApiMessageParameters? messageParameters;
  static const fromJsonFactory = _$SignInInputFromJson;
  static const toJsonFactory = _$SignInInputToJson;
  Map<String, dynamic> toJson() => _$SignInInputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInInput &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.messageParameters, messageParameters) ||
                const DeepCollectionEquality()
                    .equals(other.messageParameters, messageParameters)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(messageParameters) ^
      runtimeType.hashCode;
}

extension $SignInInputExtension on SignInInput {
  SignInInput copyWith(
      {String? username, ApiMessageParameters? messageParameters}) {
    return SignInInput(
        username: username ?? this.username,
        messageParameters: messageParameters ?? this.messageParameters);
  }

  SignInInput copyWithWrapped(
      {Wrapped<String>? username,
      Wrapped<ApiMessageParameters?>? messageParameters}) {
    return SignInInput(
        username: (username != null ? username.value : this.username),
        messageParameters: (messageParameters != null
            ? messageParameters.value
            : this.messageParameters));
  }
}

@JsonSerializable(explicitToJson: true)
class SignInWithTruecallerOutput {
  SignInWithTruecallerOutput({
    required this.accessToken,
    required this.idToken,
    required this.refreshToken,
    required this.did,
  });

  factory SignInWithTruecallerOutput.fromJson(Map<String, dynamic> json) =>
      _$SignInWithTruecallerOutputFromJson(json);

  @JsonKey(name: 'accessToken', includeIfNull: false)
  final String accessToken;
  @JsonKey(name: 'idToken', includeIfNull: false)
  final String idToken;
  @JsonKey(name: 'refreshToken', includeIfNull: false)
  final String refreshToken;
  @JsonKey(name: 'did', includeIfNull: false)
  final String did;
  static const fromJsonFactory = _$SignInWithTruecallerOutputFromJson;
  static const toJsonFactory = _$SignInWithTruecallerOutputToJson;
  Map<String, dynamic> toJson() => _$SignInWithTruecallerOutputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInWithTruecallerOutput &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.idToken, idToken) ||
                const DeepCollectionEquality()
                    .equals(other.idToken, idToken)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)) &&
            (identical(other.did, did) ||
                const DeepCollectionEquality().equals(other.did, did)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(idToken) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(did) ^
      runtimeType.hashCode;
}

extension $SignInWithTruecallerOutputExtension on SignInWithTruecallerOutput {
  SignInWithTruecallerOutput copyWith(
      {String? accessToken,
      String? idToken,
      String? refreshToken,
      String? did}) {
    return SignInWithTruecallerOutput(
        accessToken: accessToken ?? this.accessToken,
        idToken: idToken ?? this.idToken,
        refreshToken: refreshToken ?? this.refreshToken,
        did: did ?? this.did);
  }

  SignInWithTruecallerOutput copyWithWrapped(
      {Wrapped<String>? accessToken,
      Wrapped<String>? idToken,
      Wrapped<String>? refreshToken,
      Wrapped<String>? did}) {
    return SignInWithTruecallerOutput(
        accessToken:
            (accessToken != null ? accessToken.value : this.accessToken),
        idToken: (idToken != null ? idToken.value : this.idToken),
        refreshToken:
            (refreshToken != null ? refreshToken.value : this.refreshToken),
        did: (did != null ? did.value : this.did));
  }
}

@JsonSerializable(explicitToJson: true)
class ProfileTrueCaller {
  ProfileTrueCaller({
    required this.payload,
    required this.signature,
    required this.signatureAlgorithm,
    this.avatarUrl,
    this.city,
    this.companyName,
    this.countryCode,
    this.email,
    this.facebookId,
    this.firstName,
    this.gender,
    this.isAmbassador,
    this.isBusiness,
    this.isVerified,
    this.jobTitle,
    this.lastName,
    this.phoneNumber,
    this.requestNonce,
    this.street,
    this.successful,
    this.twitterId,
    this.url,
    this.zipcode,
  });

  factory ProfileTrueCaller.fromJson(Map<String, dynamic> json) =>
      _$ProfileTrueCallerFromJson(json);

  @JsonKey(name: 'payload', includeIfNull: false)
  final String payload;
  @JsonKey(name: 'signature', includeIfNull: false)
  final String signature;
  @JsonKey(name: 'signatureAlgorithm', includeIfNull: false)
  final String signatureAlgorithm;
  @JsonKey(name: 'avatarUrl', includeIfNull: false)
  final String? avatarUrl;
  @JsonKey(name: 'city', includeIfNull: false)
  final String? city;
  @JsonKey(name: 'companyName', includeIfNull: false)
  final String? companyName;
  @JsonKey(name: 'countryCode', includeIfNull: false)
  final String? countryCode;
  @JsonKey(name: 'email', includeIfNull: false)
  final String? email;
  @JsonKey(name: 'facebookId', includeIfNull: false)
  final String? facebookId;
  @JsonKey(name: 'firstName', includeIfNull: false)
  final String? firstName;
  @JsonKey(name: 'gender', includeIfNull: false)
  final String? gender;
  @JsonKey(name: 'isAmbassador', includeIfNull: false)
  final bool? isAmbassador;
  @JsonKey(name: 'isBusiness', includeIfNull: false)
  final bool? isBusiness;
  @JsonKey(name: 'isVerified', includeIfNull: false)
  final bool? isVerified;
  @JsonKey(name: 'jobTitle', includeIfNull: false)
  final String? jobTitle;
  @JsonKey(name: 'lastName', includeIfNull: false)
  final String? lastName;
  @JsonKey(name: 'phoneNumber', includeIfNull: false)
  final String? phoneNumber;
  @JsonKey(name: 'requestNonce', includeIfNull: false)
  final String? requestNonce;
  @JsonKey(name: 'street', includeIfNull: false)
  final String? street;
  @JsonKey(name: 'successful', includeIfNull: false)
  final bool? successful;
  @JsonKey(name: 'twitterId', includeIfNull: false)
  final String? twitterId;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'zipcode', includeIfNull: false)
  final String? zipcode;
  static const fromJsonFactory = _$ProfileTrueCallerFromJson;
  static const toJsonFactory = _$ProfileTrueCallerToJson;
  Map<String, dynamic> toJson() => _$ProfileTrueCallerToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProfileTrueCaller &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality()
                    .equals(other.payload, payload)) &&
            (identical(other.signature, signature) ||
                const DeepCollectionEquality()
                    .equals(other.signature, signature)) &&
            (identical(other.signatureAlgorithm, signatureAlgorithm) ||
                const DeepCollectionEquality()
                    .equals(other.signatureAlgorithm, signatureAlgorithm)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.companyName, companyName) ||
                const DeepCollectionEquality()
                    .equals(other.companyName, companyName)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.facebookId, facebookId) ||
                const DeepCollectionEquality()
                    .equals(other.facebookId, facebookId)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.isAmbassador, isAmbassador) ||
                const DeepCollectionEquality()
                    .equals(other.isAmbassador, isAmbassador)) &&
            (identical(other.isBusiness, isBusiness) ||
                const DeepCollectionEquality()
                    .equals(other.isBusiness, isBusiness)) &&
            (identical(other.isVerified, isVerified) ||
                const DeepCollectionEquality()
                    .equals(other.isVerified, isVerified)) &&
            (identical(other.jobTitle, jobTitle) ||
                const DeepCollectionEquality()
                    .equals(other.jobTitle, jobTitle)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.requestNonce, requestNonce) ||
                const DeepCollectionEquality()
                    .equals(other.requestNonce, requestNonce)) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.successful, successful) ||
                const DeepCollectionEquality()
                    .equals(other.successful, successful)) &&
            (identical(other.twitterId, twitterId) ||
                const DeepCollectionEquality()
                    .equals(other.twitterId, twitterId)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.zipcode, zipcode) ||
                const DeepCollectionEquality().equals(other.zipcode, zipcode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(payload) ^
      const DeepCollectionEquality().hash(signature) ^
      const DeepCollectionEquality().hash(signatureAlgorithm) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(companyName) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(facebookId) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(isAmbassador) ^
      const DeepCollectionEquality().hash(isBusiness) ^
      const DeepCollectionEquality().hash(isVerified) ^
      const DeepCollectionEquality().hash(jobTitle) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(requestNonce) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(successful) ^
      const DeepCollectionEquality().hash(twitterId) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(zipcode) ^
      runtimeType.hashCode;
}

extension $ProfileTrueCallerExtension on ProfileTrueCaller {
  ProfileTrueCaller copyWith(
      {String? payload,
      String? signature,
      String? signatureAlgorithm,
      String? avatarUrl,
      String? city,
      String? companyName,
      String? countryCode,
      String? email,
      String? facebookId,
      String? firstName,
      String? gender,
      bool? isAmbassador,
      bool? isBusiness,
      bool? isVerified,
      String? jobTitle,
      String? lastName,
      String? phoneNumber,
      String? requestNonce,
      String? street,
      bool? successful,
      String? twitterId,
      String? url,
      String? zipcode}) {
    return ProfileTrueCaller(
        payload: payload ?? this.payload,
        signature: signature ?? this.signature,
        signatureAlgorithm: signatureAlgorithm ?? this.signatureAlgorithm,
        avatarUrl: avatarUrl ?? this.avatarUrl,
        city: city ?? this.city,
        companyName: companyName ?? this.companyName,
        countryCode: countryCode ?? this.countryCode,
        email: email ?? this.email,
        facebookId: facebookId ?? this.facebookId,
        firstName: firstName ?? this.firstName,
        gender: gender ?? this.gender,
        isAmbassador: isAmbassador ?? this.isAmbassador,
        isBusiness: isBusiness ?? this.isBusiness,
        isVerified: isVerified ?? this.isVerified,
        jobTitle: jobTitle ?? this.jobTitle,
        lastName: lastName ?? this.lastName,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        requestNonce: requestNonce ?? this.requestNonce,
        street: street ?? this.street,
        successful: successful ?? this.successful,
        twitterId: twitterId ?? this.twitterId,
        url: url ?? this.url,
        zipcode: zipcode ?? this.zipcode);
  }

  ProfileTrueCaller copyWithWrapped(
      {Wrapped<String>? payload,
      Wrapped<String>? signature,
      Wrapped<String>? signatureAlgorithm,
      Wrapped<String?>? avatarUrl,
      Wrapped<String?>? city,
      Wrapped<String?>? companyName,
      Wrapped<String?>? countryCode,
      Wrapped<String?>? email,
      Wrapped<String?>? facebookId,
      Wrapped<String?>? firstName,
      Wrapped<String?>? gender,
      Wrapped<bool?>? isAmbassador,
      Wrapped<bool?>? isBusiness,
      Wrapped<bool?>? isVerified,
      Wrapped<String?>? jobTitle,
      Wrapped<String?>? lastName,
      Wrapped<String?>? phoneNumber,
      Wrapped<String?>? requestNonce,
      Wrapped<String?>? street,
      Wrapped<bool?>? successful,
      Wrapped<String?>? twitterId,
      Wrapped<String?>? url,
      Wrapped<String?>? zipcode}) {
    return ProfileTrueCaller(
        payload: (payload != null ? payload.value : this.payload),
        signature: (signature != null ? signature.value : this.signature),
        signatureAlgorithm: (signatureAlgorithm != null
            ? signatureAlgorithm.value
            : this.signatureAlgorithm),
        avatarUrl: (avatarUrl != null ? avatarUrl.value : this.avatarUrl),
        city: (city != null ? city.value : this.city),
        companyName:
            (companyName != null ? companyName.value : this.companyName),
        countryCode:
            (countryCode != null ? countryCode.value : this.countryCode),
        email: (email != null ? email.value : this.email),
        facebookId: (facebookId != null ? facebookId.value : this.facebookId),
        firstName: (firstName != null ? firstName.value : this.firstName),
        gender: (gender != null ? gender.value : this.gender),
        isAmbassador:
            (isAmbassador != null ? isAmbassador.value : this.isAmbassador),
        isBusiness: (isBusiness != null ? isBusiness.value : this.isBusiness),
        isVerified: (isVerified != null ? isVerified.value : this.isVerified),
        jobTitle: (jobTitle != null ? jobTitle.value : this.jobTitle),
        lastName: (lastName != null ? lastName.value : this.lastName),
        phoneNumber:
            (phoneNumber != null ? phoneNumber.value : this.phoneNumber),
        requestNonce:
            (requestNonce != null ? requestNonce.value : this.requestNonce),
        street: (street != null ? street.value : this.street),
        successful: (successful != null ? successful.value : this.successful),
        twitterId: (twitterId != null ? twitterId.value : this.twitterId),
        url: (url != null ? url.value : this.url),
        zipcode: (zipcode != null ? zipcode.value : this.zipcode));
  }
}

@JsonSerializable(explicitToJson: true)
class SignInWithTuecallerInput {
  SignInWithTuecallerInput({
    required this.token,
    this.options,
  });

  factory SignInWithTuecallerInput.fromJson(Map<String, dynamic> json) =>
      _$SignInWithTuecallerInputFromJson(json);

  @JsonKey(name: 'token', includeIfNull: false)
  final ProfileTrueCaller token;
  @JsonKey(name: 'options', includeIfNull: false)
  final SdkOptionsInput? options;
  static const fromJsonFactory = _$SignInWithTuecallerInputFromJson;
  static const toJsonFactory = _$SignInWithTuecallerInputToJson;
  Map<String, dynamic> toJson() => _$SignInWithTuecallerInputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInWithTuecallerInput &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.options, options) ||
                const DeepCollectionEquality().equals(other.options, options)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(options) ^
      runtimeType.hashCode;
}

extension $SignInWithTuecallerInputExtension on SignInWithTuecallerInput {
  SignInWithTuecallerInput copyWith(
      {ProfileTrueCaller? token, SdkOptionsInput? options}) {
    return SignInWithTuecallerInput(
        token: token ?? this.token, options: options ?? this.options);
  }

  SignInWithTuecallerInput copyWithWrapped(
      {Wrapped<ProfileTrueCaller>? token, Wrapped<SdkOptionsInput?>? options}) {
    return SignInWithTuecallerInput(
        token: (token != null ? token.value : this.token),
        options: (options != null ? options.value : this.options));
  }
}

@JsonSerializable(explicitToJson: true)
class ConfirmSignInOutput {
  ConfirmSignInOutput({
    required this.accessToken,
    required this.refreshToken,
    required this.idToken,
    required this.did,
  });

  factory ConfirmSignInOutput.fromJson(Map<String, dynamic> json) =>
      _$ConfirmSignInOutputFromJson(json);

  @JsonKey(name: 'accessToken', includeIfNull: false)
  final String accessToken;
  @JsonKey(name: 'refreshToken', includeIfNull: false)
  final String refreshToken;
  @JsonKey(name: 'idToken', includeIfNull: false)
  final String idToken;
  @JsonKey(name: 'did', includeIfNull: false)
  final String did;
  static const fromJsonFactory = _$ConfirmSignInOutputFromJson;
  static const toJsonFactory = _$ConfirmSignInOutputToJson;
  Map<String, dynamic> toJson() => _$ConfirmSignInOutputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmSignInOutput &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)) &&
            (identical(other.idToken, idToken) ||
                const DeepCollectionEquality()
                    .equals(other.idToken, idToken)) &&
            (identical(other.did, did) ||
                const DeepCollectionEquality().equals(other.did, did)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(idToken) ^
      const DeepCollectionEquality().hash(did) ^
      runtimeType.hashCode;
}

extension $ConfirmSignInOutputExtension on ConfirmSignInOutput {
  ConfirmSignInOutput copyWith(
      {String? accessToken,
      String? refreshToken,
      String? idToken,
      String? did}) {
    return ConfirmSignInOutput(
        accessToken: accessToken ?? this.accessToken,
        refreshToken: refreshToken ?? this.refreshToken,
        idToken: idToken ?? this.idToken,
        did: did ?? this.did);
  }

  ConfirmSignInOutput copyWithWrapped(
      {Wrapped<String>? accessToken,
      Wrapped<String>? refreshToken,
      Wrapped<String>? idToken,
      Wrapped<String>? did}) {
    return ConfirmSignInOutput(
        accessToken:
            (accessToken != null ? accessToken.value : this.accessToken),
        refreshToken:
            (refreshToken != null ? refreshToken.value : this.refreshToken),
        idToken: (idToken != null ? idToken.value : this.idToken),
        did: (did != null ? did.value : this.did));
  }
}

@JsonSerializable(explicitToJson: true)
class ConfirmSignInInput {
  ConfirmSignInInput({
    required this.token,
    required this.confirmationCode,
    this.issueSignupCredential,
    this.options,
  });

  factory ConfirmSignInInput.fromJson(Map<String, dynamic> json) =>
      _$ConfirmSignInInputFromJson(json);

  @JsonKey(name: 'token', includeIfNull: false)
  final String token;
  @JsonKey(name: 'confirmationCode', includeIfNull: false)
  final String confirmationCode;
  @JsonKey(name: 'issueSignupCredential', includeIfNull: false)
  final bool? issueSignupCredential;
  @JsonKey(name: 'options', includeIfNull: false)
  final SdkOptionsInput? options;
  static const fromJsonFactory = _$ConfirmSignInInputFromJson;
  static const toJsonFactory = _$ConfirmSignInInputToJson;
  Map<String, dynamic> toJson() => _$ConfirmSignInInputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmSignInInput &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.confirmationCode, confirmationCode) ||
                const DeepCollectionEquality()
                    .equals(other.confirmationCode, confirmationCode)) &&
            (identical(other.issueSignupCredential, issueSignupCredential) ||
                const DeepCollectionEquality().equals(
                    other.issueSignupCredential, issueSignupCredential)) &&
            (identical(other.options, options) ||
                const DeepCollectionEquality().equals(other.options, options)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(confirmationCode) ^
      const DeepCollectionEquality().hash(issueSignupCredential) ^
      const DeepCollectionEquality().hash(options) ^
      runtimeType.hashCode;
}

extension $ConfirmSignInInputExtension on ConfirmSignInInput {
  ConfirmSignInInput copyWith(
      {String? token,
      String? confirmationCode,
      bool? issueSignupCredential,
      SdkOptionsInput? options}) {
    return ConfirmSignInInput(
        token: token ?? this.token,
        confirmationCode: confirmationCode ?? this.confirmationCode,
        issueSignupCredential:
            issueSignupCredential ?? this.issueSignupCredential,
        options: options ?? this.options);
  }

  ConfirmSignInInput copyWithWrapped(
      {Wrapped<String>? token,
      Wrapped<String>? confirmationCode,
      Wrapped<bool?>? issueSignupCredential,
      Wrapped<SdkOptionsInput?>? options}) {
    return ConfirmSignInInput(
        token: (token != null ? token.value : this.token),
        confirmationCode: (confirmationCode != null
            ? confirmationCode.value
            : this.confirmationCode),
        issueSignupCredential: (issueSignupCredential != null
            ? issueSignupCredential.value
            : this.issueSignupCredential),
        options: (options != null ? options.value : this.options));
  }
}

@JsonSerializable(explicitToJson: true)
class PasswordlessLoginInput {
  PasswordlessLoginInput({
    required this.username,
    this.messageParameters,
  });

  factory PasswordlessLoginInput.fromJson(Map<String, dynamic> json) =>
      _$PasswordlessLoginInputFromJson(json);

  @JsonKey(name: 'username', includeIfNull: false)
  final String username;
  @JsonKey(name: 'messageParameters', includeIfNull: false)
  final ApiMessageParameters? messageParameters;
  static const fromJsonFactory = _$PasswordlessLoginInputFromJson;
  static const toJsonFactory = _$PasswordlessLoginInputToJson;
  Map<String, dynamic> toJson() => _$PasswordlessLoginInputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordlessLoginInput &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.messageParameters, messageParameters) ||
                const DeepCollectionEquality()
                    .equals(other.messageParameters, messageParameters)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(messageParameters) ^
      runtimeType.hashCode;
}

extension $PasswordlessLoginInputExtension on PasswordlessLoginInput {
  PasswordlessLoginInput copyWith(
      {String? username, ApiMessageParameters? messageParameters}) {
    return PasswordlessLoginInput(
        username: username ?? this.username,
        messageParameters: messageParameters ?? this.messageParameters);
  }

  PasswordlessLoginInput copyWithWrapped(
      {Wrapped<String>? username,
      Wrapped<ApiMessageParameters?>? messageParameters}) {
    return PasswordlessLoginInput(
        username: (username != null ? username.value : this.username),
        messageParameters: (messageParameters != null
            ? messageParameters.value
            : this.messageParameters));
  }
}

@JsonSerializable(explicitToJson: true)
class ConfirmPasswordlessLoginOutput {
  ConfirmPasswordlessLoginOutput({
    required this.accessToken,
    required this.refreshToken,
    required this.idToken,
    required this.did,
  });

  factory ConfirmPasswordlessLoginOutput.fromJson(Map<String, dynamic> json) =>
      _$ConfirmPasswordlessLoginOutputFromJson(json);

  @JsonKey(name: 'accessToken', includeIfNull: false)
  final String accessToken;
  @JsonKey(name: 'refreshToken', includeIfNull: false)
  final String refreshToken;
  @JsonKey(name: 'idToken', includeIfNull: false)
  final String idToken;
  @JsonKey(name: 'did', includeIfNull: false)
  final String did;
  static const fromJsonFactory = _$ConfirmPasswordlessLoginOutputFromJson;
  static const toJsonFactory = _$ConfirmPasswordlessLoginOutputToJson;
  Map<String, dynamic> toJson() => _$ConfirmPasswordlessLoginOutputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmPasswordlessLoginOutput &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)) &&
            (identical(other.idToken, idToken) ||
                const DeepCollectionEquality()
                    .equals(other.idToken, idToken)) &&
            (identical(other.did, did) ||
                const DeepCollectionEquality().equals(other.did, did)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(idToken) ^
      const DeepCollectionEquality().hash(did) ^
      runtimeType.hashCode;
}

extension $ConfirmPasswordlessLoginOutputExtension
    on ConfirmPasswordlessLoginOutput {
  ConfirmPasswordlessLoginOutput copyWith(
      {String? accessToken,
      String? refreshToken,
      String? idToken,
      String? did}) {
    return ConfirmPasswordlessLoginOutput(
        accessToken: accessToken ?? this.accessToken,
        refreshToken: refreshToken ?? this.refreshToken,
        idToken: idToken ?? this.idToken,
        did: did ?? this.did);
  }

  ConfirmPasswordlessLoginOutput copyWithWrapped(
      {Wrapped<String>? accessToken,
      Wrapped<String>? refreshToken,
      Wrapped<String>? idToken,
      Wrapped<String>? did}) {
    return ConfirmPasswordlessLoginOutput(
        accessToken:
            (accessToken != null ? accessToken.value : this.accessToken),
        refreshToken:
            (refreshToken != null ? refreshToken.value : this.refreshToken),
        idToken: (idToken != null ? idToken.value : this.idToken),
        did: (did != null ? did.value : this.did));
  }
}

@JsonSerializable(explicitToJson: true)
class ConfirmPasswordlessLoginInput {
  ConfirmPasswordlessLoginInput({
    required this.token,
    required this.confirmationCode,
  });

  factory ConfirmPasswordlessLoginInput.fromJson(Map<String, dynamic> json) =>
      _$ConfirmPasswordlessLoginInputFromJson(json);

  @JsonKey(name: 'token', includeIfNull: false)
  final String token;
  @JsonKey(name: 'confirmationCode', includeIfNull: false)
  final String confirmationCode;
  static const fromJsonFactory = _$ConfirmPasswordlessLoginInputFromJson;
  static const toJsonFactory = _$ConfirmPasswordlessLoginInputToJson;
  Map<String, dynamic> toJson() => _$ConfirmPasswordlessLoginInputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmPasswordlessLoginInput &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.confirmationCode, confirmationCode) ||
                const DeepCollectionEquality()
                    .equals(other.confirmationCode, confirmationCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(confirmationCode) ^
      runtimeType.hashCode;
}

extension $ConfirmPasswordlessLoginInputExtension
    on ConfirmPasswordlessLoginInput {
  ConfirmPasswordlessLoginInput copyWith(
      {String? token, String? confirmationCode}) {
    return ConfirmPasswordlessLoginInput(
        token: token ?? this.token,
        confirmationCode: confirmationCode ?? this.confirmationCode);
  }

  ConfirmPasswordlessLoginInput copyWithWrapped(
      {Wrapped<String>? token, Wrapped<String>? confirmationCode}) {
    return ConfirmPasswordlessLoginInput(
        token: (token != null ? token.value : this.token),
        confirmationCode: (confirmationCode != null
            ? confirmationCode.value
            : this.confirmationCode));
  }
}

@JsonSerializable(explicitToJson: true)
class PickLoginOutputExcludeKeyofLoginOutputRefreshToken {
  PickLoginOutputExcludeKeyofLoginOutputRefreshToken({
    required this.accessToken,
    required this.did,
  });

  factory PickLoginOutputExcludeKeyofLoginOutputRefreshToken.fromJson(
          Map<String, dynamic> json) =>
      _$PickLoginOutputExcludeKeyofLoginOutputRefreshTokenFromJson(json);

  @JsonKey(name: 'accessToken', includeIfNull: false)
  final String accessToken;
  @JsonKey(name: 'did', includeIfNull: false)
  final String did;
  static const fromJsonFactory =
      _$PickLoginOutputExcludeKeyofLoginOutputRefreshTokenFromJson;
  static const toJsonFactory =
      _$PickLoginOutputExcludeKeyofLoginOutputRefreshTokenToJson;
  Map<String, dynamic> toJson() =>
      _$PickLoginOutputExcludeKeyofLoginOutputRefreshTokenToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PickLoginOutputExcludeKeyofLoginOutputRefreshToken &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.did, did) ||
                const DeepCollectionEquality().equals(other.did, did)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(did) ^
      runtimeType.hashCode;
}

extension $PickLoginOutputExcludeKeyofLoginOutputRefreshTokenExtension
    on PickLoginOutputExcludeKeyofLoginOutputRefreshToken {
  PickLoginOutputExcludeKeyofLoginOutputRefreshToken copyWith(
      {String? accessToken, String? did}) {
    return PickLoginOutputExcludeKeyofLoginOutputRefreshToken(
        accessToken: accessToken ?? this.accessToken, did: did ?? this.did);
  }

  PickLoginOutputExcludeKeyofLoginOutputRefreshToken copyWithWrapped(
      {Wrapped<String>? accessToken, Wrapped<String>? did}) {
    return PickLoginOutputExcludeKeyofLoginOutputRefreshToken(
        accessToken:
            (accessToken != null ? accessToken.value : this.accessToken),
        did: (did != null ? did.value : this.did));
  }
}

@JsonSerializable(explicitToJson: true)
class LoginWithRefreshTokenInput {
  LoginWithRefreshTokenInput({
    required this.refreshToken,
  });

  factory LoginWithRefreshTokenInput.fromJson(Map<String, dynamic> json) =>
      _$LoginWithRefreshTokenInputFromJson(json);

  @JsonKey(name: 'refreshToken', includeIfNull: false)
  final String refreshToken;
  static const fromJsonFactory = _$LoginWithRefreshTokenInputFromJson;
  static const toJsonFactory = _$LoginWithRefreshTokenInputToJson;
  Map<String, dynamic> toJson() => _$LoginWithRefreshTokenInputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginWithRefreshTokenInput &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(refreshToken) ^ runtimeType.hashCode;
}

extension $LoginWithRefreshTokenInputExtension on LoginWithRefreshTokenInput {
  LoginWithRefreshTokenInput copyWith({String? refreshToken}) {
    return LoginWithRefreshTokenInput(
        refreshToken: refreshToken ?? this.refreshToken);
  }

  LoginWithRefreshTokenInput copyWithWrapped({Wrapped<String>? refreshToken}) {
    return LoginWithRefreshTokenInput(
        refreshToken:
            (refreshToken != null ? refreshToken.value : this.refreshToken));
  }
}

@JsonSerializable(explicitToJson: true)
class SignedJwtObject {
  SignedJwtObject({
    required this.header,
    required this.payload,
    this.signature,
  });

  factory SignedJwtObject.fromJson(Map<String, dynamic> json) =>
      _$SignedJwtObjectFromJson(json);

  @JsonKey(name: 'header', includeIfNull: false)
  final AnyData header;
  @JsonKey(name: 'payload', includeIfNull: false)
  final AnyData payload;
  @JsonKey(name: 'signature', includeIfNull: false)
  final String? signature;
  static const fromJsonFactory = _$SignedJwtObjectFromJson;
  static const toJsonFactory = _$SignedJwtObjectToJson;
  Map<String, dynamic> toJson() => _$SignedJwtObjectToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignedJwtObject &&
            (identical(other.header, header) ||
                const DeepCollectionEquality().equals(other.header, header)) &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality()
                    .equals(other.payload, payload)) &&
            (identical(other.signature, signature) ||
                const DeepCollectionEquality()
                    .equals(other.signature, signature)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(header) ^
      const DeepCollectionEquality().hash(payload) ^
      const DeepCollectionEquality().hash(signature) ^
      runtimeType.hashCode;
}

extension $SignedJwtObjectExtension on SignedJwtObject {
  SignedJwtObject copyWith(
      {AnyData? header, AnyData? payload, String? signature}) {
    return SignedJwtObject(
        header: header ?? this.header,
        payload: payload ?? this.payload,
        signature: signature ?? this.signature);
  }

  SignedJwtObject copyWithWrapped(
      {Wrapped<AnyData>? header,
      Wrapped<AnyData>? payload,
      Wrapped<String?>? signature}) {
    return SignedJwtObject(
        header: (header != null ? header.value : this.header),
        payload: (payload != null ? payload.value : this.payload),
        signature: (signature != null ? signature.value : this.signature));
  }
}

@JsonSerializable(explicitToJson: true)
class SignJwtOutput {
  SignJwtOutput({
    required this.jwtObject,
    this.jwt,
  });

  factory SignJwtOutput.fromJson(Map<String, dynamic> json) =>
      _$SignJwtOutputFromJson(json);

  @JsonKey(name: 'jwtObject', includeIfNull: false)
  final SignedJwtObject jwtObject;
  @JsonKey(name: 'jwt', includeIfNull: false)
  final String? jwt;
  static const fromJsonFactory = _$SignJwtOutputFromJson;
  static const toJsonFactory = _$SignJwtOutputToJson;
  Map<String, dynamic> toJson() => _$SignJwtOutputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignJwtOutput &&
            (identical(other.jwtObject, jwtObject) ||
                const DeepCollectionEquality()
                    .equals(other.jwtObject, jwtObject)) &&
            (identical(other.jwt, jwt) ||
                const DeepCollectionEquality().equals(other.jwt, jwt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jwtObject) ^
      const DeepCollectionEquality().hash(jwt) ^
      runtimeType.hashCode;
}

extension $SignJwtOutputExtension on SignJwtOutput {
  SignJwtOutput copyWith({SignedJwtObject? jwtObject, String? jwt}) {
    return SignJwtOutput(
        jwtObject: jwtObject ?? this.jwtObject, jwt: jwt ?? this.jwt);
  }

  SignJwtOutput copyWithWrapped(
      {Wrapped<SignedJwtObject>? jwtObject, Wrapped<String?>? jwt}) {
    return SignJwtOutput(
        jwtObject: (jwtObject != null ? jwtObject.value : this.jwtObject),
        jwt: (jwt != null ? jwt.value : this.jwt));
  }
}

@JsonSerializable(explicitToJson: true)
class UnsignedJwtObject {
  UnsignedJwtObject({
    required this.header,
    required this.payload,
  });

  factory UnsignedJwtObject.fromJson(Map<String, dynamic> json) =>
      _$UnsignedJwtObjectFromJson(json);

  @JsonKey(name: 'header', includeIfNull: false)
  final AnyData header;
  @JsonKey(name: 'payload', includeIfNull: false)
  final AnyData payload;
  static const fromJsonFactory = _$UnsignedJwtObjectFromJson;
  static const toJsonFactory = _$UnsignedJwtObjectToJson;
  Map<String, dynamic> toJson() => _$UnsignedJwtObjectToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnsignedJwtObject &&
            (identical(other.header, header) ||
                const DeepCollectionEquality().equals(other.header, header)) &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(header) ^
      const DeepCollectionEquality().hash(payload) ^
      runtimeType.hashCode;
}

extension $UnsignedJwtObjectExtension on UnsignedJwtObject {
  UnsignedJwtObject copyWith({AnyData? header, AnyData? payload}) {
    return UnsignedJwtObject(
        header: header ?? this.header, payload: payload ?? this.payload);
  }

  UnsignedJwtObject copyWithWrapped(
      {Wrapped<AnyData>? header, Wrapped<AnyData>? payload}) {
    return UnsignedJwtObject(
        header: (header != null ? header.value : this.header),
        payload: (payload != null ? payload.value : this.payload));
  }
}

@JsonSerializable(explicitToJson: true)
class SignJwtInput {
  SignJwtInput({
    required this.jwtObject,
    this.returnEncodedJwt,
  });

  factory SignJwtInput.fromJson(Map<String, dynamic> json) =>
      _$SignJwtInputFromJson(json);

  @JsonKey(name: 'jwtObject', includeIfNull: false)
  final UnsignedJwtObject jwtObject;
  @JsonKey(name: 'returnEncodedJwt', includeIfNull: false)
  final bool? returnEncodedJwt;
  static const fromJsonFactory = _$SignJwtInputFromJson;
  static const toJsonFactory = _$SignJwtInputToJson;
  Map<String, dynamic> toJson() => _$SignJwtInputToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignJwtInput &&
            (identical(other.jwtObject, jwtObject) ||
                const DeepCollectionEquality()
                    .equals(other.jwtObject, jwtObject)) &&
            (identical(other.returnEncodedJwt, returnEncodedJwt) ||
                const DeepCollectionEquality()
                    .equals(other.returnEncodedJwt, returnEncodedJwt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jwtObject) ^
      const DeepCollectionEquality().hash(returnEncodedJwt) ^
      runtimeType.hashCode;
}

extension $SignJwtInputExtension on SignJwtInput {
  SignJwtInput copyWith(
      {UnsignedJwtObject? jwtObject, bool? returnEncodedJwt}) {
    return SignJwtInput(
        jwtObject: jwtObject ?? this.jwtObject,
        returnEncodedJwt: returnEncodedJwt ?? this.returnEncodedJwt);
  }

  SignJwtInput copyWithWrapped(
      {Wrapped<UnsignedJwtObject>? jwtObject,
      Wrapped<bool?>? returnEncodedJwt}) {
    return SignJwtInput(
        jwtObject: (jwtObject != null ? jwtObject.value : this.jwtObject),
        returnEncodedJwt: (returnEncodedJwt != null
            ? returnEncodedJwt.value
            : this.returnEncodedJwt));
  }
}

@JsonSerializable(explicitToJson: true)
class UnsignedW3cCredential$CredentialSchema {
  UnsignedW3cCredential$CredentialSchema({
    required this.type,
    required this.id,
  });

  factory UnsignedW3cCredential$CredentialSchema.fromJson(
          Map<String, dynamic> json) =>
      _$UnsignedW3cCredential$CredentialSchemaFromJson(json);

  @JsonKey(name: 'type', includeIfNull: false)
  final String type;
  @JsonKey(name: 'id', includeIfNull: false)
  final String id;
  static const fromJsonFactory =
      _$UnsignedW3cCredential$CredentialSchemaFromJson;
  static const toJsonFactory = _$UnsignedW3cCredential$CredentialSchemaToJson;
  Map<String, dynamic> toJson() =>
      _$UnsignedW3cCredential$CredentialSchemaToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnsignedW3cCredential$CredentialSchema &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $UnsignedW3cCredential$CredentialSchemaExtension
    on UnsignedW3cCredential$CredentialSchema {
  UnsignedW3cCredential$CredentialSchema copyWith({String? type, String? id}) {
    return UnsignedW3cCredential$CredentialSchema(
        type: type ?? this.type, id: id ?? this.id);
  }

  UnsignedW3cCredential$CredentialSchema copyWithWrapped(
      {Wrapped<String>? type, Wrapped<String>? id}) {
    return UnsignedW3cCredential$CredentialSchema(
        type: (type != null ? type.value : this.type),
        id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class UnsignedW3cCredential$Proof {
  UnsignedW3cCredential$Proof({
    required this.type,
  });

  factory UnsignedW3cCredential$Proof.fromJson(Map<String, dynamic> json) =>
      _$UnsignedW3cCredential$ProofFromJson(json);

  @JsonKey(name: 'type', includeIfNull: false)
  final String type;
  static const fromJsonFactory = _$UnsignedW3cCredential$ProofFromJson;
  static const toJsonFactory = _$UnsignedW3cCredential$ProofToJson;
  Map<String, dynamic> toJson() => _$UnsignedW3cCredential$ProofToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnsignedW3cCredential$Proof &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^ runtimeType.hashCode;
}

extension $UnsignedW3cCredential$ProofExtension on UnsignedW3cCredential$Proof {
  UnsignedW3cCredential$Proof copyWith({String? type}) {
    return UnsignedW3cCredential$Proof(type: type ?? this.type);
  }

  UnsignedW3cCredential$Proof copyWithWrapped({Wrapped<String>? type}) {
    return UnsignedW3cCredential$Proof(
        type: (type != null ? type.value : this.type));
  }
}

String? keyTypesToJson(enums.KeyTypes? keyTypes) {
  return keyTypes?.value;
}

enums.KeyTypes keyTypesFromJson(
  Object? keyTypes, [
  enums.KeyTypes? defaultValue,
]) {
  return enums.KeyTypes.values.firstWhereOrNull((e) => e.value == keyTypes) ??
      defaultValue ??
      enums.KeyTypes.swaggerGeneratedUnknown;
}

List<String> keyTypesListToJson(List<enums.KeyTypes>? keyTypes) {
  if (keyTypes == null) {
    return [];
  }

  return keyTypes.map((e) => e.value!).toList();
}

List<enums.KeyTypes> keyTypesListFromJson(
  List? keyTypes, [
  List<enums.KeyTypes>? defaultValue,
]) {
  if (keyTypes == null) {
    return defaultValue ?? [];
  }

  return keyTypes.map((e) => keyTypesFromJson(e.toString())).toList();
}

List<enums.KeyTypes>? keyTypesNullableListFromJson(
  List? keyTypes, [
  List<enums.KeyTypes>? defaultValue,
]) {
  if (keyTypes == null) {
    return defaultValue;
  }

  return keyTypes.map((e) => keyTypesFromJson(e.toString())).toList();
}

String? apiDidMethodToJson(enums.ApiDidMethod? apiDidMethod) {
  return apiDidMethod?.value;
}

enums.ApiDidMethod apiDidMethodFromJson(
  Object? apiDidMethod, [
  enums.ApiDidMethod? defaultValue,
]) {
  return enums.ApiDidMethod.values
          .firstWhereOrNull((e) => e.value == apiDidMethod) ??
      defaultValue ??
      enums.ApiDidMethod.swaggerGeneratedUnknown;
}

List<String> apiDidMethodListToJson(List<enums.ApiDidMethod>? apiDidMethod) {
  if (apiDidMethod == null) {
    return [];
  }

  return apiDidMethod.map((e) => e.value!).toList();
}

List<enums.ApiDidMethod> apiDidMethodListFromJson(
  List? apiDidMethod, [
  List<enums.ApiDidMethod>? defaultValue,
]) {
  if (apiDidMethod == null) {
    return defaultValue ?? [];
  }

  return apiDidMethod.map((e) => apiDidMethodFromJson(e.toString())).toList();
}

List<enums.ApiDidMethod>? apiDidMethodNullableListFromJson(
  List? apiDidMethod, [
  List<enums.ApiDidMethod>? defaultValue,
]) {
  if (apiDidMethod == null) {
    return defaultValue;
  }

  return apiDidMethod.map((e) => apiDidMethodFromJson(e.toString())).toList();
}

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
