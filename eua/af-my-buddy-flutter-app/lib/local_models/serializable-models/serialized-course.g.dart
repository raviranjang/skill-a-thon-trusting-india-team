// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serialized-course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SerializedCourse _$SerializedCourseFromJson(Map<String, dynamic> json) =>
    SerializedCourse(
      id: json['_id'] as String?,
      courseId: json['course_id'] as String,
      providerId: json['provider_id'] as String,
      providerName: json['provider_name'] as String?,
      categoryName: json['category_name'] as String?,
      applicationId: json['application_id'] as String?,
      title: json['title'] as String,
      duration: json['duration'] as String,
      description: json['description'] as String?,
      data: json['data'] as String?,
      imageUrl: json['image_url'] as String?,
      status: json['status'] as String?,
      bppId: json['bpp_id'] as String,
      bppUri: json['bpp_uri'] as String,
      createdAt: json['created_at'] as int?,
      price: json['price'] as String?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      rating: json['rating'] as String?,
      credits: json['credits'] as String?,
      instructors: json['instructors'] as String?,
      offeringInstitue: json['offeringInstitue'] as String?,
      courseUrl: json['courseUrl'] as String?,
      enrollmentEndDate: json['enrollmentEndDate'] as String?,
      additionalFormUrl: json['additionalFormUrl'] as String?,
      userSavedItem: json['userSavedItem'],
      userAppliedItem: json['userAppliedItem'],
    );

Map<String, dynamic> _$SerializedCourseToJson(SerializedCourse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_id', instance.id);
  val['course_id'] = instance.courseId;
  writeNotNull('description', instance.description);
  val['provider_id'] = instance.providerId;
  writeNotNull('provider_name', instance.providerName);
  writeNotNull('application_id', instance.applicationId);
  writeNotNull('category_name', instance.categoryName);
  val['title'] = instance.title;
  val['duration'] = instance.duration;
  writeNotNull('data', instance.data);
  writeNotNull('image_url', instance.imageUrl);
  val['bpp_id'] = instance.bppId;
  val['bpp_uri'] = instance.bppUri;
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('price', instance.price);
  writeNotNull('startDate', instance.startDate);
  writeNotNull('endDate', instance.endDate);
  writeNotNull('rating', instance.rating);
  writeNotNull('credits', instance.credits);
  writeNotNull('instructors', instance.instructors);
  writeNotNull('offeringInstitue', instance.offeringInstitue);
  writeNotNull('courseUrl', instance.courseUrl);
  writeNotNull('enrollmentEndDate', instance.enrollmentEndDate);
  writeNotNull('additionalFormUrl', instance.additionalFormUrl);
  writeNotNull('status', instance.status);
  writeNotNull('userSavedItem', instance.userSavedItem);
  writeNotNull('userAppliedItem', instance.userAppliedItem);
  return val;
}
