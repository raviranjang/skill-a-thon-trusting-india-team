import 'package:dsep_reference_flutter/swagger_models_apis/job_seeker_api.models.swagger.dart';
import 'package:dsep_reference_flutter/swagger_models_apis/user_management_api.models.swagger.dart';
import 'package:dsep_reference_flutter/swagger_models_apis/user_management_api.swagger.dart'
    as usermanagement;
import 'package:json_annotation/json_annotation.dart';

part 'serialized-job.g.dart';

@JsonSerializable(includeIfNull: false)
class SerializedJob extends usermanagement.Job {
  String? status;
  bool? userSavedItem;
  bool? userAppliedItem;
  List<JobFulfillmentCategory>? fulfillmentCategory;
  Job$Compensation? compensation;
  List<EducationalQualification>? educationalQualifications;
  Job$EmploymentInformation? employmentInformation;
  Job$WorkExperience? workExperience;

  SerializedJob({
    required super.jobId,
    required super.role,
    super.id,
    super.providerId,
    super.applicationId,
    required super.company,
    super.city,
    super.companyLogo,
    super.data,
    required super.bppId,
    required super.bppUri,
    super.createdAt,
    required super.description,
    super.state,
    super.userSavedItem,
    super.userAppliedItem,
    super.status,
    this.fulfillmentCategory,
    this.compensation,
    this.educationalQualifications,
    this.employmentInformation,
    super.responsibilities,
    this.workExperience,
  }) {
    this.status = status;
    this.userSavedItem = userSavedItem;
    this.userAppliedItem = userAppliedItem;
  }

  factory SerializedJob.fromJson(Map<String, dynamic> json) =>
      _$SerializedJobFromJson(json);

  Map<String, dynamic> toJson() => _$SerializedJobToJson(this);
}
