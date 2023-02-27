// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

part 'user_management_api.models.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class UserProfile {
  UserProfile({
    this.id,
    required this.email,
    this.firstName,
    this.middleName,
    this.lastName,
    this.fullName,
    this.mobile,
    this.createdAt,
    this.lastModifiedAt,
    this.skills,
    this.city,
    this.title,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);

  @JsonKey(name: '_id', includeIfNull: false)
  final String? id;
  @JsonKey(name: 'email', includeIfNull: false)
  final String email;
  @JsonKey(name: 'first_name', includeIfNull: false)
  final String? firstName;
  @JsonKey(name: 'middle_name', includeIfNull: false)
  final String? middleName;
  @JsonKey(name: 'last_name', includeIfNull: false)
  final String? lastName;
  @JsonKey(name: 'full_name', includeIfNull: false)
  final String? fullName;
  @JsonKey(name: 'mobile', includeIfNull: false)
  final String? mobile;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final int? createdAt;
  @JsonKey(name: 'last_modified_at', includeIfNull: false)
  final int? lastModifiedAt;
  @JsonKey(name: 'skills', includeIfNull: false, defaultValue: <String>[])
  final List<String>? skills;
  @JsonKey(name: 'city', includeIfNull: false)
  final String? city;
  @JsonKey(name: 'title', includeIfNull: false)
  final String? title;
  static const fromJsonFactory = _$UserProfileFromJson;
  static const toJsonFactory = _$UserProfileToJson;
  Map<String, dynamic> toJson() => _$UserProfileToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserProfile &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.middleName, middleName) ||
                const DeepCollectionEquality()
                    .equals(other.middleName, middleName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.mobile, mobile) ||
                const DeepCollectionEquality().equals(other.mobile, mobile)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.lastModifiedAt, lastModifiedAt) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedAt, lastModifiedAt)) &&
            (identical(other.skills, skills) ||
                const DeepCollectionEquality().equals(other.skills, skills)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(middleName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(mobile) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(lastModifiedAt) ^
      const DeepCollectionEquality().hash(skills) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(title) ^
      runtimeType.hashCode;
}

extension $UserProfileExtension on UserProfile {
  UserProfile copyWith(
      {String? id,
      String? email,
      String? firstName,
      String? middleName,
      String? lastName,
      String? fullName,
      String? mobile,
      int? createdAt,
      int? lastModifiedAt,
      List<String>? skills,
      String? city,
      String? title}) {
    return UserProfile(
        id: id ?? this.id,
        email: email ?? this.email,
        firstName: firstName ?? this.firstName,
        middleName: middleName ?? this.middleName,
        lastName: lastName ?? this.lastName,
        fullName: fullName ?? this.fullName,
        mobile: mobile ?? this.mobile,
        createdAt: createdAt ?? this.createdAt,
        lastModifiedAt: lastModifiedAt ?? this.lastModifiedAt,
        skills: skills ?? this.skills,
        city: city ?? this.city,
        title: title ?? this.title);
  }

  UserProfile copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String>? email,
      Wrapped<String?>? firstName,
      Wrapped<String?>? middleName,
      Wrapped<String?>? lastName,
      Wrapped<String?>? fullName,
      Wrapped<String?>? mobile,
      Wrapped<int?>? createdAt,
      Wrapped<int?>? lastModifiedAt,
      Wrapped<List<String>?>? skills,
      Wrapped<String?>? city,
      Wrapped<String?>? title}) {
    return UserProfile(
        id: (id != null ? id.value : this.id),
        email: (email != null ? email.value : this.email),
        firstName: (firstName != null ? firstName.value : this.firstName),
        middleName: (middleName != null ? middleName.value : this.middleName),
        lastName: (lastName != null ? lastName.value : this.lastName),
        fullName: (fullName != null ? fullName.value : this.fullName),
        mobile: (mobile != null ? mobile.value : this.mobile),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        lastModifiedAt: (lastModifiedAt != null
            ? lastModifiedAt.value
            : this.lastModifiedAt),
        skills: (skills != null ? skills.value : this.skills),
        city: (city != null ? city.value : this.city),
        title: (title != null ? title.value : this.title));
  }
}

@JsonSerializable(explicitToJson: true)
class UserResume {
  UserResume({
    this.id,
    this.userId,
    this.document,
    this.documentType,
    this.createdAt,
    this.lastUsedAt,
    this.lastModifiedAt,
  });

  factory UserResume.fromJson(Map<String, dynamic> json) =>
      _$UserResumeFromJson(json);

  @JsonKey(name: '_id', includeIfNull: false)
  final String? id;
  @JsonKey(name: 'user_id', includeIfNull: false)
  final String? userId;
  @JsonKey(name: 'document', includeIfNull: false)
  final String? document;
  @JsonKey(name: 'document_type', includeIfNull: false)
  final String? documentType;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final int? createdAt;
  @JsonKey(name: 'last_used_at', includeIfNull: false)
  final int? lastUsedAt;
  @JsonKey(name: 'last_modified_at', includeIfNull: false)
  final int? lastModifiedAt;
  static const fromJsonFactory = _$UserResumeFromJson;
  static const toJsonFactory = _$UserResumeToJson;
  Map<String, dynamic> toJson() => _$UserResumeToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserResume &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.document, document) ||
                const DeepCollectionEquality()
                    .equals(other.document, document)) &&
            (identical(other.documentType, documentType) ||
                const DeepCollectionEquality()
                    .equals(other.documentType, documentType)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.lastUsedAt, lastUsedAt) ||
                const DeepCollectionEquality()
                    .equals(other.lastUsedAt, lastUsedAt)) &&
            (identical(other.lastModifiedAt, lastModifiedAt) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedAt, lastModifiedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(document) ^
      const DeepCollectionEquality().hash(documentType) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(lastUsedAt) ^
      const DeepCollectionEquality().hash(lastModifiedAt) ^
      runtimeType.hashCode;
}

extension $UserResumeExtension on UserResume {
  UserResume copyWith(
      {String? id,
      String? userId,
      String? document,
      String? documentType,
      int? createdAt,
      int? lastUsedAt,
      int? lastModifiedAt}) {
    return UserResume(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        document: document ?? this.document,
        documentType: documentType ?? this.documentType,
        createdAt: createdAt ?? this.createdAt,
        lastUsedAt: lastUsedAt ?? this.lastUsedAt,
        lastModifiedAt: lastModifiedAt ?? this.lastModifiedAt);
  }

  UserResume copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? userId,
      Wrapped<String?>? document,
      Wrapped<String?>? documentType,
      Wrapped<int?>? createdAt,
      Wrapped<int?>? lastUsedAt,
      Wrapped<int?>? lastModifiedAt}) {
    return UserResume(
        id: (id != null ? id.value : this.id),
        userId: (userId != null ? userId.value : this.userId),
        document: (document != null ? document.value : this.document),
        documentType:
            (documentType != null ? documentType.value : this.documentType),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        lastUsedAt: (lastUsedAt != null ? lastUsedAt.value : this.lastUsedAt),
        lastModifiedAt: (lastModifiedAt != null
            ? lastModifiedAt.value
            : this.lastModifiedAt));
  }
}

typedef UserDocument = List<Object>;

@JsonSerializable(explicitToJson: true)
class UserItems {
  UserItems({
    required this.jobs,
    required this.courses,
    this.scholarships,
    this.mentorships,
  });

  factory UserItems.fromJson(Map<String, dynamic> json) =>
      _$UserItemsFromJson(json);

  @JsonKey(name: 'jobs', includeIfNull: false)
  final UserItems$Jobs jobs;
  @JsonKey(name: 'courses', includeIfNull: false)
  final UserItems$Courses courses;
  @JsonKey(name: 'scholarships', includeIfNull: false)
  final UserItems$Scholarships? scholarships;
  @JsonKey(name: 'mentorships', includeIfNull: false)
  final UserItems$Mentorships? mentorships;
  static const fromJsonFactory = _$UserItemsFromJson;
  static const toJsonFactory = _$UserItemsToJson;
  Map<String, dynamic> toJson() => _$UserItemsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserItems &&
            (identical(other.jobs, jobs) ||
                const DeepCollectionEquality().equals(other.jobs, jobs)) &&
            (identical(other.courses, courses) ||
                const DeepCollectionEquality()
                    .equals(other.courses, courses)) &&
            (identical(other.scholarships, scholarships) ||
                const DeepCollectionEquality()
                    .equals(other.scholarships, scholarships)) &&
            (identical(other.mentorships, mentorships) ||
                const DeepCollectionEquality()
                    .equals(other.mentorships, mentorships)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobs) ^
      const DeepCollectionEquality().hash(courses) ^
      const DeepCollectionEquality().hash(scholarships) ^
      const DeepCollectionEquality().hash(mentorships) ^
      runtimeType.hashCode;
}

extension $UserItemsExtension on UserItems {
  UserItems copyWith(
      {UserItems$Jobs? jobs,
      UserItems$Courses? courses,
      UserItems$Scholarships? scholarships,
      UserItems$Mentorships? mentorships}) {
    return UserItems(
        jobs: jobs ?? this.jobs,
        courses: courses ?? this.courses,
        scholarships: scholarships ?? this.scholarships,
        mentorships: mentorships ?? this.mentorships);
  }

  UserItems copyWithWrapped(
      {Wrapped<UserItems$Jobs>? jobs,
      Wrapped<UserItems$Courses>? courses,
      Wrapped<UserItems$Scholarships?>? scholarships,
      Wrapped<UserItems$Mentorships?>? mentorships}) {
    return UserItems(
        jobs: (jobs != null ? jobs.value : this.jobs),
        courses: (courses != null ? courses.value : this.courses),
        scholarships:
            (scholarships != null ? scholarships.value : this.scholarships),
        mentorships:
            (mentorships != null ? mentorships.value : this.mentorships));
  }
}

@JsonSerializable(explicitToJson: true)
class CategoriesItem {
  CategoriesItem({
    required this.jobs,
    required this.courses,
    this.scholarships,
    this.mentorships,
  });

  factory CategoriesItem.fromJson(Map<String, dynamic> json) =>
      _$CategoriesItemFromJson(json);

  @JsonKey(name: 'jobs', includeIfNull: false, defaultValue: <Job>[])
  final List<Job> jobs;
  @JsonKey(name: 'courses', includeIfNull: false, defaultValue: <Course>[])
  final List<Course> courses;
  @JsonKey(
      name: 'scholarships', includeIfNull: false, defaultValue: <Scholarship>[])
  final List<Scholarship>? scholarships;
  @JsonKey(
      name: 'mentorships', includeIfNull: false, defaultValue: <Mentorship>[])
  final List<Mentorship>? mentorships;
  static const fromJsonFactory = _$CategoriesItemFromJson;
  static const toJsonFactory = _$CategoriesItemToJson;
  Map<String, dynamic> toJson() => _$CategoriesItemToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategoriesItem &&
            (identical(other.jobs, jobs) ||
                const DeepCollectionEquality().equals(other.jobs, jobs)) &&
            (identical(other.courses, courses) ||
                const DeepCollectionEquality()
                    .equals(other.courses, courses)) &&
            (identical(other.scholarships, scholarships) ||
                const DeepCollectionEquality()
                    .equals(other.scholarships, scholarships)) &&
            (identical(other.mentorships, mentorships) ||
                const DeepCollectionEquality()
                    .equals(other.mentorships, mentorships)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobs) ^
      const DeepCollectionEquality().hash(courses) ^
      const DeepCollectionEquality().hash(scholarships) ^
      const DeepCollectionEquality().hash(mentorships) ^
      runtimeType.hashCode;
}

extension $CategoriesItemExtension on CategoriesItem {
  CategoriesItem copyWith(
      {List<Job>? jobs,
      List<Course>? courses,
      List<Scholarship>? scholarships,
      List<Mentorship>? mentorships}) {
    return CategoriesItem(
        jobs: jobs ?? this.jobs,
        courses: courses ?? this.courses,
        scholarships: scholarships ?? this.scholarships,
        mentorships: mentorships ?? this.mentorships);
  }

  CategoriesItem copyWithWrapped(
      {Wrapped<List<Job>>? jobs,
      Wrapped<List<Course>>? courses,
      Wrapped<List<Scholarship>?>? scholarships,
      Wrapped<List<Mentorship>?>? mentorships}) {
    return CategoriesItem(
        jobs: (jobs != null ? jobs.value : this.jobs),
        courses: (courses != null ? courses.value : this.courses),
        scholarships:
            (scholarships != null ? scholarships.value : this.scholarships),
        mentorships:
            (mentorships != null ? mentorships.value : this.mentorships));
  }
}

@JsonSerializable(explicitToJson: true)
class Job {
  Job({
    this.description,
    this.id,
    required this.jobId,
    this.providerId,
    this.applicationId,
    this.role,
    required this.company,
    this.city,
    this.state,
    this.companyLogo,
    this.data,
    required this.bppId,
    required this.bppUri,
    this.createdAt,
    this.status,
    this.userSavedItem,
    this.userAppliedItem,
    this.fulfillmentCategory,
    this.educationalQualifications,
    this.workExperience,
    this.responsibilities,
    this.employmentInformation,
    this.compensation,
  });

  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);

  @JsonKey(name: 'description', includeIfNull: false)
  final String? description;
  @JsonKey(name: '_id', includeIfNull: false)
  final String? id;
  @JsonKey(name: 'job_id', includeIfNull: false)
  final String jobId;
  @JsonKey(name: 'provider_id', includeIfNull: false)
  final String? providerId;
  @JsonKey(name: 'application_id', includeIfNull: false)
  final String? applicationId;
  @JsonKey(name: 'role', includeIfNull: false)
  final String? role;
  @JsonKey(name: 'company', includeIfNull: false)
  final String company;
  @JsonKey(name: 'city', includeIfNull: false)
  final String? city;
  @JsonKey(name: 'state', includeIfNull: false)
  final String? state;
  @JsonKey(name: 'company_logo', includeIfNull: false)
  final String? companyLogo;
  @JsonKey(name: 'data', includeIfNull: false)
  final String? data;
  @JsonKey(name: 'bpp_id', includeIfNull: false)
  final String bppId;
  @JsonKey(name: 'bpp_uri', includeIfNull: false)
  final String bppUri;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final int? createdAt;
  @JsonKey(name: 'status', includeIfNull: false)
  final String? status;
  @JsonKey(name: 'userSavedItem', includeIfNull: false)
  final Object? userSavedItem;
  @JsonKey(name: 'userAppliedItem', includeIfNull: false)
  final Object? userAppliedItem;
  @JsonKey(
      name: 'fulfillmentCategory',
      includeIfNull: false,
      defaultValue: <Object>[])
  final List<Object>? fulfillmentCategory;
  @JsonKey(
      name: 'educationalQualifications',
      includeIfNull: false,
      defaultValue: <Object>[])
  final List<Object>? educationalQualifications;
  @JsonKey(name: 'workExperience', includeIfNull: false)
  final Job$WorkExperience? workExperience;
  @JsonKey(
      name: 'responsibilities', includeIfNull: false, defaultValue: <String>[])
  final List<String>? responsibilities;
  @JsonKey(name: 'employmentInformation', includeIfNull: false)
  final Job$EmploymentInformation? employmentInformation;
  @JsonKey(name: 'compensation', includeIfNull: false)
  final Job$Compensation? compensation;
  static const fromJsonFactory = _$JobFromJson;
  static const toJsonFactory = _$JobToJson;
  Map<String, dynamic> toJson() => _$JobToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Job &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.jobId, jobId) ||
                const DeepCollectionEquality().equals(other.jobId, jobId)) &&
            (identical(other.providerId, providerId) ||
                const DeepCollectionEquality()
                    .equals(other.providerId, providerId)) &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.company, company) ||
                const DeepCollectionEquality()
                    .equals(other.company, company)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.companyLogo, companyLogo) ||
                const DeepCollectionEquality()
                    .equals(other.companyLogo, companyLogo)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.bppId, bppId) ||
                const DeepCollectionEquality().equals(other.bppId, bppId)) &&
            (identical(other.bppUri, bppUri) ||
                const DeepCollectionEquality().equals(other.bppUri, bppUri)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.userSavedItem, userSavedItem) ||
                const DeepCollectionEquality()
                    .equals(other.userSavedItem, userSavedItem)) &&
            (identical(other.userAppliedItem, userAppliedItem) ||
                const DeepCollectionEquality()
                    .equals(other.userAppliedItem, userAppliedItem)) &&
            (identical(other.fulfillmentCategory, fulfillmentCategory) ||
                const DeepCollectionEquality()
                    .equals(other.fulfillmentCategory, fulfillmentCategory)) &&
            (identical(other.educationalQualifications,
                    educationalQualifications) ||
                const DeepCollectionEquality().equals(
                    other.educationalQualifications,
                    educationalQualifications)) &&
            (identical(other.workExperience, workExperience) ||
                const DeepCollectionEquality()
                    .equals(other.workExperience, workExperience)) &&
            (identical(other.responsibilities, responsibilities) ||
                const DeepCollectionEquality()
                    .equals(other.responsibilities, responsibilities)) &&
            (identical(other.employmentInformation, employmentInformation) ||
                const DeepCollectionEquality().equals(
                    other.employmentInformation, employmentInformation)) &&
            (identical(other.compensation, compensation) ||
                const DeepCollectionEquality()
                    .equals(other.compensation, compensation)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(jobId) ^
      const DeepCollectionEquality().hash(providerId) ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(company) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(companyLogo) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(bppId) ^
      const DeepCollectionEquality().hash(bppUri) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(userSavedItem) ^
      const DeepCollectionEquality().hash(userAppliedItem) ^
      const DeepCollectionEquality().hash(fulfillmentCategory) ^
      const DeepCollectionEquality().hash(educationalQualifications) ^
      const DeepCollectionEquality().hash(workExperience) ^
      const DeepCollectionEquality().hash(responsibilities) ^
      const DeepCollectionEquality().hash(employmentInformation) ^
      const DeepCollectionEquality().hash(compensation) ^
      runtimeType.hashCode;
}

extension $JobExtension on Job {
  Job copyWith(
      {String? description,
      String? id,
      String? jobId,
      String? providerId,
      String? applicationId,
      String? role,
      String? company,
      String? city,
      String? state,
      String? companyLogo,
      String? data,
      String? bppId,
      String? bppUri,
      int? createdAt,
      String? status,
      Object? userSavedItem,
      Object? userAppliedItem,
      List<Object>? fulfillmentCategory,
      List<Object>? educationalQualifications,
      Job$WorkExperience? workExperience,
      List<String>? responsibilities,
      Job$EmploymentInformation? employmentInformation,
      Job$Compensation? compensation}) {
    return Job(
        description: description ?? this.description,
        id: id ?? this.id,
        jobId: jobId ?? this.jobId,
        providerId: providerId ?? this.providerId,
        applicationId: applicationId ?? this.applicationId,
        role: role ?? this.role,
        company: company ?? this.company,
        city: city ?? this.city,
        state: state ?? this.state,
        companyLogo: companyLogo ?? this.companyLogo,
        data: data ?? this.data,
        bppId: bppId ?? this.bppId,
        bppUri: bppUri ?? this.bppUri,
        createdAt: createdAt ?? this.createdAt,
        status: status ?? this.status,
        userSavedItem: userSavedItem ?? this.userSavedItem,
        userAppliedItem: userAppliedItem ?? this.userAppliedItem,
        fulfillmentCategory: fulfillmentCategory ?? this.fulfillmentCategory,
        educationalQualifications:
            educationalQualifications ?? this.educationalQualifications,
        workExperience: workExperience ?? this.workExperience,
        responsibilities: responsibilities ?? this.responsibilities,
        employmentInformation:
            employmentInformation ?? this.employmentInformation,
        compensation: compensation ?? this.compensation);
  }

  Job copyWithWrapped(
      {Wrapped<String?>? description,
      Wrapped<String?>? id,
      Wrapped<String>? jobId,
      Wrapped<String?>? providerId,
      Wrapped<String?>? applicationId,
      Wrapped<String?>? role,
      Wrapped<String>? company,
      Wrapped<String?>? city,
      Wrapped<String?>? state,
      Wrapped<String?>? companyLogo,
      Wrapped<String?>? data,
      Wrapped<String>? bppId,
      Wrapped<String>? bppUri,
      Wrapped<int?>? createdAt,
      Wrapped<String?>? status,
      Wrapped<Object?>? userSavedItem,
      Wrapped<Object?>? userAppliedItem,
      Wrapped<List<Object>?>? fulfillmentCategory,
      Wrapped<List<Object>?>? educationalQualifications,
      Wrapped<Job$WorkExperience?>? workExperience,
      Wrapped<List<String>?>? responsibilities,
      Wrapped<Job$EmploymentInformation?>? employmentInformation,
      Wrapped<Job$Compensation?>? compensation}) {
    return Job(
        description:
            (description != null ? description.value : this.description),
        id: (id != null ? id.value : this.id),
        jobId: (jobId != null ? jobId.value : this.jobId),
        providerId: (providerId != null ? providerId.value : this.providerId),
        applicationId:
            (applicationId != null ? applicationId.value : this.applicationId),
        role: (role != null ? role.value : this.role),
        company: (company != null ? company.value : this.company),
        city: (city != null ? city.value : this.city),
        state: (state != null ? state.value : this.state),
        companyLogo:
            (companyLogo != null ? companyLogo.value : this.companyLogo),
        data: (data != null ? data.value : this.data),
        bppId: (bppId != null ? bppId.value : this.bppId),
        bppUri: (bppUri != null ? bppUri.value : this.bppUri),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        status: (status != null ? status.value : this.status),
        userSavedItem:
            (userSavedItem != null ? userSavedItem.value : this.userSavedItem),
        userAppliedItem: (userAppliedItem != null
            ? userAppliedItem.value
            : this.userAppliedItem),
        fulfillmentCategory: (fulfillmentCategory != null
            ? fulfillmentCategory.value
            : this.fulfillmentCategory),
        educationalQualifications: (educationalQualifications != null
            ? educationalQualifications.value
            : this.educationalQualifications),
        workExperience: (workExperience != null
            ? workExperience.value
            : this.workExperience),
        responsibilities: (responsibilities != null
            ? responsibilities.value
            : this.responsibilities),
        employmentInformation: (employmentInformation != null
            ? employmentInformation.value
            : this.employmentInformation),
        compensation:
            (compensation != null ? compensation.value : this.compensation));
  }
}

@JsonSerializable(explicitToJson: true)
class Course {
  Course({
    this.id,
    required this.courseId,
    this.description,
    required this.providerId,
    this.providerName,
    this.applicationId,
    this.transactionId,
    this.categoryName,
    required this.title,
    required this.duration,
    this.data,
    this.imageUrl,
    this.status,
    this.userSavedItem,
    this.userAppliedItem,
    required this.bppId,
    required this.bppUri,
    this.createdAt,
    this.price,
    this.startDate,
    this.endDate,
    this.rating,
    this.credits,
    this.instructors,
    this.offeringInstitue,
    this.courseUrl,
    this.enrollmentEndDate,
    this.eligibility,
    this.courseHighlights,
    this.prerequisites,
    this.additionalFormUrl,
  });

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);

  @JsonKey(name: '_id', includeIfNull: false)
  final String? id;
  @JsonKey(name: 'course_id', includeIfNull: false)
  final String courseId;
  @JsonKey(name: 'description', includeIfNull: false)
  final String? description;
  @JsonKey(name: 'provider_id', includeIfNull: false)
  final String providerId;
  @JsonKey(name: 'provider_name', includeIfNull: false)
  final String? providerName;
  @JsonKey(name: 'application_id', includeIfNull: false)
  final String? applicationId;
  @JsonKey(name: 'transaction_id', includeIfNull: false)
  final String? transactionId;
  @JsonKey(name: 'category_name', includeIfNull: false)
  final String? categoryName;
  @JsonKey(name: 'title', includeIfNull: false)
  final String title;
  @JsonKey(name: 'duration', includeIfNull: false)
  final String duration;
  @JsonKey(name: 'data', includeIfNull: false)
  final String? data;
  @JsonKey(name: 'image_url', includeIfNull: false)
  final String? imageUrl;
  @JsonKey(name: 'status', includeIfNull: false)
  final String? status;
  @JsonKey(name: 'userSavedItem', includeIfNull: false)
  final Object? userSavedItem;
  @JsonKey(name: 'userAppliedItem', includeIfNull: false)
  final Object? userAppliedItem;
  @JsonKey(name: 'bpp_id', includeIfNull: false)
  final String bppId;
  @JsonKey(name: 'bpp_uri', includeIfNull: false)
  final String bppUri;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final int? createdAt;
  @JsonKey(name: 'price', includeIfNull: false)
  final String? price;
  @JsonKey(name: 'startDate', includeIfNull: false)
  final String? startDate;
  @JsonKey(name: 'endDate', includeIfNull: false)
  final String? endDate;
  @JsonKey(name: 'rating', includeIfNull: false)
  final String? rating;
  @JsonKey(name: 'credits', includeIfNull: false)
  final String? credits;
  @JsonKey(name: 'instructors', includeIfNull: false)
  final String? instructors;
  @JsonKey(name: 'offeringInstitue', includeIfNull: false)
  final String? offeringInstitue;
  @JsonKey(name: 'courseUrl', includeIfNull: false)
  final String? courseUrl;
  @JsonKey(name: 'enrollmentEndDate', includeIfNull: false)
  final String? enrollmentEndDate;
  @JsonKey(
      name: 'eligibility',
      includeIfNull: false,
      defaultValue: <Course$Eligibility>[])
  final List<Course$Eligibility>? eligibility;
  @JsonKey(
      name: 'courseHighlights',
      includeIfNull: false,
      defaultValue: <Course$CourseHighlights>[])
  final List<Course$CourseHighlights>? courseHighlights;
  @JsonKey(
      name: 'prerequisites',
      includeIfNull: false,
      defaultValue: <Course$Prerequisites>[])
  final List<Course$Prerequisites>? prerequisites;
  @JsonKey(name: 'additionalFormUrl', includeIfNull: false)
  final String? additionalFormUrl;
  static const fromJsonFactory = _$CourseFromJson;
  static const toJsonFactory = _$CourseToJson;
  Map<String, dynamic> toJson() => _$CourseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Course &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.courseId, courseId) ||
                const DeepCollectionEquality()
                    .equals(other.courseId, courseId)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.providerId, providerId) ||
                const DeepCollectionEquality()
                    .equals(other.providerId, providerId)) &&
            (identical(other.providerName, providerName) ||
                const DeepCollectionEquality()
                    .equals(other.providerName, providerName)) &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.transactionId, transactionId) ||
                const DeepCollectionEquality()
                    .equals(other.transactionId, transactionId)) &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality()
                    .equals(other.categoryName, categoryName)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.userSavedItem, userSavedItem) ||
                const DeepCollectionEquality()
                    .equals(other.userSavedItem, userSavedItem)) &&
            (identical(other.userAppliedItem, userAppliedItem) ||
                const DeepCollectionEquality()
                    .equals(other.userAppliedItem, userAppliedItem)) &&
            (identical(other.bppId, bppId) ||
                const DeepCollectionEquality().equals(other.bppId, bppId)) &&
            (identical(other.bppUri, bppUri) ||
                const DeepCollectionEquality().equals(other.bppUri, bppUri)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.credits, credits) ||
                const DeepCollectionEquality()
                    .equals(other.credits, credits)) &&
            (identical(other.instructors, instructors) ||
                const DeepCollectionEquality()
                    .equals(other.instructors, instructors)) &&
            (identical(other.offeringInstitue, offeringInstitue) ||
                const DeepCollectionEquality()
                    .equals(other.offeringInstitue, offeringInstitue)) &&
            (identical(other.courseUrl, courseUrl) ||
                const DeepCollectionEquality().equals(other.courseUrl, courseUrl)) &&
            (identical(other.enrollmentEndDate, enrollmentEndDate) || const DeepCollectionEquality().equals(other.enrollmentEndDate, enrollmentEndDate)) &&
            (identical(other.eligibility, eligibility) || const DeepCollectionEquality().equals(other.eligibility, eligibility)) &&
            (identical(other.courseHighlights, courseHighlights) || const DeepCollectionEquality().equals(other.courseHighlights, courseHighlights)) &&
            (identical(other.prerequisites, prerequisites) || const DeepCollectionEquality().equals(other.prerequisites, prerequisites)) &&
            (identical(other.additionalFormUrl, additionalFormUrl) || const DeepCollectionEquality().equals(other.additionalFormUrl, additionalFormUrl)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(courseId) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(providerId) ^
      const DeepCollectionEquality().hash(providerName) ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(transactionId) ^
      const DeepCollectionEquality().hash(categoryName) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(userSavedItem) ^
      const DeepCollectionEquality().hash(userAppliedItem) ^
      const DeepCollectionEquality().hash(bppId) ^
      const DeepCollectionEquality().hash(bppUri) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(credits) ^
      const DeepCollectionEquality().hash(instructors) ^
      const DeepCollectionEquality().hash(offeringInstitue) ^
      const DeepCollectionEquality().hash(courseUrl) ^
      const DeepCollectionEquality().hash(enrollmentEndDate) ^
      const DeepCollectionEquality().hash(eligibility) ^
      const DeepCollectionEquality().hash(courseHighlights) ^
      const DeepCollectionEquality().hash(prerequisites) ^
      const DeepCollectionEquality().hash(additionalFormUrl) ^
      runtimeType.hashCode;
}

extension $CourseExtension on Course {
  Course copyWith(
      {String? id,
      String? courseId,
      String? description,
      String? providerId,
      String? providerName,
      String? applicationId,
      String? transactionId,
      String? categoryName,
      String? title,
      String? duration,
      String? data,
      String? imageUrl,
      String? status,
      Object? userSavedItem,
      Object? userAppliedItem,
      String? bppId,
      String? bppUri,
      int? createdAt,
      String? price,
      String? startDate,
      String? endDate,
      String? rating,
      String? credits,
      String? instructors,
      String? offeringInstitue,
      String? courseUrl,
      String? enrollmentEndDate,
      List<Course$Eligibility>? eligibility,
      List<Course$CourseHighlights>? courseHighlights,
      List<Course$Prerequisites>? prerequisites,
      String? additionalFormUrl}) {
    return Course(
        id: id ?? this.id,
        courseId: courseId ?? this.courseId,
        description: description ?? this.description,
        providerId: providerId ?? this.providerId,
        providerName: providerName ?? this.providerName,
        applicationId: applicationId ?? this.applicationId,
        transactionId: transactionId ?? this.transactionId,
        categoryName: categoryName ?? this.categoryName,
        title: title ?? this.title,
        duration: duration ?? this.duration,
        data: data ?? this.data,
        imageUrl: imageUrl ?? this.imageUrl,
        status: status ?? this.status,
        userSavedItem: userSavedItem ?? this.userSavedItem,
        userAppliedItem: userAppliedItem ?? this.userAppliedItem,
        bppId: bppId ?? this.bppId,
        bppUri: bppUri ?? this.bppUri,
        createdAt: createdAt ?? this.createdAt,
        price: price ?? this.price,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        rating: rating ?? this.rating,
        credits: credits ?? this.credits,
        instructors: instructors ?? this.instructors,
        offeringInstitue: offeringInstitue ?? this.offeringInstitue,
        courseUrl: courseUrl ?? this.courseUrl,
        enrollmentEndDate: enrollmentEndDate ?? this.enrollmentEndDate,
        eligibility: eligibility ?? this.eligibility,
        courseHighlights: courseHighlights ?? this.courseHighlights,
        prerequisites: prerequisites ?? this.prerequisites,
        additionalFormUrl: additionalFormUrl ?? this.additionalFormUrl);
  }

  Course copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String>? courseId,
      Wrapped<String?>? description,
      Wrapped<String>? providerId,
      Wrapped<String?>? providerName,
      Wrapped<String?>? applicationId,
      Wrapped<String?>? transactionId,
      Wrapped<String?>? categoryName,
      Wrapped<String>? title,
      Wrapped<String>? duration,
      Wrapped<String?>? data,
      Wrapped<String?>? imageUrl,
      Wrapped<String?>? status,
      Wrapped<Object?>? userSavedItem,
      Wrapped<Object?>? userAppliedItem,
      Wrapped<String>? bppId,
      Wrapped<String>? bppUri,
      Wrapped<int?>? createdAt,
      Wrapped<String?>? price,
      Wrapped<String?>? startDate,
      Wrapped<String?>? endDate,
      Wrapped<String?>? rating,
      Wrapped<String?>? credits,
      Wrapped<String?>? instructors,
      Wrapped<String?>? offeringInstitue,
      Wrapped<String?>? courseUrl,
      Wrapped<String?>? enrollmentEndDate,
      Wrapped<List<Course$Eligibility>?>? eligibility,
      Wrapped<List<Course$CourseHighlights>?>? courseHighlights,
      Wrapped<List<Course$Prerequisites>?>? prerequisites,
      Wrapped<String?>? additionalFormUrl}) {
    return Course(
        id: (id != null ? id.value : this.id),
        courseId: (courseId != null ? courseId.value : this.courseId),
        description:
            (description != null ? description.value : this.description),
        providerId: (providerId != null ? providerId.value : this.providerId),
        providerName:
            (providerName != null ? providerName.value : this.providerName),
        applicationId:
            (applicationId != null ? applicationId.value : this.applicationId),
        transactionId:
            (transactionId != null ? transactionId.value : this.transactionId),
        categoryName:
            (categoryName != null ? categoryName.value : this.categoryName),
        title: (title != null ? title.value : this.title),
        duration: (duration != null ? duration.value : this.duration),
        data: (data != null ? data.value : this.data),
        imageUrl: (imageUrl != null ? imageUrl.value : this.imageUrl),
        status: (status != null ? status.value : this.status),
        userSavedItem:
            (userSavedItem != null ? userSavedItem.value : this.userSavedItem),
        userAppliedItem: (userAppliedItem != null
            ? userAppliedItem.value
            : this.userAppliedItem),
        bppId: (bppId != null ? bppId.value : this.bppId),
        bppUri: (bppUri != null ? bppUri.value : this.bppUri),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        price: (price != null ? price.value : this.price),
        startDate: (startDate != null ? startDate.value : this.startDate),
        endDate: (endDate != null ? endDate.value : this.endDate),
        rating: (rating != null ? rating.value : this.rating),
        credits: (credits != null ? credits.value : this.credits),
        instructors:
            (instructors != null ? instructors.value : this.instructors),
        offeringInstitue: (offeringInstitue != null
            ? offeringInstitue.value
            : this.offeringInstitue),
        courseUrl: (courseUrl != null ? courseUrl.value : this.courseUrl),
        enrollmentEndDate: (enrollmentEndDate != null
            ? enrollmentEndDate.value
            : this.enrollmentEndDate),
        eligibility:
            (eligibility != null ? eligibility.value : this.eligibility),
        courseHighlights: (courseHighlights != null
            ? courseHighlights.value
            : this.courseHighlights),
        prerequisites:
            (prerequisites != null ? prerequisites.value : this.prerequisites),
        additionalFormUrl: (additionalFormUrl != null
            ? additionalFormUrl.value
            : this.additionalFormUrl));
  }
}

@JsonSerializable(explicitToJson: true)
class Scholarship {
  Scholarship({
    this.id,
    required this.scholarshipId,
    required this.providerId,
    required this.fulfillmentId,
    this.applicationId,
    required this.title,
    required this.category,
    required this.data,
    required this.bppId,
    required this.bppUri,
    this.createdAt,
  });

  factory Scholarship.fromJson(Map<String, dynamic> json) =>
      _$ScholarshipFromJson(json);

  @JsonKey(name: '_id', includeIfNull: false)
  final String? id;
  @JsonKey(name: 'scholarship_id', includeIfNull: false)
  final String scholarshipId;
  @JsonKey(name: 'provider_id', includeIfNull: false)
  final String providerId;
  @JsonKey(name: 'fulfillment_id', includeIfNull: false)
  final String fulfillmentId;
  @JsonKey(name: 'application_id', includeIfNull: false)
  final String? applicationId;
  @JsonKey(name: 'title', includeIfNull: false)
  final String title;
  @JsonKey(name: 'category', includeIfNull: false)
  final String category;
  @JsonKey(name: 'data', includeIfNull: false)
  final String data;
  @JsonKey(name: 'bpp_id', includeIfNull: false)
  final String bppId;
  @JsonKey(name: 'bpp_uri', includeIfNull: false)
  final String bppUri;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final int? createdAt;
  static const fromJsonFactory = _$ScholarshipFromJson;
  static const toJsonFactory = _$ScholarshipToJson;
  Map<String, dynamic> toJson() => _$ScholarshipToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Scholarship &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.scholarshipId, scholarshipId) ||
                const DeepCollectionEquality()
                    .equals(other.scholarshipId, scholarshipId)) &&
            (identical(other.providerId, providerId) ||
                const DeepCollectionEquality()
                    .equals(other.providerId, providerId)) &&
            (identical(other.fulfillmentId, fulfillmentId) ||
                const DeepCollectionEquality()
                    .equals(other.fulfillmentId, fulfillmentId)) &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.bppId, bppId) ||
                const DeepCollectionEquality().equals(other.bppId, bppId)) &&
            (identical(other.bppUri, bppUri) ||
                const DeepCollectionEquality().equals(other.bppUri, bppUri)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(scholarshipId) ^
      const DeepCollectionEquality().hash(providerId) ^
      const DeepCollectionEquality().hash(fulfillmentId) ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(bppId) ^
      const DeepCollectionEquality().hash(bppUri) ^
      const DeepCollectionEquality().hash(createdAt) ^
      runtimeType.hashCode;
}

extension $ScholarshipExtension on Scholarship {
  Scholarship copyWith(
      {String? id,
      String? scholarshipId,
      String? providerId,
      String? fulfillmentId,
      String? applicationId,
      String? title,
      String? category,
      String? data,
      String? bppId,
      String? bppUri,
      int? createdAt}) {
    return Scholarship(
        id: id ?? this.id,
        scholarshipId: scholarshipId ?? this.scholarshipId,
        providerId: providerId ?? this.providerId,
        fulfillmentId: fulfillmentId ?? this.fulfillmentId,
        applicationId: applicationId ?? this.applicationId,
        title: title ?? this.title,
        category: category ?? this.category,
        data: data ?? this.data,
        bppId: bppId ?? this.bppId,
        bppUri: bppUri ?? this.bppUri,
        createdAt: createdAt ?? this.createdAt);
  }

  Scholarship copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String>? scholarshipId,
      Wrapped<String>? providerId,
      Wrapped<String>? fulfillmentId,
      Wrapped<String?>? applicationId,
      Wrapped<String>? title,
      Wrapped<String>? category,
      Wrapped<String>? data,
      Wrapped<String>? bppId,
      Wrapped<String>? bppUri,
      Wrapped<int?>? createdAt}) {
    return Scholarship(
        id: (id != null ? id.value : this.id),
        scholarshipId:
            (scholarshipId != null ? scholarshipId.value : this.scholarshipId),
        providerId: (providerId != null ? providerId.value : this.providerId),
        fulfillmentId:
            (fulfillmentId != null ? fulfillmentId.value : this.fulfillmentId),
        applicationId:
            (applicationId != null ? applicationId.value : this.applicationId),
        title: (title != null ? title.value : this.title),
        category: (category != null ? category.value : this.category),
        data: (data != null ? data.value : this.data),
        bppId: (bppId != null ? bppId.value : this.bppId),
        bppUri: (bppUri != null ? bppUri.value : this.bppUri),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt));
  }
}

@JsonSerializable(explicitToJson: true)
class Mentorship {
  Mentorship({
    this.id,
    required this.mentorshipId,
    required this.providerId,
    this.applicationId,
    required this.mentor,
    required this.mentorRating,
    required this.mentorshipTitle,
    required this.data,
    required this.bppId,
    required this.bppUri,
    this.createdAt,
  });

  factory Mentorship.fromJson(Map<String, dynamic> json) =>
      _$MentorshipFromJson(json);

  @JsonKey(name: '_id', includeIfNull: false)
  final String? id;
  @JsonKey(name: 'mentorship_id', includeIfNull: false)
  final String mentorshipId;
  @JsonKey(name: 'provider_id', includeIfNull: false)
  final String providerId;
  @JsonKey(name: 'application_id', includeIfNull: false)
  final String? applicationId;
  @JsonKey(name: 'mentor', includeIfNull: false)
  final String mentor;
  @JsonKey(name: 'mentorRating', includeIfNull: false)
  final String mentorRating;
  @JsonKey(name: 'mentorshipTitle', includeIfNull: false)
  final String mentorshipTitle;
  @JsonKey(name: 'data', includeIfNull: false)
  final String data;
  @JsonKey(name: 'bpp_id', includeIfNull: false)
  final String bppId;
  @JsonKey(name: 'bpp_uri', includeIfNull: false)
  final String bppUri;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final int? createdAt;
  static const fromJsonFactory = _$MentorshipFromJson;
  static const toJsonFactory = _$MentorshipToJson;
  Map<String, dynamic> toJson() => _$MentorshipToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Mentorship &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.mentorshipId, mentorshipId) ||
                const DeepCollectionEquality()
                    .equals(other.mentorshipId, mentorshipId)) &&
            (identical(other.providerId, providerId) ||
                const DeepCollectionEquality()
                    .equals(other.providerId, providerId)) &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.mentor, mentor) ||
                const DeepCollectionEquality().equals(other.mentor, mentor)) &&
            (identical(other.mentorRating, mentorRating) ||
                const DeepCollectionEquality()
                    .equals(other.mentorRating, mentorRating)) &&
            (identical(other.mentorshipTitle, mentorshipTitle) ||
                const DeepCollectionEquality()
                    .equals(other.mentorshipTitle, mentorshipTitle)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.bppId, bppId) ||
                const DeepCollectionEquality().equals(other.bppId, bppId)) &&
            (identical(other.bppUri, bppUri) ||
                const DeepCollectionEquality().equals(other.bppUri, bppUri)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(mentorshipId) ^
      const DeepCollectionEquality().hash(providerId) ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(mentor) ^
      const DeepCollectionEquality().hash(mentorRating) ^
      const DeepCollectionEquality().hash(mentorshipTitle) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(bppId) ^
      const DeepCollectionEquality().hash(bppUri) ^
      const DeepCollectionEquality().hash(createdAt) ^
      runtimeType.hashCode;
}

extension $MentorshipExtension on Mentorship {
  Mentorship copyWith(
      {String? id,
      String? mentorshipId,
      String? providerId,
      String? applicationId,
      String? mentor,
      String? mentorRating,
      String? mentorshipTitle,
      String? data,
      String? bppId,
      String? bppUri,
      int? createdAt}) {
    return Mentorship(
        id: id ?? this.id,
        mentorshipId: mentorshipId ?? this.mentorshipId,
        providerId: providerId ?? this.providerId,
        applicationId: applicationId ?? this.applicationId,
        mentor: mentor ?? this.mentor,
        mentorRating: mentorRating ?? this.mentorRating,
        mentorshipTitle: mentorshipTitle ?? this.mentorshipTitle,
        data: data ?? this.data,
        bppId: bppId ?? this.bppId,
        bppUri: bppUri ?? this.bppUri,
        createdAt: createdAt ?? this.createdAt);
  }

  Mentorship copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String>? mentorshipId,
      Wrapped<String>? providerId,
      Wrapped<String?>? applicationId,
      Wrapped<String>? mentor,
      Wrapped<String>? mentorRating,
      Wrapped<String>? mentorshipTitle,
      Wrapped<String>? data,
      Wrapped<String>? bppId,
      Wrapped<String>? bppUri,
      Wrapped<int?>? createdAt}) {
    return Mentorship(
        id: (id != null ? id.value : this.id),
        mentorshipId:
            (mentorshipId != null ? mentorshipId.value : this.mentorshipId),
        providerId: (providerId != null ? providerId.value : this.providerId),
        applicationId:
            (applicationId != null ? applicationId.value : this.applicationId),
        mentor: (mentor != null ? mentor.value : this.mentor),
        mentorRating:
            (mentorRating != null ? mentorRating.value : this.mentorRating),
        mentorshipTitle: (mentorshipTitle != null
            ? mentorshipTitle.value
            : this.mentorshipTitle),
        data: (data != null ? data.value : this.data),
        bppId: (bppId != null ? bppId.value : this.bppId),
        bppUri: (bppUri != null ? bppUri.value : this.bppUri),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt));
  }
}

@JsonSerializable(explicitToJson: true)
class Error {
  Error({
    this.type,
    this.code,
    this.path,
    required this.message,
  });

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);

  @JsonKey(name: 'type', includeIfNull: false)
  final String? type;
  @JsonKey(name: 'code', includeIfNull: false)
  final String? code;
  @JsonKey(name: 'path', includeIfNull: false)
  final String? path;
  @JsonKey(name: 'message', includeIfNull: false)
  final String message;
  static const fromJsonFactory = _$ErrorFromJson;
  static const toJsonFactory = _$ErrorToJson;
  Map<String, dynamic> toJson() => _$ErrorToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $ErrorExtension on Error {
  Error copyWith({String? type, String? code, String? path, String? message}) {
    return Error(
        type: type ?? this.type,
        code: code ?? this.code,
        path: path ?? this.path,
        message: message ?? this.message);
  }

  Error copyWithWrapped(
      {Wrapped<String?>? type,
      Wrapped<String?>? code,
      Wrapped<String?>? path,
      Wrapped<String>? message}) {
    return Error(
        type: (type != null ? type.value : this.type),
        code: (code != null ? code.value : this.code),
        path: (path != null ? path.value : this.path),
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class UserItems$Jobs {
  UserItems$Jobs({
    this.saved,
    this.applied,
  });

  factory UserItems$Jobs.fromJson(Map<String, dynamic> json) =>
      _$UserItems$JobsFromJson(json);

  @JsonKey(name: 'saved', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? saved;
  @JsonKey(name: 'applied', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? applied;
  static const fromJsonFactory = _$UserItems$JobsFromJson;
  static const toJsonFactory = _$UserItems$JobsToJson;
  Map<String, dynamic> toJson() => _$UserItems$JobsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserItems$Jobs &&
            (identical(other.saved, saved) ||
                const DeepCollectionEquality().equals(other.saved, saved)) &&
            (identical(other.applied, applied) ||
                const DeepCollectionEquality().equals(other.applied, applied)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(saved) ^
      const DeepCollectionEquality().hash(applied) ^
      runtimeType.hashCode;
}

extension $UserItems$JobsExtension on UserItems$Jobs {
  UserItems$Jobs copyWith({List<Object>? saved, List<Object>? applied}) {
    return UserItems$Jobs(
        saved: saved ?? this.saved, applied: applied ?? this.applied);
  }

  UserItems$Jobs copyWithWrapped(
      {Wrapped<List<Object>?>? saved, Wrapped<List<Object>?>? applied}) {
    return UserItems$Jobs(
        saved: (saved != null ? saved.value : this.saved),
        applied: (applied != null ? applied.value : this.applied));
  }
}

@JsonSerializable(explicitToJson: true)
class UserItems$Courses {
  UserItems$Courses({
    this.saved,
    this.applied,
  });

  factory UserItems$Courses.fromJson(Map<String, dynamic> json) =>
      _$UserItems$CoursesFromJson(json);

  @JsonKey(name: 'saved', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? saved;
  @JsonKey(name: 'applied', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? applied;
  static const fromJsonFactory = _$UserItems$CoursesFromJson;
  static const toJsonFactory = _$UserItems$CoursesToJson;
  Map<String, dynamic> toJson() => _$UserItems$CoursesToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserItems$Courses &&
            (identical(other.saved, saved) ||
                const DeepCollectionEquality().equals(other.saved, saved)) &&
            (identical(other.applied, applied) ||
                const DeepCollectionEquality().equals(other.applied, applied)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(saved) ^
      const DeepCollectionEquality().hash(applied) ^
      runtimeType.hashCode;
}

extension $UserItems$CoursesExtension on UserItems$Courses {
  UserItems$Courses copyWith({List<Object>? saved, List<Object>? applied}) {
    return UserItems$Courses(
        saved: saved ?? this.saved, applied: applied ?? this.applied);
  }

  UserItems$Courses copyWithWrapped(
      {Wrapped<List<Object>?>? saved, Wrapped<List<Object>?>? applied}) {
    return UserItems$Courses(
        saved: (saved != null ? saved.value : this.saved),
        applied: (applied != null ? applied.value : this.applied));
  }
}

@JsonSerializable(explicitToJson: true)
class UserItems$Scholarships {
  UserItems$Scholarships({
    this.saved,
    this.applied,
  });

  factory UserItems$Scholarships.fromJson(Map<String, dynamic> json) =>
      _$UserItems$ScholarshipsFromJson(json);

  @JsonKey(name: 'saved', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? saved;
  @JsonKey(name: 'applied', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? applied;
  static const fromJsonFactory = _$UserItems$ScholarshipsFromJson;
  static const toJsonFactory = _$UserItems$ScholarshipsToJson;
  Map<String, dynamic> toJson() => _$UserItems$ScholarshipsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserItems$Scholarships &&
            (identical(other.saved, saved) ||
                const DeepCollectionEquality().equals(other.saved, saved)) &&
            (identical(other.applied, applied) ||
                const DeepCollectionEquality().equals(other.applied, applied)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(saved) ^
      const DeepCollectionEquality().hash(applied) ^
      runtimeType.hashCode;
}

extension $UserItems$ScholarshipsExtension on UserItems$Scholarships {
  UserItems$Scholarships copyWith(
      {List<Object>? saved, List<Object>? applied}) {
    return UserItems$Scholarships(
        saved: saved ?? this.saved, applied: applied ?? this.applied);
  }

  UserItems$Scholarships copyWithWrapped(
      {Wrapped<List<Object>?>? saved, Wrapped<List<Object>?>? applied}) {
    return UserItems$Scholarships(
        saved: (saved != null ? saved.value : this.saved),
        applied: (applied != null ? applied.value : this.applied));
  }
}

@JsonSerializable(explicitToJson: true)
class UserItems$Mentorships {
  UserItems$Mentorships({
    this.saved,
    this.applied,
  });

  factory UserItems$Mentorships.fromJson(Map<String, dynamic> json) =>
      _$UserItems$MentorshipsFromJson(json);

  @JsonKey(name: 'saved', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? saved;
  @JsonKey(name: 'applied', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? applied;
  static const fromJsonFactory = _$UserItems$MentorshipsFromJson;
  static const toJsonFactory = _$UserItems$MentorshipsToJson;
  Map<String, dynamic> toJson() => _$UserItems$MentorshipsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserItems$Mentorships &&
            (identical(other.saved, saved) ||
                const DeepCollectionEquality().equals(other.saved, saved)) &&
            (identical(other.applied, applied) ||
                const DeepCollectionEquality().equals(other.applied, applied)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(saved) ^
      const DeepCollectionEquality().hash(applied) ^
      runtimeType.hashCode;
}

extension $UserItems$MentorshipsExtension on UserItems$Mentorships {
  UserItems$Mentorships copyWith({List<Object>? saved, List<Object>? applied}) {
    return UserItems$Mentorships(
        saved: saved ?? this.saved, applied: applied ?? this.applied);
  }

  UserItems$Mentorships copyWithWrapped(
      {Wrapped<List<Object>?>? saved, Wrapped<List<Object>?>? applied}) {
    return UserItems$Mentorships(
        saved: (saved != null ? saved.value : this.saved),
        applied: (applied != null ? applied.value : this.applied));
  }
}

@JsonSerializable(explicitToJson: true)
class Job$WorkExperience {
  Job$WorkExperience({
    required this.key,
    this.experience,
  });

  factory Job$WorkExperience.fromJson(Map<String, dynamic> json) =>
      _$Job$WorkExperienceFromJson(json);

  @JsonKey(name: 'key', includeIfNull: false)
  final String key;
  @JsonKey(name: 'experience', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? experience;
  static const fromJsonFactory = _$Job$WorkExperienceFromJson;
  static const toJsonFactory = _$Job$WorkExperienceToJson;
  Map<String, dynamic> toJson() => _$Job$WorkExperienceToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Job$WorkExperience &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.experience, experience) ||
                const DeepCollectionEquality()
                    .equals(other.experience, experience)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(experience) ^
      runtimeType.hashCode;
}

extension $Job$WorkExperienceExtension on Job$WorkExperience {
  Job$WorkExperience copyWith({String? key, List<Object>? experience}) {
    return Job$WorkExperience(
        key: key ?? this.key, experience: experience ?? this.experience);
  }

  Job$WorkExperience copyWithWrapped(
      {Wrapped<String>? key, Wrapped<List<Object>?>? experience}) {
    return Job$WorkExperience(
        key: (key != null ? key.value : this.key),
        experience: (experience != null ? experience.value : this.experience));
  }
}

@JsonSerializable(explicitToJson: true)
class Job$EmploymentInformation {
  Job$EmploymentInformation({
    required this.code,
    required this.name,
    this.employmentInfo,
  });

  factory Job$EmploymentInformation.fromJson(Map<String, dynamic> json) =>
      _$Job$EmploymentInformationFromJson(json);

  @JsonKey(name: 'code', includeIfNull: false)
  final String code;
  @JsonKey(name: 'name', includeIfNull: false)
  final String name;
  @JsonKey(
      name: 'employmentInfo', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? employmentInfo;
  static const fromJsonFactory = _$Job$EmploymentInformationFromJson;
  static const toJsonFactory = _$Job$EmploymentInformationToJson;
  Map<String, dynamic> toJson() => _$Job$EmploymentInformationToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Job$EmploymentInformation &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.employmentInfo, employmentInfo) ||
                const DeepCollectionEquality()
                    .equals(other.employmentInfo, employmentInfo)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(employmentInfo) ^
      runtimeType.hashCode;
}

extension $Job$EmploymentInformationExtension on Job$EmploymentInformation {
  Job$EmploymentInformation copyWith(
      {String? code, String? name, List<Object>? employmentInfo}) {
    return Job$EmploymentInformation(
        code: code ?? this.code,
        name: name ?? this.name,
        employmentInfo: employmentInfo ?? this.employmentInfo);
  }

  Job$EmploymentInformation copyWithWrapped(
      {Wrapped<String>? code,
      Wrapped<String>? name,
      Wrapped<List<Object>?>? employmentInfo}) {
    return Job$EmploymentInformation(
        code: (code != null ? code.value : this.code),
        name: (name != null ? name.value : this.name),
        employmentInfo: (employmentInfo != null
            ? employmentInfo.value
            : this.employmentInfo));
  }
}

@JsonSerializable(explicitToJson: true)
class Job$Compensation {
  Job$Compensation({
    this.code,
    required this.name,
    this.salaryInfo,
  });

  factory Job$Compensation.fromJson(Map<String, dynamic> json) =>
      _$Job$CompensationFromJson(json);

  @JsonKey(name: 'code', includeIfNull: false)
  final String? code;
  @JsonKey(name: 'name', includeIfNull: false)
  final String name;
  @JsonKey(name: 'salaryInfo', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? salaryInfo;
  static const fromJsonFactory = _$Job$CompensationFromJson;
  static const toJsonFactory = _$Job$CompensationToJson;
  Map<String, dynamic> toJson() => _$Job$CompensationToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Job$Compensation &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.salaryInfo, salaryInfo) ||
                const DeepCollectionEquality()
                    .equals(other.salaryInfo, salaryInfo)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(salaryInfo) ^
      runtimeType.hashCode;
}

extension $Job$CompensationExtension on Job$Compensation {
  Job$Compensation copyWith(
      {String? code, String? name, List<Object>? salaryInfo}) {
    return Job$Compensation(
        code: code ?? this.code,
        name: name ?? this.name,
        salaryInfo: salaryInfo ?? this.salaryInfo);
  }

  Job$Compensation copyWithWrapped(
      {Wrapped<String?>? code,
      Wrapped<String>? name,
      Wrapped<List<Object>?>? salaryInfo}) {
    return Job$Compensation(
        code: (code != null ? code.value : this.code),
        name: (name != null ? name.value : this.name),
        salaryInfo: (salaryInfo != null ? salaryInfo.value : this.salaryInfo));
  }
}

typedef Course$Eligibility = List<Course$Eligibility$Item>;

@JsonSerializable(explicitToJson: true)
class Course$Eligibility$Item {
  Course$Eligibility$Item({
    this.name,
    this.value,
  });

  factory Course$Eligibility$Item.fromJson(Map<String, dynamic> json) =>
      _$Course$Eligibility$ItemFromJson(json);

  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'value', includeIfNull: false)
  final String? value;
  static const fromJsonFactory = _$Course$Eligibility$ItemFromJson;
  static const toJsonFactory = _$Course$Eligibility$ItemToJson;
  Map<String, dynamic> toJson() => _$Course$Eligibility$ItemToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Course$Eligibility$Item &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(value) ^
      runtimeType.hashCode;
}

extension $Course$Eligibility$ItemExtension on Course$Eligibility$Item {
  Course$Eligibility$Item copyWith({String? name, String? value}) {
    return Course$Eligibility$Item(
        name: name ?? this.name, value: value ?? this.value);
  }

  Course$Eligibility$Item copyWithWrapped(
      {Wrapped<String?>? name, Wrapped<String?>? value}) {
    return Course$Eligibility$Item(
        name: (name != null ? name.value : this.name),
        value: (value != null ? value.value : this.value));
  }
}

typedef Course$CourseHighlights = List<Course$CourseHighlights$Item>;

@JsonSerializable(explicitToJson: true)
class Course$CourseHighlights$Item {
  Course$CourseHighlights$Item({
    this.name,
    this.value,
  });

  factory Course$CourseHighlights$Item.fromJson(Map<String, dynamic> json) =>
      _$Course$CourseHighlights$ItemFromJson(json);

  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'value', includeIfNull: false)
  final String? value;
  static const fromJsonFactory = _$Course$CourseHighlights$ItemFromJson;
  static const toJsonFactory = _$Course$CourseHighlights$ItemToJson;
  Map<String, dynamic> toJson() => _$Course$CourseHighlights$ItemToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Course$CourseHighlights$Item &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(value) ^
      runtimeType.hashCode;
}

extension $Course$CourseHighlights$ItemExtension
    on Course$CourseHighlights$Item {
  Course$CourseHighlights$Item copyWith({String? name, String? value}) {
    return Course$CourseHighlights$Item(
        name: name ?? this.name, value: value ?? this.value);
  }

  Course$CourseHighlights$Item copyWithWrapped(
      {Wrapped<String?>? name, Wrapped<String?>? value}) {
    return Course$CourseHighlights$Item(
        name: (name != null ? name.value : this.name),
        value: (value != null ? value.value : this.value));
  }
}

typedef Course$Prerequisites = List<Course$Prerequisites$Item>;

@JsonSerializable(explicitToJson: true)
class Course$Prerequisites$Item {
  Course$Prerequisites$Item({
    this.name,
    this.value,
  });

  factory Course$Prerequisites$Item.fromJson(Map<String, dynamic> json) =>
      _$Course$Prerequisites$ItemFromJson(json);

  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'value', includeIfNull: false)
  final String? value;
  static const fromJsonFactory = _$Course$Prerequisites$ItemFromJson;
  static const toJsonFactory = _$Course$Prerequisites$ItemToJson;
  Map<String, dynamic> toJson() => _$Course$Prerequisites$ItemToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Course$Prerequisites$Item &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(value) ^
      runtimeType.hashCode;
}

extension $Course$Prerequisites$ItemExtension on Course$Prerequisites$Item {
  Course$Prerequisites$Item copyWith({String? name, String? value}) {
    return Course$Prerequisites$Item(
        name: name ?? this.name, value: value ?? this.value);
  }

  Course$Prerequisites$Item copyWithWrapped(
      {Wrapped<String?>? name, Wrapped<String?>? value}) {
    return Course$Prerequisites$Item(
        name: (name != null ? name.value : this.name),
        value: (value != null ? value.value : this.value));
  }
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
