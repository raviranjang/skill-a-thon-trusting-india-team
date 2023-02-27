// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_management_api.models.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) => UserProfile(
      id: json['_id'] as String?,
      email: json['email'] as String,
      firstName: json['first_name'] as String?,
      middleName: json['middle_name'] as String?,
      lastName: json['last_name'] as String?,
      fullName: json['full_name'] as String?,
      mobile: json['mobile'] as String?,
      createdAt: json['created_at'] as int?,
      lastModifiedAt: json['last_modified_at'] as int?,
      skills: (json['skills'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      city: json['city'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$UserProfileToJson(UserProfile instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_id', instance.id);
  val['email'] = instance.email;
  writeNotNull('first_name', instance.firstName);
  writeNotNull('middle_name', instance.middleName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('full_name', instance.fullName);
  writeNotNull('mobile', instance.mobile);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('last_modified_at', instance.lastModifiedAt);
  writeNotNull('skills', instance.skills);
  writeNotNull('city', instance.city);
  writeNotNull('title', instance.title);
  return val;
}

UserResume _$UserResumeFromJson(Map<String, dynamic> json) => UserResume(
      id: json['_id'] as String?,
      userId: json['user_id'] as String?,
      document: json['document'] as String?,
      documentType: json['document_type'] as String?,
      createdAt: json['created_at'] as int?,
      lastUsedAt: json['last_used_at'] as int?,
      lastModifiedAt: json['last_modified_at'] as int?,
    );

Map<String, dynamic> _$UserResumeToJson(UserResume instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_id', instance.id);
  writeNotNull('user_id', instance.userId);
  writeNotNull('document', instance.document);
  writeNotNull('document_type', instance.documentType);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('last_used_at', instance.lastUsedAt);
  writeNotNull('last_modified_at', instance.lastModifiedAt);
  return val;
}

UserItems _$UserItemsFromJson(Map<String, dynamic> json) => UserItems(
      jobs: UserItems$Jobs.fromJson(json['jobs'] as Map<String, dynamic>),
      courses:
          UserItems$Courses.fromJson(json['courses'] as Map<String, dynamic>),
      scholarships: json['scholarships'] == null
          ? null
          : UserItems$Scholarships.fromJson(
              json['scholarships'] as Map<String, dynamic>),
      mentorships: json['mentorships'] == null
          ? null
          : UserItems$Mentorships.fromJson(
              json['mentorships'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserItemsToJson(UserItems instance) {
  final val = <String, dynamic>{
    'jobs': instance.jobs.toJson(),
    'courses': instance.courses.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('scholarships', instance.scholarships?.toJson());
  writeNotNull('mentorships', instance.mentorships?.toJson());
  return val;
}

CategoriesItem _$CategoriesItemFromJson(Map<String, dynamic> json) =>
    CategoriesItem(
      jobs: (json['jobs'] as List<dynamic>?)
              ?.map((e) => Job.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      courses: (json['courses'] as List<dynamic>?)
              ?.map((e) => Course.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      scholarships: (json['scholarships'] as List<dynamic>?)
              ?.map((e) => Scholarship.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      mentorships: (json['mentorships'] as List<dynamic>?)
              ?.map((e) => Mentorship.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CategoriesItemToJson(CategoriesItem instance) {
  final val = <String, dynamic>{
    'jobs': instance.jobs.map((e) => e.toJson()).toList(),
    'courses': instance.courses.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'scholarships', instance.scholarships?.map((e) => e.toJson()).toList());
  writeNotNull(
      'mentorships', instance.mentorships?.map((e) => e.toJson()).toList());
  return val;
}

Job _$JobFromJson(Map<String, dynamic> json) => Job(
      description: json['description'] as String?,
      id: json['_id'] as String?,
      jobId: json['job_id'] as String,
      providerId: json['provider_id'] as String?,
      applicationId: json['application_id'] as String?,
      role: json['role'] as String?,
      company: json['company'] as String,
      city: json['city'] as String?,
      state: json['state'] as String?,
      companyLogo: json['company_logo'] as String?,
      data: json['data'] as String?,
      bppId: json['bpp_id'] as String,
      bppUri: json['bpp_uri'] as String,
      createdAt: json['created_at'] as int?,
      status: json['status'] as String?,
      userSavedItem: json['userSavedItem'],
      userAppliedItem: json['userAppliedItem'],
      fulfillmentCategory: (json['fulfillmentCategory'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      educationalQualifications:
          (json['educationalQualifications'] as List<dynamic>?)
                  ?.map((e) => e as Object)
                  .toList() ??
              [],
      workExperience: json['workExperience'] == null
          ? null
          : Job$WorkExperience.fromJson(
              json['workExperience'] as Map<String, dynamic>),
      responsibilities: (json['responsibilities'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      employmentInformation: json['employmentInformation'] == null
          ? null
          : Job$EmploymentInformation.fromJson(
              json['employmentInformation'] as Map<String, dynamic>),
      compensation: json['compensation'] == null
          ? null
          : Job$Compensation.fromJson(
              json['compensation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JobToJson(Job instance) {
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
  writeNotNull('status', instance.status);
  writeNotNull('userSavedItem', instance.userSavedItem);
  writeNotNull('userAppliedItem', instance.userAppliedItem);
  writeNotNull('fulfillmentCategory', instance.fulfillmentCategory);
  writeNotNull('educationalQualifications', instance.educationalQualifications);
  writeNotNull('workExperience', instance.workExperience?.toJson());
  writeNotNull('responsibilities', instance.responsibilities);
  writeNotNull(
      'employmentInformation', instance.employmentInformation?.toJson());
  writeNotNull('compensation', instance.compensation?.toJson());
  return val;
}

Course _$CourseFromJson(Map<String, dynamic> json) => Course(
      id: json['_id'] as String?,
      courseId: json['course_id'] as String,
      description: json['description'] as String?,
      providerId: json['provider_id'] as String,
      providerName: json['provider_name'] as String?,
      applicationId: json['application_id'] as String?,
      transactionId: json['transaction_id'] as String?,
      categoryName: json['category_name'] as String?,
      title: json['title'] as String,
      duration: json['duration'] as String,
      data: json['data'] as String?,
      imageUrl: json['image_url'] as String?,
      status: json['status'] as String?,
      userSavedItem: json['userSavedItem'],
      userAppliedItem: json['userAppliedItem'],
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
      eligibility: (json['eligibility'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) => Course$Eligibility$Item.fromJson(
                      e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          [],
      courseHighlights: (json['courseHighlights'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) => Course$CourseHighlights$Item.fromJson(
                      e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          [],
      prerequisites: (json['prerequisites'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) => Course$Prerequisites$Item.fromJson(
                      e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          [],
      additionalFormUrl: json['additionalFormUrl'] as String?,
    );

Map<String, dynamic> _$CourseToJson(Course instance) {
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
  writeNotNull('transaction_id', instance.transactionId);
  writeNotNull('category_name', instance.categoryName);
  val['title'] = instance.title;
  val['duration'] = instance.duration;
  writeNotNull('data', instance.data);
  writeNotNull('image_url', instance.imageUrl);
  writeNotNull('status', instance.status);
  writeNotNull('userSavedItem', instance.userSavedItem);
  writeNotNull('userAppliedItem', instance.userAppliedItem);
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
  writeNotNull(
      'eligibility',
      instance.eligibility
          ?.map((e) => e.map((e) => e.toJson()).toList())
          .toList());
  writeNotNull(
      'courseHighlights',
      instance.courseHighlights
          ?.map((e) => e.map((e) => e.toJson()).toList())
          .toList());
  writeNotNull(
      'prerequisites',
      instance.prerequisites
          ?.map((e) => e.map((e) => e.toJson()).toList())
          .toList());
  writeNotNull('additionalFormUrl', instance.additionalFormUrl);
  return val;
}

Scholarship _$ScholarshipFromJson(Map<String, dynamic> json) => Scholarship(
      id: json['_id'] as String?,
      scholarshipId: json['scholarship_id'] as String,
      providerId: json['provider_id'] as String,
      fulfillmentId: json['fulfillment_id'] as String,
      applicationId: json['application_id'] as String?,
      title: json['title'] as String,
      category: json['category'] as String,
      data: json['data'] as String,
      bppId: json['bpp_id'] as String,
      bppUri: json['bpp_uri'] as String,
      createdAt: json['created_at'] as int?,
    );

Map<String, dynamic> _$ScholarshipToJson(Scholarship instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_id', instance.id);
  val['scholarship_id'] = instance.scholarshipId;
  val['provider_id'] = instance.providerId;
  val['fulfillment_id'] = instance.fulfillmentId;
  writeNotNull('application_id', instance.applicationId);
  val['title'] = instance.title;
  val['category'] = instance.category;
  val['data'] = instance.data;
  val['bpp_id'] = instance.bppId;
  val['bpp_uri'] = instance.bppUri;
  writeNotNull('created_at', instance.createdAt);
  return val;
}

Mentorship _$MentorshipFromJson(Map<String, dynamic> json) => Mentorship(
      id: json['_id'] as String?,
      mentorshipId: json['mentorship_id'] as String,
      providerId: json['provider_id'] as String,
      applicationId: json['application_id'] as String?,
      mentor: json['mentor'] as String,
      mentorRating: json['mentorRating'] as String,
      mentorshipTitle: json['mentorshipTitle'] as String,
      data: json['data'] as String,
      bppId: json['bpp_id'] as String,
      bppUri: json['bpp_uri'] as String,
      createdAt: json['created_at'] as int?,
    );

Map<String, dynamic> _$MentorshipToJson(Mentorship instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_id', instance.id);
  val['mentorship_id'] = instance.mentorshipId;
  val['provider_id'] = instance.providerId;
  writeNotNull('application_id', instance.applicationId);
  val['mentor'] = instance.mentor;
  val['mentorRating'] = instance.mentorRating;
  val['mentorshipTitle'] = instance.mentorshipTitle;
  val['data'] = instance.data;
  val['bpp_id'] = instance.bppId;
  val['bpp_uri'] = instance.bppUri;
  writeNotNull('created_at', instance.createdAt);
  return val;
}

Error _$ErrorFromJson(Map<String, dynamic> json) => Error(
      type: json['type'] as String?,
      code: json['code'] as String?,
      path: json['path'] as String?,
      message: json['message'] as String,
    );

Map<String, dynamic> _$ErrorToJson(Error instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('code', instance.code);
  writeNotNull('path', instance.path);
  val['message'] = instance.message;
  return val;
}

UserItems$Jobs _$UserItems$JobsFromJson(Map<String, dynamic> json) =>
    UserItems$Jobs(
      saved:
          (json['saved'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
              [],
      applied: (json['applied'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$UserItems$JobsToJson(UserItems$Jobs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('saved', instance.saved);
  writeNotNull('applied', instance.applied);
  return val;
}

UserItems$Courses _$UserItems$CoursesFromJson(Map<String, dynamic> json) =>
    UserItems$Courses(
      saved:
          (json['saved'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
              [],
      applied: (json['applied'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$UserItems$CoursesToJson(UserItems$Courses instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('saved', instance.saved);
  writeNotNull('applied', instance.applied);
  return val;
}

UserItems$Scholarships _$UserItems$ScholarshipsFromJson(
        Map<String, dynamic> json) =>
    UserItems$Scholarships(
      saved:
          (json['saved'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
              [],
      applied: (json['applied'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$UserItems$ScholarshipsToJson(
    UserItems$Scholarships instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('saved', instance.saved);
  writeNotNull('applied', instance.applied);
  return val;
}

UserItems$Mentorships _$UserItems$MentorshipsFromJson(
        Map<String, dynamic> json) =>
    UserItems$Mentorships(
      saved:
          (json['saved'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
              [],
      applied: (json['applied'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$UserItems$MentorshipsToJson(
    UserItems$Mentorships instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('saved', instance.saved);
  writeNotNull('applied', instance.applied);
  return val;
}

Job$WorkExperience _$Job$WorkExperienceFromJson(Map<String, dynamic> json) =>
    Job$WorkExperience(
      key: json['key'] as String,
      experience: (json['experience'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$Job$WorkExperienceToJson(Job$WorkExperience instance) {
  final val = <String, dynamic>{
    'key': instance.key,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('experience', instance.experience);
  return val;
}

Job$EmploymentInformation _$Job$EmploymentInformationFromJson(
        Map<String, dynamic> json) =>
    Job$EmploymentInformation(
      code: json['code'] as String,
      name: json['name'] as String,
      employmentInfo: (json['employmentInfo'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$Job$EmploymentInformationToJson(
    Job$EmploymentInformation instance) {
  final val = <String, dynamic>{
    'code': instance.code,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('employmentInfo', instance.employmentInfo);
  return val;
}

Job$Compensation _$Job$CompensationFromJson(Map<String, dynamic> json) =>
    Job$Compensation(
      code: json['code'] as String?,
      name: json['name'] as String,
      salaryInfo: (json['salaryInfo'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$Job$CompensationToJson(Job$Compensation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  val['name'] = instance.name;
  writeNotNull('salaryInfo', instance.salaryInfo);
  return val;
}

Course$Eligibility$Item _$Course$Eligibility$ItemFromJson(
        Map<String, dynamic> json) =>
    Course$Eligibility$Item(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$Course$Eligibility$ItemToJson(
    Course$Eligibility$Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('value', instance.value);
  return val;
}

Course$CourseHighlights$Item _$Course$CourseHighlights$ItemFromJson(
        Map<String, dynamic> json) =>
    Course$CourseHighlights$Item(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$Course$CourseHighlights$ItemToJson(
    Course$CourseHighlights$Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('value', instance.value);
  return val;
}

Course$Prerequisites$Item _$Course$Prerequisites$ItemFromJson(
        Map<String, dynamic> json) =>
    Course$Prerequisites$Item(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$Course$Prerequisites$ItemToJson(
    Course$Prerequisites$Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('value', instance.value);
  return val;
}
