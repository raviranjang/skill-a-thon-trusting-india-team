// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_seeker_api.models.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchJob _$SearchJobFromJson(Map<String, dynamic> json) => SearchJob(
      title: json['title'] == null
          ? null
          : SearchJob$Title.fromJson(json['title'] as Map<String, dynamic>),
      company: json['company'] == null
          ? null
          : SearchJob$Company.fromJson(json['company'] as Map<String, dynamic>),
      skills: (json['skills'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) =>
                      SearchJob$Skills$Item.fromJson(e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          [],
    );

Map<String, dynamic> _$SearchJobToJson(SearchJob instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title?.toJson());
  writeNotNull('company', instance.company?.toJson());
  writeNotNull('skills',
      instance.skills?.map((e) => e.map((e) => e.toJson()).toList()).toList());
  return val;
}

SearchJobsResponse _$SearchJobsResponseFromJson(Map<String, dynamic> json) =>
    SearchJobsResponse(
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      jobProviderPlatform: json['jobProviderPlatform'] as String?,
      jobResults: (json['jobResults'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$SearchJobsResponseToJson(SearchJobsResponse instance) {
  final val = <String, dynamic>{
    'context': instance.context.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('jobProviderPlatform', instance.jobProviderPlatform);
  writeNotNull('jobResults', instance.jobResults);
  return val;
}

JobResult _$JobResultFromJson(Map<String, dynamic> json) => JobResult(
      company: Company.fromJson(json['company'] as Map<String, dynamic>),
      jobs:
          (json['jobs'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
              [],
    );

Map<String, dynamic> _$JobResultToJson(JobResult instance) => <String, dynamic>{
      'company': instance.company.toJson(),
      'jobs': instance.jobs,
    };

Company _$CompanyFromJson(Map<String, dynamic> json) => Company(
      id: json['id'] as String?,
      name: json['name'] as String?,
      imageLink: (json['imageLink'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$CompanyToJson(Company instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('imageLink', instance.imageLink);
  return val;
}

Image _$ImageFromJson(Map<String, dynamic> json) => Image(
      url: json['url'] as String,
      size: json['size'] as String?,
    );

Map<String, dynamic> _$ImageToJson(Image instance) {
  final val = <String, dynamic>{
    'url': instance.url,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('size', instance.size);
  return val;
}

JobSummary _$JobSummaryFromJson(Map<String, dynamic> json) => JobSummary(
      jobId: json['jobId'] as String,
      role: json['role'] as String?,
      description: json['description'] as String?,
      additionalDesc: json['additionalDesc'] == null
          ? null
          : AdditionalDesc.fromJson(
              json['additionalDesc'] as Map<String, dynamic>),
      locations: (json['locations'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$JobSummaryToJson(JobSummary instance) {
  final val = <String, dynamic>{
    'jobId': instance.jobId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('role', instance.role);
  writeNotNull('description', instance.description);
  writeNotNull('additionalDesc', instance.additionalDesc?.toJson());
  writeNotNull('locations', instance.locations);
  return val;
}

AdditionalDesc _$AdditionalDescFromJson(Map<String, dynamic> json) =>
    AdditionalDesc(
      url: json['url'] as String?,
      contentType: json['contentType'] as String?,
    );

Map<String, dynamic> _$AdditionalDescToJson(AdditionalDesc instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('url', instance.url);
  writeNotNull('contentType', instance.contentType);
  return val;
}

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      id: json['id'] as String,
      city: json['city'] as String?,
      cityCode: json['cityCode'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      countryCode: json['countryCode'] as String?,
    );

Map<String, dynamic> _$LocationToJson(Location instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('city', instance.city);
  writeNotNull('cityCode', instance.cityCode);
  writeNotNull('state', instance.state);
  writeNotNull('country', instance.country);
  writeNotNull('countryCode', instance.countryCode);
  return val;
}

NameValue _$NameValueFromJson(Map<String, dynamic> json) => NameValue(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$NameValueToJson(NameValue instance) {
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

SelectJob _$SelectJobFromJson(Map<String, dynamic> json) => SelectJob(
      companyId: json['companyId'] as String,
      jobs: json['jobs'] == null
          ? null
          : SelectJob$Jobs.fromJson(json['jobs'] as Map<String, dynamic>),
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SelectJobToJson(SelectJob instance) {
  final val = <String, dynamic>{
    'companyId': instance.companyId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('jobs', instance.jobs?.toJson());
  val['context'] = instance.context.toJson();
  return val;
}

SelectedJobResponse _$SelectedJobResponseFromJson(Map<String, dynamic> json) =>
    SelectedJobResponse(
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      company: json['company'] == null
          ? null
          : Company.fromJson(json['company'] as Map<String, dynamic>),
      selectedJobs: (json['selectedJobs'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$SelectedJobResponseToJson(SelectedJobResponse instance) {
  final val = <String, dynamic>{
    'context': instance.context.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('company', instance.company?.toJson());
  val['selectedJobs'] = instance.selectedJobs;
  return val;
}

SelectedJob _$SelectedJobFromJson(Map<String, dynamic> json) => SelectedJob(
      jobId: json['jobId'] as String,
      role: json['role'] as String,
      description: json['description'] as String?,
      additionalDesc: json['additionalDesc'] == null
          ? null
          : AdditionalDesc.fromJson(
              json['additionalDesc'] as Map<String, dynamic>),
      locations: (json['locations'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
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
          : SelectedJob$WorkExperience.fromJson(
              json['workExperience'] as Map<String, dynamic>),
      responsibilities: (json['responsibilities'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      employmentInformation: json['employmentInformation'] == null
          ? null
          : SelectedJob$EmploymentInformation.fromJson(
              json['employmentInformation'] as Map<String, dynamic>),
      compensation: json['compensation'] == null
          ? null
          : SelectedJob$Compensation.fromJson(
              json['compensation'] as Map<String, dynamic>),
      additionalFormUrl: json['additionalFormUrl'] as String?,
    );

Map<String, dynamic> _$SelectedJobToJson(SelectedJob instance) {
  final val = <String, dynamic>{
    'jobId': instance.jobId,
    'role': instance.role,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('additionalDesc', instance.additionalDesc?.toJson());
  writeNotNull('locations', instance.locations);
  writeNotNull('fulfillmentCategory', instance.fulfillmentCategory);
  writeNotNull('educationalQualifications', instance.educationalQualifications);
  writeNotNull('workExperience', instance.workExperience?.toJson());
  writeNotNull('responsibilities', instance.responsibilities);
  writeNotNull(
      'employmentInformation', instance.employmentInformation?.toJson());
  writeNotNull('compensation', instance.compensation?.toJson());
  writeNotNull('additionalFormUrl', instance.additionalFormUrl);
  return val;
}

JobFulfillmentCategory _$JobFulfillmentCategoryFromJson(
        Map<String, dynamic> json) =>
    JobFulfillmentCategory(
      id: json['id'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$JobFulfillmentCategoryToJson(
    JobFulfillmentCategory instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('type', instance.type);
  return val;
}

EducationalQualification _$EducationalQualificationFromJson(
        Map<String, dynamic> json) =>
    EducationalQualification(
      category: json['category'] as String?,
      qualification: (json['qualification'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$EducationalQualificationToJson(
    EducationalQualification instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('category', instance.category);
  writeNotNull('qualification', instance.qualification);
  return val;
}

Qualification _$QualificationFromJson(Map<String, dynamic> json) =>
    Qualification(
      code: json['code'] as String?,
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$QualificationToJson(Qualification instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('name', instance.name);
  writeNotNull('value', instance.value);
  return val;
}

WorkExperience _$WorkExperienceFromJson(Map<String, dynamic> json) =>
    WorkExperience(
      code: json['code'] as String?,
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$WorkExperienceToJson(WorkExperience instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('name', instance.name);
  writeNotNull('value', instance.value);
  return val;
}

EmploymentInformation _$EmploymentInformationFromJson(
        Map<String, dynamic> json) =>
    EmploymentInformation(
      code: json['code'] as String?,
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$EmploymentInformationToJson(
    EmploymentInformation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('name', instance.name);
  writeNotNull('value', instance.value);
  return val;
}

SalaryInformation _$SalaryInformationFromJson(Map<String, dynamic> json) =>
    SalaryInformation(
      code: json['code'] as String?,
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$SalaryInformationToJson(SalaryInformation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('name', instance.name);
  writeNotNull('value', instance.value);
  return val;
}

InitJob _$InitJobFromJson(Map<String, dynamic> json) => InitJob(
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      companyId: json['companyId'] as String,
      jobs: json['jobs'] == null
          ? null
          : InitJob$Jobs.fromJson(json['jobs'] as Map<String, dynamic>),
      jobFulfillments: (json['jobFulfillments'] as List<dynamic>?)
              ?.map((e) => JobFulfillment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      additionalFormData: json['additionalFormData'] == null
          ? null
          : InitJob$AdditionalFormData.fromJson(
              json['additionalFormData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InitJobToJson(InitJob instance) {
  final val = <String, dynamic>{
    'context': instance.context.toJson(),
    'companyId': instance.companyId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('jobs', instance.jobs?.toJson());
  writeNotNull('jobFulfillments',
      instance.jobFulfillments?.map((e) => e.toJson()).toList());
  writeNotNull('additionalFormData', instance.additionalFormData?.toJson());
  return val;
}

JobFulfillment _$JobFulfillmentFromJson(Map<String, dynamic> json) =>
    JobFulfillment(
      jobFulfillmentCategoryId: json['JobFulfillmentCategoryId'] as String?,
      jobApplicantProfile: json['jobApplicantProfile'] == null
          ? null
          : JobApplicantProfile.fromJson(
              json['jobApplicantProfile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JobFulfillmentToJson(JobFulfillment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('JobFulfillmentCategoryId', instance.jobFulfillmentCategoryId);
  writeNotNull('jobApplicantProfile', instance.jobApplicantProfile?.toJson());
  return val;
}

JobApplicantProfile _$JobApplicantProfileFromJson(Map<String, dynamic> json) =>
    JobApplicantProfile(
      name: json['name'] as String?,
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      profileUrl: json['profileUrl'] as String?,
      creds: (json['creds'] as List<dynamic>?)
              ?.map((e) => UserCredential.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      skills: (json['skills'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$JobApplicantProfileToJson(JobApplicantProfile instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('languages', instance.languages);
  writeNotNull('profileUrl', instance.profileUrl);
  writeNotNull('creds', instance.creds?.map((e) => e.toJson()).toList());
  writeNotNull('skills', instance.skills);
  return val;
}

UserCredential _$UserCredentialFromJson(Map<String, dynamic> json) =>
    UserCredential(
      url: json['url'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$UserCredentialToJson(UserCredential instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('url', instance.url);
  writeNotNull('type', instance.type);
  return val;
}

JobAdditionalFormData _$JobAdditionalFormDataFromJson(
        Map<String, dynamic> json) =>
    JobAdditionalFormData(
      formInputKey: json['formInputKey'] as String?,
      formInputValue: json['formInputValue'] as String?,
    );

Map<String, dynamic> _$JobAdditionalFormDataToJson(
    JobAdditionalFormData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('formInputKey', instance.formInputKey);
  writeNotNull('formInputValue', instance.formInputValue);
  return val;
}

InitJobResponse _$InitJobResponseFromJson(Map<String, dynamic> json) =>
    InitJobResponse(
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      company: Company.fromJson(json['company'] as Map<String, dynamic>),
      initiatedJobs: (json['initiatedJobs'] as List<dynamic>?)
              ?.map((e) => InitiatedJobs.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      jobFulfillments: (json['jobFulfillments'] as List<dynamic>?)
              ?.map((e) => JobFulfillment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      additionalFormUrl: json['additionalFormUrl'] as String?,
      additionalFormData: json['additionalFormData'] == null
          ? null
          : InitJobResponse$AdditionalFormData.fromJson(
              json['additionalFormData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InitJobResponseToJson(InitJobResponse instance) {
  final val = <String, dynamic>{
    'context': instance.context.toJson(),
    'company': instance.company.toJson(),
    'initiatedJobs': instance.initiatedJobs.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('jobFulfillments',
      instance.jobFulfillments?.map((e) => e.toJson()).toList());
  writeNotNull('additionalFormUrl', instance.additionalFormUrl);
  writeNotNull('additionalFormData', instance.additionalFormData?.toJson());
  return val;
}

InitiatedJobs _$InitiatedJobsFromJson(Map<String, dynamic> json) =>
    InitiatedJobs(
      jobId: json['jobId'] as String,
      role: json['role'] as String,
      description: json['description'] as String?,
      additionalDesc: json['additionalDesc'] == null
          ? null
          : AdditionalDesc.fromJson(
              json['additionalDesc'] as Map<String, dynamic>),
      locations: (json['locations'] as List<dynamic>?)
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
          : InitiatedJobs$WorkExperience.fromJson(
              json['workExperience'] as Map<String, dynamic>),
      responsibilities: (json['responsibilities'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      employmentInformation: json['employmentInformation'] == null
          ? null
          : InitiatedJobs$EmploymentInformation.fromJson(
              json['employmentInformation'] as Map<String, dynamic>),
      compensation: json['compensation'] == null
          ? null
          : InitiatedJobs$Compensation.fromJson(
              json['compensation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InitiatedJobsToJson(InitiatedJobs instance) {
  final val = <String, dynamic>{
    'jobId': instance.jobId,
    'role': instance.role,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('additionalDesc', instance.additionalDesc?.toJson());
  writeNotNull('locations', instance.locations);
  writeNotNull('educationalQualifications', instance.educationalQualifications);
  writeNotNull('workExperience', instance.workExperience?.toJson());
  writeNotNull('responsibilities', instance.responsibilities);
  writeNotNull(
      'employmentInformation', instance.employmentInformation?.toJson());
  writeNotNull('compensation', instance.compensation?.toJson());
  return val;
}

ConfirmJobRequest _$ConfirmJobRequestFromJson(Map<String, dynamic> json) =>
    ConfirmJobRequest(
      jobId: json['jobId'] as String,
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      confirmation: json['confirmation'] == null
          ? null
          : JobFulfillment.fromJson(
              json['confirmation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConfirmJobRequestToJson(ConfirmJobRequest instance) {
  final val = <String, dynamic>{
    'jobId': instance.jobId,
    'context': instance.context.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('confirmation', instance.confirmation?.toJson());
  return val;
}

ConfirmJobResponse _$ConfirmJobResponseFromJson(Map<String, dynamic> json) =>
    ConfirmJobResponse(
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      applicationId: json['applicationId'] as String,
      company: Company.fromJson(json['company'] as Map<String, dynamic>),
      confirmedJobs: (json['confirmedJobs'] as List<dynamic>?)
              ?.map((e) => ConfirmedJob.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      jobFulfillments: (json['jobFulfillments'] as List<dynamic>?)
              ?.map((e) => JobFulfillment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      additionalFormUrl: json['additionalFormUrl'] as String?,
      additionalFormData: json['additionalFormData'] == null
          ? null
          : ConfirmJobResponse$AdditionalFormData.fromJson(
              json['additionalFormData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConfirmJobResponseToJson(ConfirmJobResponse instance) {
  final val = <String, dynamic>{
    'context': instance.context.toJson(),
    'applicationId': instance.applicationId,
    'company': instance.company.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'confirmedJobs', instance.confirmedJobs?.map((e) => e.toJson()).toList());
  writeNotNull('jobFulfillments',
      instance.jobFulfillments?.map((e) => e.toJson()).toList());
  writeNotNull('additionalFormUrl', instance.additionalFormUrl);
  writeNotNull('additionalFormData', instance.additionalFormData?.toJson());
  return val;
}

ConfirmedJob _$ConfirmedJobFromJson(Map<String, dynamic> json) => ConfirmedJob(
      jobId: json['jobId'] as String,
      role: json['role'] as String,
      description: json['description'] as String?,
      additionalDesc: json['additionalDesc'] == null
          ? null
          : AdditionalDesc.fromJson(
              json['additionalDesc'] as Map<String, dynamic>),
      locations: (json['locations'] as List<dynamic>?)
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
          : ConfirmedJob$WorkExperience.fromJson(
              json['workExperience'] as Map<String, dynamic>),
      responsibilities: (json['responsibilities'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      employmentInformation: json['employmentInformation'] == null
          ? null
          : ConfirmedJob$EmploymentInformation.fromJson(
              json['employmentInformation'] as Map<String, dynamic>),
      compensation: json['compensation'] == null
          ? null
          : ConfirmedJob$Compensation.fromJson(
              json['compensation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConfirmedJobToJson(ConfirmedJob instance) {
  final val = <String, dynamic>{
    'jobId': instance.jobId,
    'role': instance.role,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('additionalDesc', instance.additionalDesc?.toJson());
  writeNotNull('locations', instance.locations);
  writeNotNull('educationalQualifications', instance.educationalQualifications);
  writeNotNull('workExperience', instance.workExperience?.toJson());
  writeNotNull('responsibilities', instance.responsibilities);
  writeNotNull(
      'employmentInformation', instance.employmentInformation?.toJson());
  writeNotNull('compensation', instance.compensation?.toJson());
  return val;
}

JobStatusRequest _$JobStatusRequestFromJson(Map<String, dynamic> json) =>
    JobStatusRequest(
      applicationId: json['applicationId'] as String,
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JobStatusRequestToJson(JobStatusRequest instance) =>
    <String, dynamic>{
      'applicationId': instance.applicationId,
      'context': instance.context.toJson(),
    };

JobStatusResponse _$JobStatusResponseFromJson(Map<String, dynamic> json) =>
    JobStatusResponse(
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      applicationId: json['applicationId'] as String,
      company: Company.fromJson(json['company'] as Map<String, dynamic>),
      confirmedJobs: (json['confirmedJobs'] as List<dynamic>?)
              ?.map((e) => ConfirmedJob.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      jobFulfillments: (json['jobFulfillments'] as List<dynamic>?)
              ?.map((e) =>
                  JobStatusFulfillment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      additionalFormUrl: json['additionalFormUrl'] as String?,
      additionalFormData: json['additionalFormData'] == null
          ? null
          : JobStatusResponse$AdditionalFormData.fromJson(
              json['additionalFormData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JobStatusResponseToJson(JobStatusResponse instance) {
  final val = <String, dynamic>{
    'context': instance.context.toJson(),
    'applicationId': instance.applicationId,
    'company': instance.company.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'confirmedJobs', instance.confirmedJobs?.map((e) => e.toJson()).toList());
  writeNotNull('jobFulfillments',
      instance.jobFulfillments?.map((e) => e.toJson()).toList());
  writeNotNull('additionalFormUrl', instance.additionalFormUrl);
  writeNotNull('additionalFormData', instance.additionalFormData?.toJson());
  return val;
}

JobStatusFulfillment _$JobStatusFulfillmentFromJson(
        Map<String, dynamic> json) =>
    JobStatusFulfillment(
      jobFulfillmentCategoryId: json['JobFulfillmentCategoryId'] as String?,
      jobApplicantProfile: json['jobApplicantProfile'] == null
          ? null
          : JobApplicantProfile.fromJson(
              json['jobApplicantProfile'] as Map<String, dynamic>),
      jobStatus: json['jobStatus'] == null
          ? null
          : JobStatus.fromJson(json['jobStatus'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JobStatusFulfillmentToJson(
    JobStatusFulfillment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('JobFulfillmentCategoryId', instance.jobFulfillmentCategoryId);
  writeNotNull('jobApplicantProfile', instance.jobApplicantProfile?.toJson());
  writeNotNull('jobStatus', instance.jobStatus?.toJson());
  return val;
}

JobStatus _$JobStatusFromJson(Map<String, dynamic> json) => JobStatus(
      status: json['status'] as String?,
      statusCode: json['statusCode'] as String?,
    );

Map<String, dynamic> _$JobStatusToJson(JobStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('statusCode', instance.statusCode);
  return val;
}

SearchMentorshipRequest _$SearchMentorshipRequestFromJson(
        Map<String, dynamic> json) =>
    SearchMentorshipRequest(
      sessionTitle: json['sessionTitle'] == null
          ? null
          : SearchMentorshipRequest$SessionTitle.fromJson(
              json['sessionTitle'] as Map<String, dynamic>),
      mentor: json['mentor'] == null
          ? null
          : SearchMentorshipRequest$Mentor.fromJson(
              json['mentor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchMentorshipRequestToJson(
    SearchMentorshipRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sessionTitle', instance.sessionTitle?.toJson());
  writeNotNull('mentor', instance.mentor?.toJson());
  return val;
}

MentorshipResults _$MentorshipResultsFromJson(Map<String, dynamic> json) =>
    MentorshipResults(
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      mentorshipProviders: (json['mentorshipProviders'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$MentorshipResultsToJson(MentorshipResults instance) =>
    <String, dynamic>{
      'context': instance.context.toJson(),
      'mentorshipProviders': instance.mentorshipProviders,
    };

MentorshipProvider _$MentorshipProviderFromJson(Map<String, dynamic> json) =>
    MentorshipProvider(
      id: json['id'] as String,
      code: json['code'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      mentorships: (json['mentorships'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$MentorshipProviderToJson(MentorshipProvider instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'description': instance.description,
      'mentorships': instance.mentorships,
    };

Mentorship _$MentorshipFromJson(Map<String, dynamic> json) => Mentorship(
      id: json['id'] as String,
      code: json['code'] as String?,
      name: json['name'] as String,
      description: json['description'] as String,
      longDescription: json['longDescription'] as String?,
      imageLocations: (json['imageLocations'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      available: json['available'] as int?,
      allocated: json['allocated'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      mentorshipSessions: (json['mentorshipSessions'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      recommendedFor: (json['recommendedFor'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$MentorshipToJson(Mentorship instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  val['name'] = instance.name;
  val['description'] = instance.description;
  writeNotNull('longDescription', instance.longDescription);
  writeNotNull('imageLocations', instance.imageLocations);
  writeNotNull('categories', instance.categories);
  writeNotNull('available', instance.available);
  writeNotNull('allocated', instance.allocated);
  writeNotNull('price', instance.price);
  writeNotNull('mentorshipSessions', instance.mentorshipSessions);
  writeNotNull('recommendedFor', instance.recommendedFor);
  return val;
}

MentorshipCategory _$MentorshipCategoryFromJson(Map<String, dynamic> json) =>
    MentorshipCategory(
      id: json['id'] as String,
      code: json['code'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$MentorshipCategoryToJson(MentorshipCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
    };

MentorshipSession _$MentorshipSessionFromJson(Map<String, dynamic> json) =>
    MentorshipSession(
      id: json['id'] as String,
      language: json['language'] as String,
      timingStart: json['timingStart'] as String?,
      timingEnd: json['timingEnd'] as String?,
      type: json['type'] as String,
      status: json['status'] as String?,
      timezone: json['timezone'] as String?,
      mentor: Mentor.fromJson(json['mentor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MentorshipSessionToJson(MentorshipSession instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'language': instance.language,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('timingStart', instance.timingStart);
  writeNotNull('timingEnd', instance.timingEnd);
  val['type'] = instance.type;
  writeNotNull('status', instance.status);
  writeNotNull('timezone', instance.timezone);
  val['mentor'] = instance.mentor.toJson();
  return val;
}

MentorshipRecommendation _$MentorshipRecommendationFromJson(
        Map<String, dynamic> json) =>
    MentorshipRecommendation(
      recommendationForCode: json['recommendationForCode'] as String,
      recommendationForName: json['recommendationForName'] as String,
    );

Map<String, dynamic> _$MentorshipRecommendationToJson(
        MentorshipRecommendation instance) =>
    <String, dynamic>{
      'recommendationForCode': instance.recommendationForCode,
      'recommendationForName': instance.recommendationForName,
    };

Mentor _$MentorFromJson(Map<String, dynamic> json) => Mentor(
      id: json['id'] as String,
      name: json['name'] as String,
      gender: json['gender'] as String?,
      image: json['image'] as String?,
      rating: json['rating'] as String?,
    );

Map<String, dynamic> _$MentorToJson(Mentor instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('gender', instance.gender);
  writeNotNull('image', instance.image);
  writeNotNull('rating', instance.rating);
  return val;
}

SelectMentorshipRequest _$SelectMentorshipRequestFromJson(
        Map<String, dynamic> json) =>
    SelectMentorshipRequest(
      mentorshipId: json['mentorshipId'] as String,
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SelectMentorshipRequestToJson(
        SelectMentorshipRequest instance) =>
    <String, dynamic>{
      'mentorshipId': instance.mentorshipId,
      'context': instance.context.toJson(),
    };

SelectMentorshipResponse _$SelectMentorshipResponseFromJson(
        Map<String, dynamic> json) =>
    SelectMentorshipResponse(
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      mentorshipProvider: MentorshipProvider.fromJson(
          json['mentorshipProvider'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SelectMentorshipResponseToJson(
        SelectMentorshipResponse instance) =>
    <String, dynamic>{
      'context': instance.context.toJson(),
      'mentorshipProvider': instance.mentorshipProvider.toJson(),
    };

InitMentorshipRequest _$InitMentorshipRequestFromJson(
        Map<String, dynamic> json) =>
    InitMentorshipRequest(
      mentorshipId: json['mentorshipId'] as String,
      mentorshipSessionId: json['mentorshipSessionId'] as String,
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      billing:
          MentorshipBilling.fromJson(json['billing'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InitMentorshipRequestToJson(
        InitMentorshipRequest instance) =>
    <String, dynamic>{
      'mentorshipId': instance.mentorshipId,
      'mentorshipSessionId': instance.mentorshipSessionId,
      'context': instance.context.toJson(),
      'billing': instance.billing.toJson(),
    };

InitMentorshipResponse _$InitMentorshipResponseFromJson(
        Map<String, dynamic> json) =>
    InitMentorshipResponse(
      mentorshipSessionId: json['mentorshipSessionId'] as String,
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InitMentorshipResponseToJson(
        InitMentorshipResponse instance) =>
    <String, dynamic>{
      'mentorshipSessionId': instance.mentorshipSessionId,
      'context': instance.context.toJson(),
    };

ConfirmMentorshipRequest _$ConfirmMentorshipRequestFromJson(
        Map<String, dynamic> json) =>
    ConfirmMentorshipRequest(
      mentorshipId: json['mentorshipId'] as String,
      mentorshipSessionId: json['mentorshipSessionId'] as String?,
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      billing:
          MentorshipBilling.fromJson(json['billing'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConfirmMentorshipRequestToJson(
    ConfirmMentorshipRequest instance) {
  final val = <String, dynamic>{
    'mentorshipId': instance.mentorshipId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('mentorshipSessionId', instance.mentorshipSessionId);
  val['context'] = instance.context.toJson();
  val['billing'] = instance.billing.toJson();
  return val;
}

MentorshipBilling _$MentorshipBillingFromJson(Map<String, dynamic> json) =>
    MentorshipBilling(
      name: json['name'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
      time:
          MentorshipBilling$Time.fromJson(json['time'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MentorshipBillingToJson(MentorshipBilling instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'time': instance.time.toJson(),
    };

ConfirmMentorshipResponse _$ConfirmMentorshipResponseFromJson(
        Map<String, dynamic> json) =>
    ConfirmMentorshipResponse(
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      mentorshipApplicationId: json['mentorshipApplicationId'] as String,
      mentorshipSession: json['mentorshipSession'] == null
          ? null
          : ConfirmedMentorshipSession.fromJson(
              json['mentorshipSession'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConfirmMentorshipResponseToJson(
    ConfirmMentorshipResponse instance) {
  final val = <String, dynamic>{
    'context': instance.context.toJson(),
    'mentorshipApplicationId': instance.mentorshipApplicationId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('mentorshipSession', instance.mentorshipSession?.toJson());
  return val;
}

ConfirmedMentorshipSession _$ConfirmedMentorshipSessionFromJson(
        Map<String, dynamic> json) =>
    ConfirmedMentorshipSession(
      id: json['id'] as String,
      sessionJoinLinks: (json['sessionJoinLinks'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      language: json['language'] as String,
      timingStart: json['timingStart'] as String?,
      timingEnd: json['timingEnd'] as String?,
      type: json['type'] as String,
      status: json['status'] as String?,
      timezone: json['timezone'] as String?,
      mentor: Mentor.fromJson(json['mentor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConfirmedMentorshipSessionToJson(
    ConfirmedMentorshipSession instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sessionJoinLinks', instance.sessionJoinLinks);
  val['language'] = instance.language;
  writeNotNull('timingStart', instance.timingStart);
  writeNotNull('timingEnd', instance.timingEnd);
  val['type'] = instance.type;
  writeNotNull('status', instance.status);
  writeNotNull('timezone', instance.timezone);
  val['mentor'] = instance.mentor.toJson();
  return val;
}

MentorshipSessionJoinLink _$MentorshipSessionJoinLinkFromJson(
        Map<String, dynamic> json) =>
    MentorshipSessionJoinLink(
      id: json['id'] as String?,
      link: json['link'] as String,
    );

Map<String, dynamic> _$MentorshipSessionJoinLinkToJson(
    MentorshipSessionJoinLink instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['link'] = instance.link;
  return val;
}

MentorshipStatusRequest _$MentorshipStatusRequestFromJson(
        Map<String, dynamic> json) =>
    MentorshipStatusRequest(
      mentorshipApplicationId: json['mentorshipApplicationId'] as String?,
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MentorshipStatusRequestToJson(
    MentorshipStatusRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('mentorshipApplicationId', instance.mentorshipApplicationId);
  val['context'] = instance.context.toJson();
  return val;
}

MentorshipStatusResponse _$MentorshipStatusResponseFromJson(
        Map<String, dynamic> json) =>
    MentorshipStatusResponse(
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      mentorshipApplicationId: json['mentorshipApplicationId'] as String,
      mentorshipApplicationStatus:
          json['mentorshipApplicationStatus'] as String,
      mentorshipProvider: json['mentorshipProvider'] == null
          ? null
          : MentorshipProvider.fromJson(
              json['mentorshipProvider'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MentorshipStatusResponseToJson(
    MentorshipStatusResponse instance) {
  final val = <String, dynamic>{
    'context': instance.context.toJson(),
    'mentorshipApplicationId': instance.mentorshipApplicationId,
    'mentorshipApplicationStatus': instance.mentorshipApplicationStatus,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('mentorshipProvider', instance.mentorshipProvider?.toJson());
  return val;
}

MentorshipCancelRequest _$MentorshipCancelRequestFromJson(
        Map<String, dynamic> json) =>
    MentorshipCancelRequest(
      mentorshipApplicationId: json['mentorshipApplicationId'] as String?,
      mentorshipCancellationReasonId:
          json['mentorshipCancellationReasonId'] as int?,
      mentorshipCancellationReason:
          json['mentorshipCancellationReason'] as String?,
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MentorshipCancelRequestToJson(
    MentorshipCancelRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('mentorshipApplicationId', instance.mentorshipApplicationId);
  writeNotNull('mentorshipCancellationReasonId',
      instance.mentorshipCancellationReasonId);
  writeNotNull(
      'mentorshipCancellationReason', instance.mentorshipCancellationReason);
  val['context'] = instance.context.toJson();
  return val;
}

MentorshipCancelResponse _$MentorshipCancelResponseFromJson(
        Map<String, dynamic> json) =>
    MentorshipCancelResponse(
      mentorshipApplicationId: json['mentorshipApplicationId'] as String?,
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MentorshipCancelResponseToJson(
    MentorshipCancelResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('mentorshipApplicationId', instance.mentorshipApplicationId);
  val['context'] = instance.context.toJson();
  return val;
}

SearchScholarship _$SearchScholarshipFromJson(Map<String, dynamic> json) =>
    SearchScholarship(
      name: json['name'] as String?,
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) => SearchScholarship$Categories$Item.fromJson(
                      e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          [],
      gender: json['gender'] as String?,
      finStatus: json['finStatus'] == null
          ? null
          : SearchScholarship$FinStatus.fromJson(
              json['finStatus'] as Map<String, dynamic>),
      casteCategory: (json['casteCategory'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) => SearchScholarship$CasteCategory$Item.fromJson(
                      e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          [],
    );

Map<String, dynamic> _$SearchScholarshipToJson(SearchScholarship instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull(
      'categories',
      instance.categories
          ?.map((e) => e.map((e) => e.toJson()).toList())
          .toList());
  writeNotNull('gender', instance.gender);
  writeNotNull('finStatus', instance.finStatus?.toJson());
  writeNotNull(
      'casteCategory',
      instance.casteCategory
          ?.map((e) => e.map((e) => e.toJson()).toList())
          .toList());
  return val;
}

ScholarshipResults _$ScholarshipResultsFromJson(Map<String, dynamic> json) =>
    ScholarshipResults(
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      scholarshipProviders: (json['scholarshipProviders'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$ScholarshipResultsToJson(ScholarshipResults instance) =>
    <String, dynamic>{
      'context': instance.context.toJson(),
      'scholarshipProviders': instance.scholarshipProviders,
    };

ScholarshipProvider _$ScholarshipProviderFromJson(Map<String, dynamic> json) =>
    ScholarshipProvider(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      scholarships: (json['scholarships'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$ScholarshipProviderToJson(ScholarshipProvider instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  val['scholarships'] = instance.scholarships;
  return val;
}

Scholarship _$ScholarshipFromJson(Map<String, dynamic> json) => Scholarship(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      amount: json['amount'] == null
          ? null
          : ScholarshipAmount.fromJson(json['amount'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : ScholarshipCategory.fromJson(
              json['category'] as Map<String, dynamic>),
      scholarshipDetails: json['scholarshipDetails'] == null
          ? null
          : ScholarshipDetails.fromJson(
              json['scholarshipDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ScholarshipToJson(Scholarship instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'description': instance.description,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount', instance.amount?.toJson());
  writeNotNull('category', instance.category?.toJson());
  writeNotNull('scholarshipDetails', instance.scholarshipDetails?.toJson());
  return val;
}

ScholarshipAmount _$ScholarshipAmountFromJson(Map<String, dynamic> json) =>
    ScholarshipAmount(
      amount: (json['amount'] as num).toDouble(),
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$ScholarshipAmountToJson(ScholarshipAmount instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
    };

ScholarshipCategory _$ScholarshipCategoryFromJson(Map<String, dynamic> json) =>
    ScholarshipCategory(
      id: json['id'] as String,
      name: json['name'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$ScholarshipCategoryToJson(
        ScholarshipCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
    };

ScholarshipDetails _$ScholarshipDetailsFromJson(Map<String, dynamic> json) =>
    ScholarshipDetails(
      id: json['id'] as String,
      type: json['type'] as String,
      applicationStartDate: json['applicationStartDate'] as String?,
      applicationEndDate: json['applicationEndDate'] as String?,
      supportContact: json['supportContact'] == null
          ? null
          : SupportContact.fromJson(
              json['supportContact'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ScholarshipDetailsToJson(ScholarshipDetails instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'type': instance.type,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('applicationStartDate', instance.applicationStartDate);
  writeNotNull('applicationEndDate', instance.applicationEndDate);
  writeNotNull('supportContact', instance.supportContact?.toJson());
  return val;
}

SupportContact _$SupportContactFromJson(Map<String, dynamic> json) =>
    SupportContact(
      name: json['name'] as String?,
      phone: json['phone'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$SupportContactToJson(SupportContact instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  val['phone'] = instance.phone;
  val['email'] = instance.email;
  return val;
}

SelectScholarship _$SelectScholarshipFromJson(Map<String, dynamic> json) =>
    SelectScholarship(
      scholarshipProiderId: json['scholarshipProiderId'] as String,
      scholarshipId: json['scholarshipId'] as String,
      scholarshipDetailsId: json['scholarshipDetailsId'] as String?,
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SelectScholarshipToJson(SelectScholarship instance) {
  final val = <String, dynamic>{
    'scholarshipProiderId': instance.scholarshipProiderId,
    'scholarshipId': instance.scholarshipId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('scholarshipDetailsId', instance.scholarshipDetailsId);
  val['context'] = instance.context.toJson();
  return val;
}

SelectScholarshipResponse _$SelectScholarshipResponseFromJson(
        Map<String, dynamic> json) =>
    SelectScholarshipResponse(
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      scholarshipProvider: ScholarshipProvider.fromJson(
          json['scholarshipProvider'] as Map<String, dynamic>),
      additionalForm: json['additionalForm'] == null
          ? null
          : ScholarshipAdditionalForm.fromJson(
              json['additionalForm'] as Map<String, dynamic>),
      academicQualificationsCriteria:
          (json['academicQualificationsCriteria'] as List<dynamic>?)
                  ?.map((e) => e as Object)
                  .toList() ??
              [],
      finStatusCriteria: (json['finStatusCriteria'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      benefits: (json['benefits'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$SelectScholarshipResponseToJson(
    SelectScholarshipResponse instance) {
  final val = <String, dynamic>{
    'context': instance.context.toJson(),
    'scholarshipProvider': instance.scholarshipProvider.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('additionalForm', instance.additionalForm?.toJson());
  writeNotNull('academicQualificationsCriteria',
      instance.academicQualificationsCriteria);
  writeNotNull('finStatusCriteria', instance.finStatusCriteria);
  writeNotNull('benefits', instance.benefits);
  return val;
}

ScholarshipAdditionalForm _$ScholarshipAdditionalFormFromJson(
        Map<String, dynamic> json) =>
    ScholarshipAdditionalForm(
      formUrl: json['formUrl'] as String,
      formMimeType: json['formMimeType'] as String?,
      submissionId: json['submissionId'] as String?,
      data:
          (json['data'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
              [],
    );

Map<String, dynamic> _$ScholarshipAdditionalFormToJson(
    ScholarshipAdditionalForm instance) {
  final val = <String, dynamic>{
    'formUrl': instance.formUrl,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('formMimeType', instance.formMimeType);
  writeNotNull('submissionId', instance.submissionId);
  writeNotNull('data', instance.data);
  return val;
}

ScholarshipAdditionalFormData _$ScholarshipAdditionalFormDataFromJson(
        Map<String, dynamic> json) =>
    ScholarshipAdditionalFormData(
      formInputKey: json['formInputKey'] as String?,
      formInputValue: json['formInputValue'] as String?,
    );

Map<String, dynamic> _$ScholarshipAdditionalFormDataToJson(
    ScholarshipAdditionalFormData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('formInputKey', instance.formInputKey);
  writeNotNull('formInputValue', instance.formInputValue);
  return val;
}

AcademicQualification _$AcademicQualificationFromJson(
        Map<String, dynamic> json) =>
    AcademicQualification(
      code: json['code'] as String,
      name: json['name'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$AcademicQualificationToJson(
        AcademicQualification instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'value': instance.value,
    };

FinancialStatus _$FinancialStatusFromJson(Map<String, dynamic> json) =>
    FinancialStatus(
      code: json['code'] as String,
      name: json['name'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$FinancialStatusToJson(FinancialStatus instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'value': instance.value,
    };

Benefit _$BenefitFromJson(Map<String, dynamic> json) => Benefit(
      code: json['code'] as String,
      name: json['name'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$BenefitToJson(Benefit instance) => <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'value': instance.value,
    };

InitScholarshipRequest _$InitScholarshipRequestFromJson(
        Map<String, dynamic> json) =>
    InitScholarshipRequest(
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      scholarshipProvider: json['scholarshipProvider'] == null
          ? null
          : InitScholarshipProvider.fromJson(
              json['scholarshipProvider'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InitScholarshipRequestToJson(
    InitScholarshipRequest instance) {
  final val = <String, dynamic>{
    'context': instance.context.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('scholarshipProvider', instance.scholarshipProvider?.toJson());
  return val;
}

InitScholarshipProvider _$InitScholarshipProviderFromJson(
        Map<String, dynamic> json) =>
    InitScholarshipProvider(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      scholarships: (json['scholarships'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$InitScholarshipProviderToJson(
    InitScholarshipProvider instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  val['scholarships'] = instance.scholarships;
  return val;
}

InitScholarship _$InitScholarshipFromJson(Map<String, dynamic> json) =>
    InitScholarship(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      categoryId: json['categoryId'] as String?,
      amount: json['amount'] == null
          ? null
          : ScholarshipAmount.fromJson(json['amount'] as Map<String, dynamic>),
      scholarshipDetails: json['scholarshipDetails'] == null
          ? null
          : InitScholarshipDetails.fromJson(
              json['scholarshipDetails'] as Map<String, dynamic>),
      additionalForm: json['additionalForm'] == null
          ? null
          : ScholarshipAdditionalForm.fromJson(
              json['additionalForm'] as Map<String, dynamic>),
      academicQualificationsCriteria:
          (json['academicQualificationsCriteria'] as List<dynamic>?)
                  ?.map((e) => e as Object)
                  .toList() ??
              [],
      finStatusCriteria: (json['finStatusCriteria'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      benefits: (json['benefits'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$InitScholarshipToJson(InitScholarship instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'description': instance.description,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('categoryId', instance.categoryId);
  writeNotNull('amount', instance.amount?.toJson());
  writeNotNull('scholarshipDetails', instance.scholarshipDetails?.toJson());
  writeNotNull('additionalForm', instance.additionalForm?.toJson());
  writeNotNull('academicQualificationsCriteria',
      instance.academicQualificationsCriteria);
  writeNotNull('finStatusCriteria', instance.finStatusCriteria);
  writeNotNull('benefits', instance.benefits);
  return val;
}

InitScholarshipDetails _$InitScholarshipDetailsFromJson(
        Map<String, dynamic> json) =>
    InitScholarshipDetails(
      id: json['id'] as String,
      type: json['type'] as String,
      applicationStartDate: json['applicationStartDate'] as String?,
      applicationEndDate: json['applicationEndDate'] as String?,
      supportContact: json['supportContact'] == null
          ? null
          : SupportContact.fromJson(
              json['supportContact'] as Map<String, dynamic>),
      scholarshipRequestor: InitScholarshipRequestor.fromJson(
          json['scholarshipRequestor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InitScholarshipDetailsToJson(
    InitScholarshipDetails instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'type': instance.type,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('applicationStartDate', instance.applicationStartDate);
  writeNotNull('applicationEndDate', instance.applicationEndDate);
  writeNotNull('supportContact', instance.supportContact?.toJson());
  val['scholarshipRequestor'] = instance.scholarshipRequestor.toJson();
  return val;
}

InitScholarshipRequestor _$InitScholarshipRequestorFromJson(
        Map<String, dynamic> json) =>
    InitScholarshipRequestor(
      name: json['name'] as String,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      needOfScholarship: json['needOfScholarship'] as String?,
      docUrl: json['docUrl'] as String?,
    );

Map<String, dynamic> _$InitScholarshipRequestorToJson(
    InitScholarshipRequestor instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('phone', instance.phone);
  writeNotNull('address', instance.address);
  writeNotNull('needOfScholarship', instance.needOfScholarship);
  writeNotNull('docUrl', instance.docUrl);
  return val;
}

ScholarshipRequestorContactDELETE _$ScholarshipRequestorContactDELETEFromJson(
        Map<String, dynamic> json) =>
    ScholarshipRequestorContactDELETE(
      address: json['address'] as String,
      addressFormat: json['addressFormat'] as String,
    );

Map<String, dynamic> _$ScholarshipRequestorContactDELETEToJson(
        ScholarshipRequestorContactDELETE instance) =>
    <String, dynamic>{
      'address': instance.address,
      'addressFormat': instance.addressFormat,
    };

InitScholarshipResponse _$InitScholarshipResponseFromJson(
        Map<String, dynamic> json) =>
    InitScholarshipResponse(
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      scholarshipProvider: json['scholarshipProvider'] == null
          ? null
          : InitScholarshipResponseProvider.fromJson(
              json['scholarshipProvider'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InitScholarshipResponseToJson(
    InitScholarshipResponse instance) {
  final val = <String, dynamic>{
    'context': instance.context.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('scholarshipProvider', instance.scholarshipProvider?.toJson());
  return val;
}

InitScholarshipResponseProvider _$InitScholarshipResponseProviderFromJson(
        Map<String, dynamic> json) =>
    InitScholarshipResponseProvider(
      id: json['id'] as String,
      name: json['name'] as String,
      descriptor: json['descriptor'] as String?,
      scholarships: (json['scholarships'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$InitScholarshipResponseProviderToJson(
    InitScholarshipResponseProvider instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('descriptor', instance.descriptor);
  val['scholarships'] = instance.scholarships;
  return val;
}

InitResponseScholarship _$InitResponseScholarshipFromJson(
        Map<String, dynamic> json) =>
    InitResponseScholarship(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      categoryId: json['categoryId'] as String?,
      amount: json['amount'] == null
          ? null
          : ScholarshipAmount.fromJson(json['amount'] as Map<String, dynamic>),
      scholarshipDetails: json['scholarshipDetails'] == null
          ? null
          : InitResponseScholarshipDetails.fromJson(
              json['scholarshipDetails'] as Map<String, dynamic>),
      additionalForm: json['additionalForm'] == null
          ? null
          : ScholarshipAdditionalForm.fromJson(
              json['additionalForm'] as Map<String, dynamic>),
      academicQualificationsCriteria:
          (json['academicQualificationsCriteria'] as List<dynamic>?)
                  ?.map((e) => e as Object)
                  .toList() ??
              [],
      finStatusCriteria: (json['finStatusCriteria'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      benefits: (json['benefits'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$InitResponseScholarshipToJson(
    InitResponseScholarship instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'description': instance.description,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('categoryId', instance.categoryId);
  writeNotNull('amount', instance.amount?.toJson());
  writeNotNull('scholarshipDetails', instance.scholarshipDetails?.toJson());
  writeNotNull('additionalForm', instance.additionalForm?.toJson());
  writeNotNull('academicQualificationsCriteria',
      instance.academicQualificationsCriteria);
  writeNotNull('finStatusCriteria', instance.finStatusCriteria);
  writeNotNull('benefits', instance.benefits);
  return val;
}

InitResponseScholarshipDetails _$InitResponseScholarshipDetailsFromJson(
        Map<String, dynamic> json) =>
    InitResponseScholarshipDetails(
      id: json['id'] as String,
      type: json['type'] as String,
      applicationStartDate: json['applicationStartDate'] as String?,
      applicationEndDate: json['applicationEndDate'] as String?,
      supportContact: json['supportContact'] == null
          ? null
          : SupportContact.fromJson(
              json['supportContact'] as Map<String, dynamic>),
      scholarshipRequestor: InitScholarshipRequestor.fromJson(
          json['scholarshipRequestor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InitResponseScholarshipDetailsToJson(
    InitResponseScholarshipDetails instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'type': instance.type,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('applicationStartDate', instance.applicationStartDate);
  writeNotNull('applicationEndDate', instance.applicationEndDate);
  writeNotNull('supportContact', instance.supportContact?.toJson());
  val['scholarshipRequestor'] = instance.scholarshipRequestor.toJson();
  return val;
}

ConfirmScholarshipRequest _$ConfirmScholarshipRequestFromJson(
        Map<String, dynamic> json) =>
    ConfirmScholarshipRequest(
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      scholarshipProvider: json['scholarshipProvider'] == null
          ? null
          : InitScholarshipResponseProvider.fromJson(
              json['scholarshipProvider'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConfirmScholarshipRequestToJson(
    ConfirmScholarshipRequest instance) {
  final val = <String, dynamic>{
    'context': instance.context.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('scholarshipProvider', instance.scholarshipProvider?.toJson());
  return val;
}

ConfirmScholarshipResponse _$ConfirmScholarshipResponseFromJson(
        Map<String, dynamic> json) =>
    ConfirmScholarshipResponse(
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      scholarshipApplicationId: json['scholarshipApplicationId'] as String,
      scholarshipApplicationStatus:
          json['scholarshipApplicationStatus'] as String,
      scholarshipProvider: json['scholarshipProvider'] == null
          ? null
          : ConfirmScholarshipResponseProvider.fromJson(
              json['scholarshipProvider'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConfirmScholarshipResponseToJson(
    ConfirmScholarshipResponse instance) {
  final val = <String, dynamic>{
    'context': instance.context.toJson(),
    'scholarshipApplicationId': instance.scholarshipApplicationId,
    'scholarshipApplicationStatus': instance.scholarshipApplicationStatus,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('scholarshipProvider', instance.scholarshipProvider?.toJson());
  return val;
}

ConfirmScholarshipResponseProvider _$ConfirmScholarshipResponseProviderFromJson(
        Map<String, dynamic> json) =>
    ConfirmScholarshipResponseProvider(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      scholarships: (json['scholarships'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$ConfirmScholarshipResponseProviderToJson(
    ConfirmScholarshipResponseProvider instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  val['scholarships'] = instance.scholarships;
  return val;
}

ConfirmResponseScholarship _$ConfirmResponseScholarshipFromJson(
        Map<String, dynamic> json) =>
    ConfirmResponseScholarship(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      categoryId: json['categoryId'] as String?,
      amount: json['amount'] == null
          ? null
          : ScholarshipAmount.fromJson(json['amount'] as Map<String, dynamic>),
      scholarshipDetails: json['scholarshipDetails'] == null
          ? null
          : ConfirmResponseScholarshipDetails.fromJson(
              json['scholarshipDetails'] as Map<String, dynamic>),
      additionalForm: json['additionalForm'] == null
          ? null
          : ScholarshipAdditionalForm.fromJson(
              json['additionalForm'] as Map<String, dynamic>),
      academicQualificationsCriteria:
          (json['academicQualificationsCriteria'] as List<dynamic>?)
                  ?.map((e) => e as Object)
                  .toList() ??
              [],
      finStatusCriteria: (json['finStatusCriteria'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      benefits: (json['benefits'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$ConfirmResponseScholarshipToJson(
    ConfirmResponseScholarship instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'description': instance.description,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('categoryId', instance.categoryId);
  writeNotNull('amount', instance.amount?.toJson());
  writeNotNull('scholarshipDetails', instance.scholarshipDetails?.toJson());
  writeNotNull('additionalForm', instance.additionalForm?.toJson());
  writeNotNull('academicQualificationsCriteria',
      instance.academicQualificationsCriteria);
  writeNotNull('finStatusCriteria', instance.finStatusCriteria);
  writeNotNull('benefits', instance.benefits);
  return val;
}

ConfirmResponseScholarshipDetails _$ConfirmResponseScholarshipDetailsFromJson(
        Map<String, dynamic> json) =>
    ConfirmResponseScholarshipDetails(
      id: json['id'] as String,
      type: json['type'] as String,
      applicationStartDate: json['applicationStartDate'] as String?,
      applicationEndDate: json['applicationEndDate'] as String?,
      supportContact: json['supportContact'] == null
          ? null
          : SupportContact.fromJson(
              json['supportContact'] as Map<String, dynamic>),
      scholarshipRequestor: json['scholarshipRequestor'] == null
          ? null
          : InitScholarshipRequestor.fromJson(
              json['scholarshipRequestor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConfirmResponseScholarshipDetailsToJson(
    ConfirmResponseScholarshipDetails instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'type': instance.type,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('applicationStartDate', instance.applicationStartDate);
  writeNotNull('applicationEndDate', instance.applicationEndDate);
  writeNotNull('supportContact', instance.supportContact?.toJson());
  writeNotNull('scholarshipRequestor', instance.scholarshipRequestor?.toJson());
  return val;
}

ScholarshipStatusRequest _$ScholarshipStatusRequestFromJson(
        Map<String, dynamic> json) =>
    ScholarshipStatusRequest(
      scholarshipApplicationId: json['scholarshipApplicationId'] as String,
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ScholarshipStatusRequestToJson(
        ScholarshipStatusRequest instance) =>
    <String, dynamic>{
      'scholarshipApplicationId': instance.scholarshipApplicationId,
      'context': instance.context.toJson(),
    };

ScholarshipStatusResponse _$ScholarshipStatusResponseFromJson(
        Map<String, dynamic> json) =>
    ScholarshipStatusResponse(
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      scholarshipApplicationId: json['scholarshipApplicationId'] as String,
      scholarshipApplicationStatus:
          json['scholarshipApplicationStatus'] as String,
      scholarshipProvider: json['scholarshipProvider'] == null
          ? null
          : ConfirmScholarshipResponseProvider.fromJson(
              json['scholarshipProvider'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ScholarshipStatusResponseToJson(
    ScholarshipStatusResponse instance) {
  final val = <String, dynamic>{
    'context': instance.context.toJson(),
    'scholarshipApplicationId': instance.scholarshipApplicationId,
    'scholarshipApplicationStatus': instance.scholarshipApplicationStatus,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('scholarshipProvider', instance.scholarshipProvider?.toJson());
  return val;
}

SearchCourseRequest _$SearchCourseRequestFromJson(Map<String, dynamic> json) =>
    SearchCourseRequest(
      category: json['category'] as String?,
      provider: json['provider'] as String?,
      searchTitle: json['searchTitle'] as String?,
      deepSearch: (json['deepSearch'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$SearchCourseRequestToJson(SearchCourseRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('category', instance.category);
  writeNotNull('provider', instance.provider);
  writeNotNull('searchTitle', instance.searchTitle);
  writeNotNull('deepSearch', instance.deepSearch);
  return val;
}

CourseDeepSearch _$CourseDeepSearchFromJson(Map<String, dynamic> json) =>
    CourseDeepSearch(
      searchCriteria: json['searchCriteria'] as String?,
      searchParameters: (json['searchParameters'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) => CourseDeepSearch$SearchParameters$Item.fromJson(
                      e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          [],
    );

Map<String, dynamic> _$CourseDeepSearchToJson(CourseDeepSearch instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('searchCriteria', instance.searchCriteria);
  writeNotNull(
      'searchParameters',
      instance.searchParameters
          ?.map((e) => e.map((e) => e.toJson()).toList())
          .toList());
  return val;
}

CourseResults _$CourseResultsFromJson(Map<String, dynamic> json) =>
    CourseResults(
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      courses: (json['courses'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$CourseResultsToJson(CourseResults instance) {
  final val = <String, dynamic>{
    'context': instance.context.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('courses', instance.courses);
  return val;
}

Course _$CourseFromJson(Map<String, dynamic> json) => Course(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      imageLocations: (json['imageLocations'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      duration: json['duration'] as String,
      userSavedItem: json['userSavedItem'],
      userAppliedItem: json['userAppliedItem'],
      provider:
          CourseProvider.fromJson(json['provider'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : CourseCategory.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CourseToJson(Course instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  val['imageLocations'] = instance.imageLocations;
  val['duration'] = instance.duration;
  writeNotNull('userSavedItem', instance.userSavedItem);
  writeNotNull('userAppliedItem', instance.userAppliedItem);
  val['provider'] = instance.provider.toJson();
  writeNotNull('category', instance.category?.toJson());
  return val;
}

CourseProvider _$CourseProviderFromJson(Map<String, dynamic> json) =>
    CourseProvider(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$CourseProviderToJson(CourseProvider instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  return val;
}

CourseCategory _$CourseCategoryFromJson(Map<String, dynamic> json) =>
    CourseCategory(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CourseCategoryToJson(CourseCategory instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  return val;
}

SelectCourseRequest _$SelectCourseRequestFromJson(Map<String, dynamic> json) =>
    SelectCourseRequest(
      courseId: json['courseId'] as String,
      courseProviderId: json['courseProviderId'] as String?,
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SelectCourseRequestToJson(SelectCourseRequest instance) {
  final val = <String, dynamic>{
    'courseId': instance.courseId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('courseProviderId', instance.courseProviderId);
  val['context'] = instance.context.toJson();
  return val;
}

SelectCourseResponse _$SelectCourseResponseFromJson(
        Map<String, dynamic> json) =>
    SelectCourseResponse(
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      course: Course.fromJson(json['course'] as Map<String, dynamic>),
      courseDetails:
          CourseDetails.fromJson(json['courseDetails'] as Map<String, dynamic>),
      additionalFormUrl: json['additionalFormUrl'] as String?,
    );

Map<String, dynamic> _$SelectCourseResponseToJson(
    SelectCourseResponse instance) {
  final val = <String, dynamic>{
    'context': instance.context.toJson(),
    'course': instance.course.toJson(),
    'courseDetails': instance.courseDetails.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('additionalFormUrl', instance.additionalFormUrl);
  return val;
}

CourseDetails _$CourseDetailsFromJson(Map<String, dynamic> json) =>
    CourseDetails(
      price: json['price'] as String?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      rating: json['rating'] as String?,
      credits: json['credits'] as String?,
      instructors: json['instructors'] as String,
      offeringInstitue: json['offeringInstitue'] as String?,
      courseUrl: json['courseUrl'] as String?,
      enrollmentEndDate: json['enrollmentEndDate'] as String?,
      eligibility: (json['eligibility'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      courseHighlights: (json['courseHighlights'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      prerequisites: (json['prerequisites'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$CourseDetailsToJson(CourseDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('price', instance.price);
  writeNotNull('startDate', instance.startDate);
  writeNotNull('endDate', instance.endDate);
  writeNotNull('rating', instance.rating);
  writeNotNull('credits', instance.credits);
  val['instructors'] = instance.instructors;
  writeNotNull('offeringInstitue', instance.offeringInstitue);
  writeNotNull('courseUrl', instance.courseUrl);
  writeNotNull('enrollmentEndDate', instance.enrollmentEndDate);
  writeNotNull('eligibility', instance.eligibility);
  writeNotNull('courseHighlights', instance.courseHighlights);
  writeNotNull('prerequisites', instance.prerequisites);
  return val;
}

InitCourse _$InitCourseFromJson(Map<String, dynamic> json) => InitCourse(
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      courseId: json['courseId'] as String,
      courseProviderId: json['CourseProviderId'] as String?,
      applicantProfile: CourseApplicantProfile.fromJson(
          json['applicantProfile'] as Map<String, dynamic>),
      additionalFormData: json['additionalFormData'] == null
          ? null
          : InitCourse$AdditionalFormData.fromJson(
              json['additionalFormData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InitCourseToJson(InitCourse instance) {
  final val = <String, dynamic>{
    'context': instance.context.toJson(),
    'courseId': instance.courseId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('CourseProviderId', instance.courseProviderId);
  val['applicantProfile'] = instance.applicantProfile.toJson();
  writeNotNull('additionalFormData', instance.additionalFormData?.toJson());
  return val;
}

CourseApplicantProfile _$CourseApplicantProfileFromJson(
        Map<String, dynamic> json) =>
    CourseApplicantProfile(
      name: json['name'] as String?,
      email: json['email'] as String?,
      contact: json['contact'] as String?,
    );

Map<String, dynamic> _$CourseApplicantProfileToJson(
    CourseApplicantProfile instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('email', instance.email);
  writeNotNull('contact', instance.contact);
  return val;
}

CourseAdditionalFormData _$CourseAdditionalFormDataFromJson(
        Map<String, dynamic> json) =>
    CourseAdditionalFormData(
      formInputKey: json['formInputKey'] as String?,
      formInputValue: json['formInputValue'] as String?,
    );

Map<String, dynamic> _$CourseAdditionalFormDataToJson(
    CourseAdditionalFormData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('formInputKey', instance.formInputKey);
  writeNotNull('formInputValue', instance.formInputValue);
  return val;
}

InitCourseResponse _$InitCourseResponseFromJson(Map<String, dynamic> json) =>
    InitCourseResponse(
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      course: Course.fromJson(json['course'] as Map<String, dynamic>),
      courseDetails: json['courseDetails'] == null
          ? null
          : CourseDetails.fromJson(
              json['courseDetails'] as Map<String, dynamic>),
      applicantProfile: CourseApplicantProfile.fromJson(
          json['applicantProfile'] as Map<String, dynamic>),
      additionalFormUrl: json['additionalFormUrl'] as String?,
      additionalFormData: json['additionalFormData'] == null
          ? null
          : InitCourseResponse$AdditionalFormData.fromJson(
              json['additionalFormData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InitCourseResponseToJson(InitCourseResponse instance) {
  final val = <String, dynamic>{
    'context': instance.context.toJson(),
    'course': instance.course.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('courseDetails', instance.courseDetails?.toJson());
  val['applicantProfile'] = instance.applicantProfile.toJson();
  writeNotNull('additionalFormUrl', instance.additionalFormUrl);
  writeNotNull('additionalFormData', instance.additionalFormData?.toJson());
  return val;
}

ConfirmCourseRequest _$ConfirmCourseRequestFromJson(
        Map<String, dynamic> json) =>
    ConfirmCourseRequest(
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      courseId: json['courseId'] as String,
      courseProviderId: json['CourseProviderId'] as String,
      applicantProfile: json['applicantProfile'] == null
          ? null
          : CourseApplicantProfile.fromJson(
              json['applicantProfile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConfirmCourseRequestToJson(
    ConfirmCourseRequest instance) {
  final val = <String, dynamic>{
    'context': instance.context.toJson(),
    'courseId': instance.courseId,
    'CourseProviderId': instance.courseProviderId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('applicantProfile', instance.applicantProfile?.toJson());
  return val;
}

ConfirmCourseResponse _$ConfirmCourseResponseFromJson(
        Map<String, dynamic> json) =>
    ConfirmCourseResponse(
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      applicationId: json['applicationId'] as String,
      applicationState: json['applicationState'] as String?,
      course: Course.fromJson(json['course'] as Map<String, dynamic>),
      applicantProfile: CourseApplicantProfile.fromJson(
          json['applicantProfile'] as Map<String, dynamic>),
      additionalFormUrl: json['additionalFormUrl'] as String?,
      additionalFormData: json['additionalFormData'] == null
          ? null
          : ConfirmCourseResponse$AdditionalFormData.fromJson(
              json['additionalFormData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConfirmCourseResponseToJson(
    ConfirmCourseResponse instance) {
  final val = <String, dynamic>{
    'context': instance.context.toJson(),
    'applicationId': instance.applicationId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('applicationState', instance.applicationState);
  val['course'] = instance.course.toJson();
  val['applicantProfile'] = instance.applicantProfile.toJson();
  writeNotNull('additionalFormUrl', instance.additionalFormUrl);
  writeNotNull('additionalFormData', instance.additionalFormData?.toJson());
  return val;
}

CourseStatusRequest _$CourseStatusRequestFromJson(Map<String, dynamic> json) =>
    CourseStatusRequest(
      applicationId: json['applicationId'] as String,
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CourseStatusRequestToJson(
        CourseStatusRequest instance) =>
    <String, dynamic>{
      'applicationId': instance.applicationId,
      'context': instance.context.toJson(),
    };

CourseStatusResponse _$CourseStatusResponseFromJson(
        Map<String, dynamic> json) =>
    CourseStatusResponse(
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      applicationId: json['applicationId'] as String,
      course: Course.fromJson(json['course'] as Map<String, dynamic>),
      applicantProfile: CourseApplicantProfile.fromJson(
          json['applicantProfile'] as Map<String, dynamic>),
      additionalFormUrl: json['additionalFormUrl'] as String?,
      additionalFormData: json['additionalFormData'] == null
          ? null
          : CourseStatusResponse$AdditionalFormData.fromJson(
              json['additionalFormData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CourseStatusResponseToJson(
    CourseStatusResponse instance) {
  final val = <String, dynamic>{
    'context': instance.context.toJson(),
    'applicationId': instance.applicationId,
    'course': instance.course.toJson(),
    'applicantProfile': instance.applicantProfile.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('additionalFormUrl', instance.additionalFormUrl);
  writeNotNull('additionalFormData', instance.additionalFormData?.toJson());
  return val;
}

Context _$ContextFromJson(Map<String, dynamic> json) => Context(
      transactionId: json['transactionId'] as String,
      messageId: json['messageId'] as String?,
      bppId: json['bppId'] as String,
      bppUri: json['bppUri'] as String,
    );

Map<String, dynamic> _$ContextToJson(Context instance) {
  final val = <String, dynamic>{
    'transactionId': instance.transactionId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('messageId', instance.messageId);
  val['bppId'] = instance.bppId;
  val['bppUri'] = instance.bppUri;
  return val;
}

Error _$ErrorFromJson(Map<String, dynamic> json) => Error(
      code: json['code'] as String,
      message: json['message'] as String,
      data: json['data'],
      type: json['type'] as String,
      path: json['path'] as String?,
    );

Map<String, dynamic> _$ErrorToJson(Error instance) {
  final val = <String, dynamic>{
    'code': instance.code,
    'message': instance.message,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  val['type'] = instance.type;
  writeNotNull('path', instance.path);
  return val;
}

NetworkError _$NetworkErrorFromJson(Map<String, dynamic> json) => NetworkError(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'],
      type: json['type'] as String?,
    );

Map<String, dynamic> _$NetworkErrorToJson(NetworkError instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('message', instance.message);
  writeNotNull('data', instance.data);
  writeNotNull('type', instance.type);
  return val;
}

Acknowledgement _$AcknowledgementFromJson(Map<String, dynamic> json) =>
    Acknowledgement(
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      message: Acknowledgement$Message.fromJson(
          json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AcknowledgementToJson(Acknowledgement instance) =>
    <String, dynamic>{
      'context': instance.context.toJson(),
      'message': instance.message.toJson(),
    };

SearchJob$Title _$SearchJob$TitleFromJson(Map<String, dynamic> json) =>
    SearchJob$Title(
      key: json['key'] as String?,
    );

Map<String, dynamic> _$SearchJob$TitleToJson(SearchJob$Title instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('key', instance.key);
  return val;
}

SearchJob$Company _$SearchJob$CompanyFromJson(Map<String, dynamic> json) =>
    SearchJob$Company(
      name: json['name'] as String?,
      locations: (json['locations'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) => SearchJob$Company$Locations$Item.fromJson(
                      e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          [],
    );

Map<String, dynamic> _$SearchJob$CompanyToJson(SearchJob$Company instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull(
      'locations',
      instance.locations
          ?.map((e) => e.map((e) => e.toJson()).toList())
          .toList());
  return val;
}

SearchJob$Skills$Item _$SearchJob$Skills$ItemFromJson(
        Map<String, dynamic> json) =>
    SearchJob$Skills$Item(
      name: json['name'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$SearchJob$Skills$ItemToJson(
    SearchJob$Skills$Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('code', instance.code);
  return val;
}

SelectJob$Jobs _$SelectJob$JobsFromJson(Map<String, dynamic> json) =>
    SelectJob$Jobs(
      jobId: json['jobId'] as String?,
    );

Map<String, dynamic> _$SelectJob$JobsToJson(SelectJob$Jobs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('jobId', instance.jobId);
  return val;
}

SelectedJob$WorkExperience _$SelectedJob$WorkExperienceFromJson(
        Map<String, dynamic> json) =>
    SelectedJob$WorkExperience(
      key: json['key'] as String,
      experience: (json['experience'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$SelectedJob$WorkExperienceToJson(
    SelectedJob$WorkExperience instance) {
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

SelectedJob$EmploymentInformation _$SelectedJob$EmploymentInformationFromJson(
        Map<String, dynamic> json) =>
    SelectedJob$EmploymentInformation(
      code: json['code'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$SelectedJob$EmploymentInformationToJson(
        SelectedJob$EmploymentInformation instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
    };

SelectedJob$Compensation _$SelectedJob$CompensationFromJson(
        Map<String, dynamic> json) =>
    SelectedJob$Compensation(
      code: json['code'] as String?,
      name: json['name'] as String,
      salaryInfo: (json['salaryInfo'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$SelectedJob$CompensationToJson(
    SelectedJob$Compensation instance) {
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

InitJob$Jobs _$InitJob$JobsFromJson(Map<String, dynamic> json) => InitJob$Jobs(
      jobId: json['jobId'] as String?,
    );

Map<String, dynamic> _$InitJob$JobsToJson(InitJob$Jobs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('jobId', instance.jobId);
  return val;
}

InitJob$AdditionalFormData _$InitJob$AdditionalFormDataFromJson(
        Map<String, dynamic> json) =>
    InitJob$AdditionalFormData(
      submissionId: json['submissionId'] as String?,
      data:
          (json['data'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
              [],
    );

Map<String, dynamic> _$InitJob$AdditionalFormDataToJson(
    InitJob$AdditionalFormData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('submissionId', instance.submissionId);
  writeNotNull('data', instance.data);
  return val;
}

InitJobResponse$AdditionalFormData _$InitJobResponse$AdditionalFormDataFromJson(
        Map<String, dynamic> json) =>
    InitJobResponse$AdditionalFormData(
      submissionId: json['submissionId'] as String?,
      data:
          (json['data'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
              [],
    );

Map<String, dynamic> _$InitJobResponse$AdditionalFormDataToJson(
    InitJobResponse$AdditionalFormData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('submissionId', instance.submissionId);
  writeNotNull('data', instance.data);
  return val;
}

InitiatedJobs$WorkExperience _$InitiatedJobs$WorkExperienceFromJson(
        Map<String, dynamic> json) =>
    InitiatedJobs$WorkExperience(
      key: json['key'] as String?,
      experience: (json['experience'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$InitiatedJobs$WorkExperienceToJson(
    InitiatedJobs$WorkExperience instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('key', instance.key);
  writeNotNull('experience', instance.experience);
  return val;
}

InitiatedJobs$EmploymentInformation
    _$InitiatedJobs$EmploymentInformationFromJson(Map<String, dynamic> json) =>
        InitiatedJobs$EmploymentInformation(
          code: json['code'] as String?,
          name: json['name'] as String?,
        );

Map<String, dynamic> _$InitiatedJobs$EmploymentInformationToJson(
    InitiatedJobs$EmploymentInformation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('name', instance.name);
  return val;
}

InitiatedJobs$Compensation _$InitiatedJobs$CompensationFromJson(
        Map<String, dynamic> json) =>
    InitiatedJobs$Compensation(
      code: json['code'] as String?,
      name: json['name'] as String?,
      salaryInfo: (json['salaryInfo'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$InitiatedJobs$CompensationToJson(
    InitiatedJobs$Compensation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('name', instance.name);
  writeNotNull('salaryInfo', instance.salaryInfo);
  return val;
}

ConfirmJobResponse$AdditionalFormData
    _$ConfirmJobResponse$AdditionalFormDataFromJson(
            Map<String, dynamic> json) =>
        ConfirmJobResponse$AdditionalFormData(
          submissionId: json['submissionId'] as String?,
          data: (json['data'] as List<dynamic>?)
                  ?.map((e) => e as Object)
                  .toList() ??
              [],
        );

Map<String, dynamic> _$ConfirmJobResponse$AdditionalFormDataToJson(
    ConfirmJobResponse$AdditionalFormData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('submissionId', instance.submissionId);
  writeNotNull('data', instance.data);
  return val;
}

ConfirmedJob$WorkExperience _$ConfirmedJob$WorkExperienceFromJson(
        Map<String, dynamic> json) =>
    ConfirmedJob$WorkExperience(
      key: json['key'] as String?,
      experience: (json['experience'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$ConfirmedJob$WorkExperienceToJson(
    ConfirmedJob$WorkExperience instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('key', instance.key);
  writeNotNull('experience', instance.experience);
  return val;
}

ConfirmedJob$EmploymentInformation _$ConfirmedJob$EmploymentInformationFromJson(
        Map<String, dynamic> json) =>
    ConfirmedJob$EmploymentInformation(
      code: json['code'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ConfirmedJob$EmploymentInformationToJson(
    ConfirmedJob$EmploymentInformation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('name', instance.name);
  return val;
}

ConfirmedJob$Compensation _$ConfirmedJob$CompensationFromJson(
        Map<String, dynamic> json) =>
    ConfirmedJob$Compensation(
      code: json['code'] as String?,
      name: json['name'] as String?,
      salaryInfo: (json['salaryInfo'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$ConfirmedJob$CompensationToJson(
    ConfirmedJob$Compensation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('name', instance.name);
  writeNotNull('salaryInfo', instance.salaryInfo);
  return val;
}

JobStatusResponse$AdditionalFormData
    _$JobStatusResponse$AdditionalFormDataFromJson(Map<String, dynamic> json) =>
        JobStatusResponse$AdditionalFormData(
          submissionId: json['submissionId'] as String?,
          data: (json['data'] as List<dynamic>?)
                  ?.map((e) => e as Object)
                  .toList() ??
              [],
        );

Map<String, dynamic> _$JobStatusResponse$AdditionalFormDataToJson(
    JobStatusResponse$AdditionalFormData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('submissionId', instance.submissionId);
  writeNotNull('data', instance.data);
  return val;
}

SearchMentorshipRequest$SessionTitle
    _$SearchMentorshipRequest$SessionTitleFromJson(Map<String, dynamic> json) =>
        SearchMentorshipRequest$SessionTitle(
          key: json['key'] as String?,
        );

Map<String, dynamic> _$SearchMentorshipRequest$SessionTitleToJson(
    SearchMentorshipRequest$SessionTitle instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('key', instance.key);
  return val;
}

SearchMentorshipRequest$Mentor _$SearchMentorshipRequest$MentorFromJson(
        Map<String, dynamic> json) =>
    SearchMentorshipRequest$Mentor(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$SearchMentorshipRequest$MentorToJson(
    SearchMentorshipRequest$Mentor instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  return val;
}

MentorshipBilling$Time _$MentorshipBilling$TimeFromJson(
        Map<String, dynamic> json) =>
    MentorshipBilling$Time(
      timezone: json['timezone'] as String?,
    );

Map<String, dynamic> _$MentorshipBilling$TimeToJson(
    MentorshipBilling$Time instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('timezone', instance.timezone);
  return val;
}

SearchScholarship$Categories$Item _$SearchScholarship$Categories$ItemFromJson(
        Map<String, dynamic> json) =>
    SearchScholarship$Categories$Item(
      code: json['code'] as String?,
    );

Map<String, dynamic> _$SearchScholarship$Categories$ItemToJson(
    SearchScholarship$Categories$Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  return val;
}

SearchScholarship$FinStatus _$SearchScholarship$FinStatusFromJson(
        Map<String, dynamic> json) =>
    SearchScholarship$FinStatus(
      familyIncome: json['family_income'] as String?,
    );

Map<String, dynamic> _$SearchScholarship$FinStatusToJson(
    SearchScholarship$FinStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('family_income', instance.familyIncome);
  return val;
}

SearchScholarship$CasteCategory$Item
    _$SearchScholarship$CasteCategory$ItemFromJson(Map<String, dynamic> json) =>
        SearchScholarship$CasteCategory$Item(
          caste: json['caste'] as String?,
        );

Map<String, dynamic> _$SearchScholarship$CasteCategory$ItemToJson(
    SearchScholarship$CasteCategory$Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('caste', instance.caste);
  return val;
}

CourseDeepSearch$SearchParameters$Item
    _$CourseDeepSearch$SearchParameters$ItemFromJson(
            Map<String, dynamic> json) =>
        CourseDeepSearch$SearchParameters$Item(
          name: json['name'] as String?,
          value: json['value'] as String?,
        );

Map<String, dynamic> _$CourseDeepSearch$SearchParameters$ItemToJson(
    CourseDeepSearch$SearchParameters$Item instance) {
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

InitCourse$AdditionalFormData _$InitCourse$AdditionalFormDataFromJson(
        Map<String, dynamic> json) =>
    InitCourse$AdditionalFormData(
      submissionId: json['submissionId'] as String?,
      data:
          (json['data'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
              [],
    );

Map<String, dynamic> _$InitCourse$AdditionalFormDataToJson(
    InitCourse$AdditionalFormData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('submissionId', instance.submissionId);
  writeNotNull('data', instance.data);
  return val;
}

InitCourseResponse$AdditionalFormData
    _$InitCourseResponse$AdditionalFormDataFromJson(
            Map<String, dynamic> json) =>
        InitCourseResponse$AdditionalFormData(
          submissionId: json['submissionId'] as String?,
          data: (json['data'] as List<dynamic>?)
                  ?.map((e) => e as Object)
                  .toList() ??
              [],
        );

Map<String, dynamic> _$InitCourseResponse$AdditionalFormDataToJson(
    InitCourseResponse$AdditionalFormData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('submissionId', instance.submissionId);
  writeNotNull('data', instance.data);
  return val;
}

ConfirmCourseResponse$AdditionalFormData
    _$ConfirmCourseResponse$AdditionalFormDataFromJson(
            Map<String, dynamic> json) =>
        ConfirmCourseResponse$AdditionalFormData(
          submissionId: json['submissionId'] as String?,
          data: (json['data'] as List<dynamic>?)
                  ?.map((e) => e as Object)
                  .toList() ??
              [],
        );

Map<String, dynamic> _$ConfirmCourseResponse$AdditionalFormDataToJson(
    ConfirmCourseResponse$AdditionalFormData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('submissionId', instance.submissionId);
  writeNotNull('data', instance.data);
  return val;
}

CourseStatusResponse$AdditionalFormData
    _$CourseStatusResponse$AdditionalFormDataFromJson(
            Map<String, dynamic> json) =>
        CourseStatusResponse$AdditionalFormData(
          submissionId: json['submissionId'] as String?,
          data: (json['data'] as List<dynamic>?)
                  ?.map((e) => e as Object)
                  .toList() ??
              [],
        );

Map<String, dynamic> _$CourseStatusResponse$AdditionalFormDataToJson(
    CourseStatusResponse$AdditionalFormData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('submissionId', instance.submissionId);
  writeNotNull('data', instance.data);
  return val;
}

Acknowledgement$Message _$Acknowledgement$MessageFromJson(
        Map<String, dynamic> json) =>
    Acknowledgement$Message(
      ack: json['ack'] == null
          ? null
          : Acknowledgement$Message$Ack.fromJson(
              json['ack'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Acknowledgement$MessageToJson(
    Acknowledgement$Message instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ack', instance.ack?.toJson());
  return val;
}

SearchJob$Company$Locations$Item _$SearchJob$Company$Locations$ItemFromJson(
        Map<String, dynamic> json) =>
    SearchJob$Company$Locations$Item(
      city: json['city'] as String?,
    );

Map<String, dynamic> _$SearchJob$Company$Locations$ItemToJson(
    SearchJob$Company$Locations$Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('city', instance.city);
  return val;
}

Acknowledgement$Message$Ack _$Acknowledgement$Message$AckFromJson(
        Map<String, dynamic> json) =>
    Acknowledgement$Message$Ack(
      status: acknowledgement$Message$AckStatusFromJson(json['status']),
    );

Map<String, dynamic> _$Acknowledgement$Message$AckToJson(
    Acknowledgement$Message$Ack instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'status', acknowledgement$Message$AckStatusToJson(instance.status));
  return val;
}
