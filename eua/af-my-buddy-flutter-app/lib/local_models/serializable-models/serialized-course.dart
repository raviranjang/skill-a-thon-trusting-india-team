import 'package:dsep_reference_flutter/swagger_models_apis/user_management_api.models.swagger.dart'
    as usermanagementmodels;
import 'package:json_annotation/json_annotation.dart';
part 'serialized-course.g.dart';

@JsonSerializable(includeIfNull: false)
class SerializedCourse extends usermanagementmodels.Course {
  String? status;
  bool? userSavedItem;
  bool? userAppliedItem;
  SerializedCourse({
    super.id,
    required super.courseId,
    required super.providerId,
    required super.providerName,
    super.categoryName,
    super.applicationId,
    required super.title,
    required super.duration,
    super.description,
    super.data,
    super.imageUrl,
    super.status,
    required super.bppId,
    required super.bppUri,
    super.createdAt,
    super.price,
    super.startDate,
    super.endDate,
    super.rating,
    super.credits,
    super.instructors,
    super.offeringInstitue,
    super.courseUrl,
    super.enrollmentEndDate,
    // super.eligibility,
    // super.courseHighlights,
    // super.prerequisites,
    super.additionalFormUrl,
    super.userSavedItem,
    super.userAppliedItem,
  }) {
    this.userSavedItem = userSavedItem;
    this.userAppliedItem = userAppliedItem;
  }

  factory SerializedCourse.fromJson(Map<String, dynamic> json) =>
      _$SerializedCourseFromJson(json);

  Map<String, dynamic> toJson() => _$SerializedCourseToJson(this);
}
