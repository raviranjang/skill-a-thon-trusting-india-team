// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serialized-job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SerializedJob _$SerializedJobFromJson(Map<String, dynamic> json) =>
    SerializedJob(
      jobId: json['job_id'] as String,
      role: json['role'] as String?,
      id: json['_id'] as String?,
      providerId: json['provider_id'] as String?,
      applicationId: json['application_id'] as String?,
      company: json['company'] as String,
      city: json['city'] as String?,
      companyLogo: json['company_logo'] as String?,
      data: json['data'] as String?,
      bppId: json['bpp_id'] as String,
      bppUri: json['bpp_uri'] as String,
      createdAt: json['created_at'] as int?,
      description: json['description'] as String?,
      state: json['state'] as String?,
      userSavedItem: json['userSavedItem'],
      userAppliedItem: json['userAppliedItem'],
      status: json['status'] as String?,
      fulfillmentCategory: (json['fulfillmentCategory'] as List<dynamic>?)
              ?.map((e) =>
                  JobFulfillmentCategory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      compensation: json['compensation'] == null
          ? null
          : Job$Compensation.fromJson(
              json['compensation'] as Map<String, dynamic>),
      educationalQualifications: (json['educationalQualifications']
                  as List<dynamic>?)
              ?.map((e) =>
                  EducationalQualification.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      employmentInformation: json['employmentInformation'] == null
          ? null
          : Job$EmploymentInformation.fromJson(
              json['employmentInformation'] as Map<String, dynamic>),
      responsibilities: (json['responsibilities'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      workExperience: json['workExperience'] == null
          ? null
          : Job$WorkExperience.fromJson(
              json['workExperience'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SerializedJobToJson(SerializedJob instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('_id', instance.id);
  val['job_id'] = instance.jobId;
  writeNotNull('provider_id', instance.providerId);
  writeNotNull('application_id', instance.applicationId);
  writeNotNull('role', instance.role);
  val['company'] = instance.company;
  writeNotNull('city', instance.city);
  writeNotNull('state', instance.state);
  writeNotNull('company_logo', instance.companyLogo);
  writeNotNull('data', instance.data);
  val['bpp_id'] = instance.bppId;
  val['bpp_uri'] = instance.bppUri;
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('responsibilities', instance.responsibilities);
  writeNotNull('status', instance.status);
  writeNotNull('userSavedItem', instance.userSavedItem);
  writeNotNull('userAppliedItem', instance.userAppliedItem);
  writeNotNull('fulfillmentCategory', instance.fulfillmentCategory);
  writeNotNull('compensation', instance.compensation);
  writeNotNull('educationalQualifications', instance.educationalQualifications);
  writeNotNull('employmentInformation', instance.employmentInformation);
  writeNotNull('workExperience', instance.workExperience);
  return val;
}
