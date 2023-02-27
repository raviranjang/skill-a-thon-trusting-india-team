// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'job_seeker_api.enums.swagger.dart' as enums;

part 'job_seeker_api.models.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class SearchJob {
  SearchJob({
    this.title,
    this.company,
    this.skills,
  });

  factory SearchJob.fromJson(Map<String, dynamic> json) =>
      _$SearchJobFromJson(json);

  @JsonKey(name: 'title', includeIfNull: false)
  final SearchJob$Title? title;
  @JsonKey(name: 'company', includeIfNull: false)
  final SearchJob$Company? company;
  @JsonKey(
      name: 'skills', includeIfNull: false, defaultValue: <SearchJob$Skills>[])
  final List<SearchJob$Skills>? skills;
  static const fromJsonFactory = _$SearchJobFromJson;
  static const toJsonFactory = _$SearchJobToJson;
  Map<String, dynamic> toJson() => _$SearchJobToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchJob &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.company, company) ||
                const DeepCollectionEquality()
                    .equals(other.company, company)) &&
            (identical(other.skills, skills) ||
                const DeepCollectionEquality().equals(other.skills, skills)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(company) ^
      const DeepCollectionEquality().hash(skills) ^
      runtimeType.hashCode;
}

extension $SearchJobExtension on SearchJob {
  SearchJob copyWith(
      {SearchJob$Title? title,
      SearchJob$Company? company,
      List<SearchJob$Skills>? skills}) {
    return SearchJob(
        title: title ?? this.title,
        company: company ?? this.company,
        skills: skills ?? this.skills);
  }

  SearchJob copyWithWrapped(
      {Wrapped<SearchJob$Title?>? title,
      Wrapped<SearchJob$Company?>? company,
      Wrapped<List<SearchJob$Skills>?>? skills}) {
    return SearchJob(
        title: (title != null ? title.value : this.title),
        company: (company != null ? company.value : this.company),
        skills: (skills != null ? skills.value : this.skills));
  }
}

@JsonSerializable(explicitToJson: true)
class SearchJobsResponse {
  SearchJobsResponse({
    required this.context,
    this.jobProviderPlatform,
    this.jobResults,
  });

  factory SearchJobsResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchJobsResponseFromJson(json);

  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  @JsonKey(name: 'jobProviderPlatform', includeIfNull: false)
  final String? jobProviderPlatform;
  @JsonKey(name: 'jobResults', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? jobResults;
  static const fromJsonFactory = _$SearchJobsResponseFromJson;
  static const toJsonFactory = _$SearchJobsResponseToJson;
  Map<String, dynamic> toJson() => _$SearchJobsResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchJobsResponse &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.jobProviderPlatform, jobProviderPlatform) ||
                const DeepCollectionEquality()
                    .equals(other.jobProviderPlatform, jobProviderPlatform)) &&
            (identical(other.jobResults, jobResults) ||
                const DeepCollectionEquality()
                    .equals(other.jobResults, jobResults)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(jobProviderPlatform) ^
      const DeepCollectionEquality().hash(jobResults) ^
      runtimeType.hashCode;
}

extension $SearchJobsResponseExtension on SearchJobsResponse {
  SearchJobsResponse copyWith(
      {Context? context,
      String? jobProviderPlatform,
      List<Object>? jobResults}) {
    return SearchJobsResponse(
        context: context ?? this.context,
        jobProviderPlatform: jobProviderPlatform ?? this.jobProviderPlatform,
        jobResults: jobResults ?? this.jobResults);
  }

  SearchJobsResponse copyWithWrapped(
      {Wrapped<Context>? context,
      Wrapped<String?>? jobProviderPlatform,
      Wrapped<List<Object>?>? jobResults}) {
    return SearchJobsResponse(
        context: (context != null ? context.value : this.context),
        jobProviderPlatform: (jobProviderPlatform != null
            ? jobProviderPlatform.value
            : this.jobProviderPlatform),
        jobResults: (jobResults != null ? jobResults.value : this.jobResults));
  }
}

@JsonSerializable(explicitToJson: true)
class JobResult {
  JobResult({
    required this.company,
    required this.jobs,
  });

  factory JobResult.fromJson(Map<String, dynamic> json) =>
      _$JobResultFromJson(json);

  @JsonKey(name: 'company', includeIfNull: false)
  final Company company;
  @JsonKey(name: 'jobs', includeIfNull: false, defaultValue: <Object>[])
  final List<Object> jobs;
  static const fromJsonFactory = _$JobResultFromJson;
  static const toJsonFactory = _$JobResultToJson;
  Map<String, dynamic> toJson() => _$JobResultToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is JobResult &&
            (identical(other.company, company) ||
                const DeepCollectionEquality()
                    .equals(other.company, company)) &&
            (identical(other.jobs, jobs) ||
                const DeepCollectionEquality().equals(other.jobs, jobs)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(company) ^
      const DeepCollectionEquality().hash(jobs) ^
      runtimeType.hashCode;
}

extension $JobResultExtension on JobResult {
  JobResult copyWith({Company? company, List<Object>? jobs}) {
    return JobResult(company: company ?? this.company, jobs: jobs ?? this.jobs);
  }

  JobResult copyWithWrapped(
      {Wrapped<Company>? company, Wrapped<List<Object>>? jobs}) {
    return JobResult(
        company: (company != null ? company.value : this.company),
        jobs: (jobs != null ? jobs.value : this.jobs));
  }
}

@JsonSerializable(explicitToJson: true)
class Company {
  Company({
    this.id,
    this.name,
    this.imageLink,
  });

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);

  @JsonKey(name: 'id', includeIfNull: false)
  final String? id;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'imageLink', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? imageLink;
  static const fromJsonFactory = _$CompanyFromJson;
  static const toJsonFactory = _$CompanyToJson;
  Map<String, dynamic> toJson() => _$CompanyToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Company &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageLink, imageLink) ||
                const DeepCollectionEquality()
                    .equals(other.imageLink, imageLink)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageLink) ^
      runtimeType.hashCode;
}

extension $CompanyExtension on Company {
  Company copyWith({String? id, String? name, List<Object>? imageLink}) {
    return Company(
        id: id ?? this.id,
        name: name ?? this.name,
        imageLink: imageLink ?? this.imageLink);
  }

  Company copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<List<Object>?>? imageLink}) {
    return Company(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        imageLink: (imageLink != null ? imageLink.value : this.imageLink));
  }
}

@JsonSerializable(explicitToJson: true)
class Image {
  Image({
    required this.url,
    this.size,
  });

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

  @JsonKey(name: 'url', includeIfNull: false)
  final String url;
  @JsonKey(name: 'size', includeIfNull: false)
  final String? size;
  static const fromJsonFactory = _$ImageFromJson;
  static const toJsonFactory = _$ImageToJson;
  Map<String, dynamic> toJson() => _$ImageToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Image &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(size) ^
      runtimeType.hashCode;
}

extension $ImageExtension on Image {
  Image copyWith({String? url, String? size}) {
    return Image(url: url ?? this.url, size: size ?? this.size);
  }

  Image copyWithWrapped({Wrapped<String>? url, Wrapped<String?>? size}) {
    return Image(
        url: (url != null ? url.value : this.url),
        size: (size != null ? size.value : this.size));
  }
}

@JsonSerializable(explicitToJson: true)
class JobSummary {
  JobSummary({
    required this.jobId,
    this.role,
    this.description,
    this.additionalDesc,
    this.locations,
  });

  factory JobSummary.fromJson(Map<String, dynamic> json) =>
      _$JobSummaryFromJson(json);

  @JsonKey(name: 'jobId', includeIfNull: false)
  final String jobId;
  @JsonKey(name: 'role', includeIfNull: false)
  final String? role;
  @JsonKey(name: 'description', includeIfNull: false)
  final String? description;
  @JsonKey(name: 'additionalDesc', includeIfNull: false)
  final AdditionalDesc? additionalDesc;
  @JsonKey(name: 'locations', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? locations;
  static const fromJsonFactory = _$JobSummaryFromJson;
  static const toJsonFactory = _$JobSummaryToJson;
  Map<String, dynamic> toJson() => _$JobSummaryToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is JobSummary &&
            (identical(other.jobId, jobId) ||
                const DeepCollectionEquality().equals(other.jobId, jobId)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.additionalDesc, additionalDesc) ||
                const DeepCollectionEquality()
                    .equals(other.additionalDesc, additionalDesc)) &&
            (identical(other.locations, locations) ||
                const DeepCollectionEquality()
                    .equals(other.locations, locations)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobId) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(additionalDesc) ^
      const DeepCollectionEquality().hash(locations) ^
      runtimeType.hashCode;
}

extension $JobSummaryExtension on JobSummary {
  JobSummary copyWith(
      {String? jobId,
      String? role,
      String? description,
      AdditionalDesc? additionalDesc,
      List<Object>? locations}) {
    return JobSummary(
        jobId: jobId ?? this.jobId,
        role: role ?? this.role,
        description: description ?? this.description,
        additionalDesc: additionalDesc ?? this.additionalDesc,
        locations: locations ?? this.locations);
  }

  JobSummary copyWithWrapped(
      {Wrapped<String>? jobId,
      Wrapped<String?>? role,
      Wrapped<String?>? description,
      Wrapped<AdditionalDesc?>? additionalDesc,
      Wrapped<List<Object>?>? locations}) {
    return JobSummary(
        jobId: (jobId != null ? jobId.value : this.jobId),
        role: (role != null ? role.value : this.role),
        description:
            (description != null ? description.value : this.description),
        additionalDesc: (additionalDesc != null
            ? additionalDesc.value
            : this.additionalDesc),
        locations: (locations != null ? locations.value : this.locations));
  }
}

@JsonSerializable(explicitToJson: true)
class AdditionalDesc {
  AdditionalDesc({
    this.url,
    this.contentType,
  });

  factory AdditionalDesc.fromJson(Map<String, dynamic> json) =>
      _$AdditionalDescFromJson(json);

  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'contentType', includeIfNull: false)
  final String? contentType;
  static const fromJsonFactory = _$AdditionalDescFromJson;
  static const toJsonFactory = _$AdditionalDescToJson;
  Map<String, dynamic> toJson() => _$AdditionalDescToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AdditionalDesc &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.contentType, contentType) ||
                const DeepCollectionEquality()
                    .equals(other.contentType, contentType)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(contentType) ^
      runtimeType.hashCode;
}

extension $AdditionalDescExtension on AdditionalDesc {
  AdditionalDesc copyWith({String? url, String? contentType}) {
    return AdditionalDesc(
        url: url ?? this.url, contentType: contentType ?? this.contentType);
  }

  AdditionalDesc copyWithWrapped(
      {Wrapped<String?>? url, Wrapped<String?>? contentType}) {
    return AdditionalDesc(
        url: (url != null ? url.value : this.url),
        contentType:
            (contentType != null ? contentType.value : this.contentType));
  }
}

@JsonSerializable(explicitToJson: true)
class Location {
  Location({
    required this.id,
    this.city,
    this.cityCode,
    this.state,
    this.country,
    this.countryCode,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  @JsonKey(name: 'id', includeIfNull: false)
  final String id;
  @JsonKey(name: 'city', includeIfNull: false)
  final String? city;
  @JsonKey(name: 'cityCode', includeIfNull: false)
  final String? cityCode;
  @JsonKey(name: 'state', includeIfNull: false)
  final String? state;
  @JsonKey(name: 'country', includeIfNull: false)
  final String? country;
  @JsonKey(name: 'countryCode', includeIfNull: false)
  final String? countryCode;
  static const fromJsonFactory = _$LocationFromJson;
  static const toJsonFactory = _$LocationToJson;
  Map<String, dynamic> toJson() => _$LocationToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Location &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.cityCode, cityCode) ||
                const DeepCollectionEquality()
                    .equals(other.cityCode, cityCode)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(cityCode) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(countryCode) ^
      runtimeType.hashCode;
}

extension $LocationExtension on Location {
  Location copyWith(
      {String? id,
      String? city,
      String? cityCode,
      String? state,
      String? country,
      String? countryCode}) {
    return Location(
        id: id ?? this.id,
        city: city ?? this.city,
        cityCode: cityCode ?? this.cityCode,
        state: state ?? this.state,
        country: country ?? this.country,
        countryCode: countryCode ?? this.countryCode);
  }

  Location copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String?>? city,
      Wrapped<String?>? cityCode,
      Wrapped<String?>? state,
      Wrapped<String?>? country,
      Wrapped<String?>? countryCode}) {
    return Location(
        id: (id != null ? id.value : this.id),
        city: (city != null ? city.value : this.city),
        cityCode: (cityCode != null ? cityCode.value : this.cityCode),
        state: (state != null ? state.value : this.state),
        country: (country != null ? country.value : this.country),
        countryCode:
            (countryCode != null ? countryCode.value : this.countryCode));
  }
}

@JsonSerializable(explicitToJson: true)
class NameValue {
  NameValue({
    this.name,
    this.value,
  });

  factory NameValue.fromJson(Map<String, dynamic> json) =>
      _$NameValueFromJson(json);

  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'value', includeIfNull: false)
  final String? value;
  static const fromJsonFactory = _$NameValueFromJson;
  static const toJsonFactory = _$NameValueToJson;
  Map<String, dynamic> toJson() => _$NameValueToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NameValue &&
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

extension $NameValueExtension on NameValue {
  NameValue copyWith({String? name, String? value}) {
    return NameValue(name: name ?? this.name, value: value ?? this.value);
  }

  NameValue copyWithWrapped({Wrapped<String?>? name, Wrapped<String?>? value}) {
    return NameValue(
        name: (name != null ? name.value : this.name),
        value: (value != null ? value.value : this.value));
  }
}

@JsonSerializable(explicitToJson: true)
class SelectJob {
  SelectJob({
    required this.companyId,
    this.jobs,
    required this.context,
  });

  factory SelectJob.fromJson(Map<String, dynamic> json) =>
      _$SelectJobFromJson(json);

  @JsonKey(name: 'companyId', includeIfNull: false)
  final String companyId;
  @JsonKey(name: 'jobs', includeIfNull: false)
  final SelectJob$Jobs? jobs;
  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  static const fromJsonFactory = _$SelectJobFromJson;
  static const toJsonFactory = _$SelectJobToJson;
  Map<String, dynamic> toJson() => _$SelectJobToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectJob &&
            (identical(other.companyId, companyId) ||
                const DeepCollectionEquality()
                    .equals(other.companyId, companyId)) &&
            (identical(other.jobs, jobs) ||
                const DeepCollectionEquality().equals(other.jobs, jobs)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(companyId) ^
      const DeepCollectionEquality().hash(jobs) ^
      const DeepCollectionEquality().hash(context) ^
      runtimeType.hashCode;
}

extension $SelectJobExtension on SelectJob {
  SelectJob copyWith(
      {String? companyId, SelectJob$Jobs? jobs, Context? context}) {
    return SelectJob(
        companyId: companyId ?? this.companyId,
        jobs: jobs ?? this.jobs,
        context: context ?? this.context);
  }

  SelectJob copyWithWrapped(
      {Wrapped<String>? companyId,
      Wrapped<SelectJob$Jobs?>? jobs,
      Wrapped<Context>? context}) {
    return SelectJob(
        companyId: (companyId != null ? companyId.value : this.companyId),
        jobs: (jobs != null ? jobs.value : this.jobs),
        context: (context != null ? context.value : this.context));
  }
}

@JsonSerializable(explicitToJson: true)
class SelectedJobResponse {
  SelectedJobResponse({
    required this.context,
    this.company,
    required this.selectedJobs,
  });

  factory SelectedJobResponse.fromJson(Map<String, dynamic> json) =>
      _$SelectedJobResponseFromJson(json);

  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  @JsonKey(name: 'company', includeIfNull: false)
  final Company? company;
  @JsonKey(name: 'selectedJobs', includeIfNull: false, defaultValue: <Object>[])
  final List<Object> selectedJobs;
  static const fromJsonFactory = _$SelectedJobResponseFromJson;
  static const toJsonFactory = _$SelectedJobResponseToJson;
  Map<String, dynamic> toJson() => _$SelectedJobResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectedJobResponse &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.company, company) ||
                const DeepCollectionEquality()
                    .equals(other.company, company)) &&
            (identical(other.selectedJobs, selectedJobs) ||
                const DeepCollectionEquality()
                    .equals(other.selectedJobs, selectedJobs)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(company) ^
      const DeepCollectionEquality().hash(selectedJobs) ^
      runtimeType.hashCode;
}

extension $SelectedJobResponseExtension on SelectedJobResponse {
  SelectedJobResponse copyWith(
      {Context? context, Company? company, List<Object>? selectedJobs}) {
    return SelectedJobResponse(
        context: context ?? this.context,
        company: company ?? this.company,
        selectedJobs: selectedJobs ?? this.selectedJobs);
  }

  SelectedJobResponse copyWithWrapped(
      {Wrapped<Context>? context,
      Wrapped<Company?>? company,
      Wrapped<List<Object>>? selectedJobs}) {
    return SelectedJobResponse(
        context: (context != null ? context.value : this.context),
        company: (company != null ? company.value : this.company),
        selectedJobs:
            (selectedJobs != null ? selectedJobs.value : this.selectedJobs));
  }
}

@JsonSerializable(explicitToJson: true)
class SelectedJob {
  SelectedJob({
    required this.jobId,
    required this.role,
    this.description,
    this.additionalDesc,
    this.locations,
    this.fulfillmentCategory,
    this.educationalQualifications,
    this.workExperience,
    this.responsibilities,
    this.employmentInformation,
    this.compensation,
    this.additionalFormUrl,
  });

  factory SelectedJob.fromJson(Map<String, dynamic> json) =>
      _$SelectedJobFromJson(json);

  @JsonKey(name: 'jobId', includeIfNull: false)
  final String jobId;
  @JsonKey(name: 'role', includeIfNull: false)
  final String role;
  @JsonKey(name: 'description', includeIfNull: false)
  final String? description;
  @JsonKey(name: 'additionalDesc', includeIfNull: false)
  final AdditionalDesc? additionalDesc;
  @JsonKey(name: 'locations', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? locations;
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
  final SelectedJob$WorkExperience? workExperience;
  @JsonKey(
      name: 'responsibilities', includeIfNull: false, defaultValue: <String>[])
  final List<String>? responsibilities;
  @JsonKey(name: 'employmentInformation', includeIfNull: false)
  final SelectedJob$EmploymentInformation? employmentInformation;
  @JsonKey(name: 'compensation', includeIfNull: false)
  final SelectedJob$Compensation? compensation;
  @JsonKey(name: 'additionalFormUrl', includeIfNull: false)
  final String? additionalFormUrl;
  static const fromJsonFactory = _$SelectedJobFromJson;
  static const toJsonFactory = _$SelectedJobToJson;
  Map<String, dynamic> toJson() => _$SelectedJobToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectedJob &&
            (identical(other.jobId, jobId) ||
                const DeepCollectionEquality().equals(other.jobId, jobId)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.additionalDesc, additionalDesc) ||
                const DeepCollectionEquality()
                    .equals(other.additionalDesc, additionalDesc)) &&
            (identical(other.locations, locations) ||
                const DeepCollectionEquality()
                    .equals(other.locations, locations)) &&
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
                    .equals(other.compensation, compensation)) &&
            (identical(other.additionalFormUrl, additionalFormUrl) ||
                const DeepCollectionEquality()
                    .equals(other.additionalFormUrl, additionalFormUrl)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobId) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(additionalDesc) ^
      const DeepCollectionEquality().hash(locations) ^
      const DeepCollectionEquality().hash(fulfillmentCategory) ^
      const DeepCollectionEquality().hash(educationalQualifications) ^
      const DeepCollectionEquality().hash(workExperience) ^
      const DeepCollectionEquality().hash(responsibilities) ^
      const DeepCollectionEquality().hash(employmentInformation) ^
      const DeepCollectionEquality().hash(compensation) ^
      const DeepCollectionEquality().hash(additionalFormUrl) ^
      runtimeType.hashCode;
}

extension $SelectedJobExtension on SelectedJob {
  SelectedJob copyWith(
      {String? jobId,
      String? role,
      String? description,
      AdditionalDesc? additionalDesc,
      List<Object>? locations,
      List<Object>? fulfillmentCategory,
      List<Object>? educationalQualifications,
      SelectedJob$WorkExperience? workExperience,
      List<String>? responsibilities,
      SelectedJob$EmploymentInformation? employmentInformation,
      SelectedJob$Compensation? compensation,
      String? additionalFormUrl}) {
    return SelectedJob(
        jobId: jobId ?? this.jobId,
        role: role ?? this.role,
        description: description ?? this.description,
        additionalDesc: additionalDesc ?? this.additionalDesc,
        locations: locations ?? this.locations,
        fulfillmentCategory: fulfillmentCategory ?? this.fulfillmentCategory,
        educationalQualifications:
            educationalQualifications ?? this.educationalQualifications,
        workExperience: workExperience ?? this.workExperience,
        responsibilities: responsibilities ?? this.responsibilities,
        employmentInformation:
            employmentInformation ?? this.employmentInformation,
        compensation: compensation ?? this.compensation,
        additionalFormUrl: additionalFormUrl ?? this.additionalFormUrl);
  }

  SelectedJob copyWithWrapped(
      {Wrapped<String>? jobId,
      Wrapped<String>? role,
      Wrapped<String?>? description,
      Wrapped<AdditionalDesc?>? additionalDesc,
      Wrapped<List<Object>?>? locations,
      Wrapped<List<Object>?>? fulfillmentCategory,
      Wrapped<List<Object>?>? educationalQualifications,
      Wrapped<SelectedJob$WorkExperience?>? workExperience,
      Wrapped<List<String>?>? responsibilities,
      Wrapped<SelectedJob$EmploymentInformation?>? employmentInformation,
      Wrapped<SelectedJob$Compensation?>? compensation,
      Wrapped<String?>? additionalFormUrl}) {
    return SelectedJob(
        jobId: (jobId != null ? jobId.value : this.jobId),
        role: (role != null ? role.value : this.role),
        description:
            (description != null ? description.value : this.description),
        additionalDesc: (additionalDesc != null
            ? additionalDesc.value
            : this.additionalDesc),
        locations: (locations != null ? locations.value : this.locations),
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
            (compensation != null ? compensation.value : this.compensation),
        additionalFormUrl: (additionalFormUrl != null
            ? additionalFormUrl.value
            : this.additionalFormUrl));
  }
}

@JsonSerializable(explicitToJson: true)
class JobFulfillmentCategory {
  JobFulfillmentCategory({
    this.id,
    this.type,
  });

  factory JobFulfillmentCategory.fromJson(Map<String, dynamic> json) =>
      _$JobFulfillmentCategoryFromJson(json);

  @JsonKey(name: 'id', includeIfNull: false)
  final String? id;
  @JsonKey(name: 'type', includeIfNull: false)
  final String? type;
  static const fromJsonFactory = _$JobFulfillmentCategoryFromJson;
  static const toJsonFactory = _$JobFulfillmentCategoryToJson;
  Map<String, dynamic> toJson() => _$JobFulfillmentCategoryToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is JobFulfillmentCategory &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $JobFulfillmentCategoryExtension on JobFulfillmentCategory {
  JobFulfillmentCategory copyWith({String? id, String? type}) {
    return JobFulfillmentCategory(id: id ?? this.id, type: type ?? this.type);
  }

  JobFulfillmentCategory copyWithWrapped(
      {Wrapped<String?>? id, Wrapped<String?>? type}) {
    return JobFulfillmentCategory(
        id: (id != null ? id.value : this.id),
        type: (type != null ? type.value : this.type));
  }
}

@JsonSerializable(explicitToJson: true)
class EducationalQualification {
  EducationalQualification({
    this.category,
    this.qualification,
  });

  factory EducationalQualification.fromJson(Map<String, dynamic> json) =>
      _$EducationalQualificationFromJson(json);

  @JsonKey(name: 'category', includeIfNull: false)
  final String? category;
  @JsonKey(
      name: 'qualification', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? qualification;
  static const fromJsonFactory = _$EducationalQualificationFromJson;
  static const toJsonFactory = _$EducationalQualificationToJson;
  Map<String, dynamic> toJson() => _$EducationalQualificationToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EducationalQualification &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.qualification, qualification) ||
                const DeepCollectionEquality()
                    .equals(other.qualification, qualification)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(qualification) ^
      runtimeType.hashCode;
}

extension $EducationalQualificationExtension on EducationalQualification {
  EducationalQualification copyWith(
      {String? category, List<Object>? qualification}) {
    return EducationalQualification(
        category: category ?? this.category,
        qualification: qualification ?? this.qualification);
  }

  EducationalQualification copyWithWrapped(
      {Wrapped<String?>? category, Wrapped<List<Object>?>? qualification}) {
    return EducationalQualification(
        category: (category != null ? category.value : this.category),
        qualification:
            (qualification != null ? qualification.value : this.qualification));
  }
}

@JsonSerializable(explicitToJson: true)
class Qualification {
  Qualification({
    this.code,
    this.name,
    this.value,
  });

  factory Qualification.fromJson(Map<String, dynamic> json) =>
      _$QualificationFromJson(json);

  @JsonKey(name: 'code', includeIfNull: false)
  final String? code;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'value', includeIfNull: false)
  final String? value;
  static const fromJsonFactory = _$QualificationFromJson;
  static const toJsonFactory = _$QualificationToJson;
  Map<String, dynamic> toJson() => _$QualificationToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Qualification &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(value) ^
      runtimeType.hashCode;
}

extension $QualificationExtension on Qualification {
  Qualification copyWith({String? code, String? name, String? value}) {
    return Qualification(
        code: code ?? this.code,
        name: name ?? this.name,
        value: value ?? this.value);
  }

  Qualification copyWithWrapped(
      {Wrapped<String?>? code,
      Wrapped<String?>? name,
      Wrapped<String?>? value}) {
    return Qualification(
        code: (code != null ? code.value : this.code),
        name: (name != null ? name.value : this.name),
        value: (value != null ? value.value : this.value));
  }
}

@JsonSerializable(explicitToJson: true)
class WorkExperience {
  WorkExperience({
    this.code,
    this.name,
    this.value,
  });

  factory WorkExperience.fromJson(Map<String, dynamic> json) =>
      _$WorkExperienceFromJson(json);

  @JsonKey(name: 'code', includeIfNull: false)
  final String? code;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'value', includeIfNull: false)
  final String? value;
  static const fromJsonFactory = _$WorkExperienceFromJson;
  static const toJsonFactory = _$WorkExperienceToJson;
  Map<String, dynamic> toJson() => _$WorkExperienceToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WorkExperience &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(value) ^
      runtimeType.hashCode;
}

extension $WorkExperienceExtension on WorkExperience {
  WorkExperience copyWith({String? code, String? name, String? value}) {
    return WorkExperience(
        code: code ?? this.code,
        name: name ?? this.name,
        value: value ?? this.value);
  }

  WorkExperience copyWithWrapped(
      {Wrapped<String?>? code,
      Wrapped<String?>? name,
      Wrapped<String?>? value}) {
    return WorkExperience(
        code: (code != null ? code.value : this.code),
        name: (name != null ? name.value : this.name),
        value: (value != null ? value.value : this.value));
  }
}

@JsonSerializable(explicitToJson: true)
class EmploymentInformation {
  EmploymentInformation({
    this.code,
    this.name,
    this.value,
  });

  factory EmploymentInformation.fromJson(Map<String, dynamic> json) =>
      _$EmploymentInformationFromJson(json);

  @JsonKey(name: 'code', includeIfNull: false)
  final String? code;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'value', includeIfNull: false)
  final String? value;
  static const fromJsonFactory = _$EmploymentInformationFromJson;
  static const toJsonFactory = _$EmploymentInformationToJson;
  Map<String, dynamic> toJson() => _$EmploymentInformationToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmploymentInformation &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(value) ^
      runtimeType.hashCode;
}

extension $EmploymentInformationExtension on EmploymentInformation {
  EmploymentInformation copyWith({String? code, String? name, String? value}) {
    return EmploymentInformation(
        code: code ?? this.code,
        name: name ?? this.name,
        value: value ?? this.value);
  }

  EmploymentInformation copyWithWrapped(
      {Wrapped<String?>? code,
      Wrapped<String?>? name,
      Wrapped<String?>? value}) {
    return EmploymentInformation(
        code: (code != null ? code.value : this.code),
        name: (name != null ? name.value : this.name),
        value: (value != null ? value.value : this.value));
  }
}

@JsonSerializable(explicitToJson: true)
class SalaryInformation {
  SalaryInformation({
    this.code,
    this.name,
    this.value,
  });

  factory SalaryInformation.fromJson(Map<String, dynamic> json) =>
      _$SalaryInformationFromJson(json);

  @JsonKey(name: 'code', includeIfNull: false)
  final String? code;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'value', includeIfNull: false)
  final String? value;
  static const fromJsonFactory = _$SalaryInformationFromJson;
  static const toJsonFactory = _$SalaryInformationToJson;
  Map<String, dynamic> toJson() => _$SalaryInformationToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SalaryInformation &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(value) ^
      runtimeType.hashCode;
}

extension $SalaryInformationExtension on SalaryInformation {
  SalaryInformation copyWith({String? code, String? name, String? value}) {
    return SalaryInformation(
        code: code ?? this.code,
        name: name ?? this.name,
        value: value ?? this.value);
  }

  SalaryInformation copyWithWrapped(
      {Wrapped<String?>? code,
      Wrapped<String?>? name,
      Wrapped<String?>? value}) {
    return SalaryInformation(
        code: (code != null ? code.value : this.code),
        name: (name != null ? name.value : this.name),
        value: (value != null ? value.value : this.value));
  }
}

@JsonSerializable(explicitToJson: true)
class InitJob {
  InitJob({
    required this.context,
    required this.companyId,
    this.jobs,
    this.jobFulfillments,
    this.additionalFormData,
  });

  factory InitJob.fromJson(Map<String, dynamic> json) =>
      _$InitJobFromJson(json);

  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  @JsonKey(name: 'companyId', includeIfNull: false)
  final String companyId;
  @JsonKey(name: 'jobs', includeIfNull: false)
  final InitJob$Jobs? jobs;
  @JsonKey(
      name: 'jobFulfillments',
      includeIfNull: false,
      defaultValue: <JobFulfillment>[])
  final List<JobFulfillment>? jobFulfillments;
  @JsonKey(name: 'additionalFormData', includeIfNull: false)
  final InitJob$AdditionalFormData? additionalFormData;
  static const fromJsonFactory = _$InitJobFromJson;
  static const toJsonFactory = _$InitJobToJson;
  Map<String, dynamic> toJson() => _$InitJobToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitJob &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.companyId, companyId) ||
                const DeepCollectionEquality()
                    .equals(other.companyId, companyId)) &&
            (identical(other.jobs, jobs) ||
                const DeepCollectionEquality().equals(other.jobs, jobs)) &&
            (identical(other.jobFulfillments, jobFulfillments) ||
                const DeepCollectionEquality()
                    .equals(other.jobFulfillments, jobFulfillments)) &&
            (identical(other.additionalFormData, additionalFormData) ||
                const DeepCollectionEquality()
                    .equals(other.additionalFormData, additionalFormData)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(companyId) ^
      const DeepCollectionEquality().hash(jobs) ^
      const DeepCollectionEquality().hash(jobFulfillments) ^
      const DeepCollectionEquality().hash(additionalFormData) ^
      runtimeType.hashCode;
}

extension $InitJobExtension on InitJob {
  InitJob copyWith(
      {Context? context,
      String? companyId,
      InitJob$Jobs? jobs,
      List<JobFulfillment>? jobFulfillments,
      InitJob$AdditionalFormData? additionalFormData}) {
    return InitJob(
        context: context ?? this.context,
        companyId: companyId ?? this.companyId,
        jobs: jobs ?? this.jobs,
        jobFulfillments: jobFulfillments ?? this.jobFulfillments,
        additionalFormData: additionalFormData ?? this.additionalFormData);
  }

  InitJob copyWithWrapped(
      {Wrapped<Context>? context,
      Wrapped<String>? companyId,
      Wrapped<InitJob$Jobs?>? jobs,
      Wrapped<List<JobFulfillment>?>? jobFulfillments,
      Wrapped<InitJob$AdditionalFormData?>? additionalFormData}) {
    return InitJob(
        context: (context != null ? context.value : this.context),
        companyId: (companyId != null ? companyId.value : this.companyId),
        jobs: (jobs != null ? jobs.value : this.jobs),
        jobFulfillments: (jobFulfillments != null
            ? jobFulfillments.value
            : this.jobFulfillments),
        additionalFormData: (additionalFormData != null
            ? additionalFormData.value
            : this.additionalFormData));
  }
}

@JsonSerializable(explicitToJson: true)
class JobFulfillment {
  JobFulfillment({
    this.jobFulfillmentCategoryId,
    this.jobApplicantProfile,
  });

  factory JobFulfillment.fromJson(Map<String, dynamic> json) =>
      _$JobFulfillmentFromJson(json);

  @JsonKey(name: 'JobFulfillmentCategoryId', includeIfNull: false)
  final String? jobFulfillmentCategoryId;
  @JsonKey(name: 'jobApplicantProfile', includeIfNull: false)
  final JobApplicantProfile? jobApplicantProfile;
  static const fromJsonFactory = _$JobFulfillmentFromJson;
  static const toJsonFactory = _$JobFulfillmentToJson;
  Map<String, dynamic> toJson() => _$JobFulfillmentToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is JobFulfillment &&
            (identical(
                    other.jobFulfillmentCategoryId, jobFulfillmentCategoryId) ||
                const DeepCollectionEquality().equals(
                    other.jobFulfillmentCategoryId,
                    jobFulfillmentCategoryId)) &&
            (identical(other.jobApplicantProfile, jobApplicantProfile) ||
                const DeepCollectionEquality()
                    .equals(other.jobApplicantProfile, jobApplicantProfile)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobFulfillmentCategoryId) ^
      const DeepCollectionEquality().hash(jobApplicantProfile) ^
      runtimeType.hashCode;
}

extension $JobFulfillmentExtension on JobFulfillment {
  JobFulfillment copyWith(
      {String? jobFulfillmentCategoryId,
      JobApplicantProfile? jobApplicantProfile}) {
    return JobFulfillment(
        jobFulfillmentCategoryId:
            jobFulfillmentCategoryId ?? this.jobFulfillmentCategoryId,
        jobApplicantProfile: jobApplicantProfile ?? this.jobApplicantProfile);
  }

  JobFulfillment copyWithWrapped(
      {Wrapped<String?>? jobFulfillmentCategoryId,
      Wrapped<JobApplicantProfile?>? jobApplicantProfile}) {
    return JobFulfillment(
        jobFulfillmentCategoryId: (jobFulfillmentCategoryId != null
            ? jobFulfillmentCategoryId.value
            : this.jobFulfillmentCategoryId),
        jobApplicantProfile: (jobApplicantProfile != null
            ? jobApplicantProfile.value
            : this.jobApplicantProfile));
  }
}

@JsonSerializable(explicitToJson: true)
class JobApplicantProfile {
  JobApplicantProfile({
    this.name,
    this.languages,
    this.profileUrl,
    this.creds,
    this.skills,
  });

  factory JobApplicantProfile.fromJson(Map<String, dynamic> json) =>
      _$JobApplicantProfileFromJson(json);

  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'languages', includeIfNull: false, defaultValue: <String>[])
  final List<String>? languages;
  @JsonKey(name: 'profileUrl', includeIfNull: false)
  final String? profileUrl;
  @JsonKey(
      name: 'creds', includeIfNull: false, defaultValue: <UserCredential>[])
  final List<UserCredential>? creds;
  @JsonKey(name: 'skills', includeIfNull: false, defaultValue: <String>[])
  final List<String>? skills;
  static const fromJsonFactory = _$JobApplicantProfileFromJson;
  static const toJsonFactory = _$JobApplicantProfileToJson;
  Map<String, dynamic> toJson() => _$JobApplicantProfileToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is JobApplicantProfile &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.languages, languages) ||
                const DeepCollectionEquality()
                    .equals(other.languages, languages)) &&
            (identical(other.profileUrl, profileUrl) ||
                const DeepCollectionEquality()
                    .equals(other.profileUrl, profileUrl)) &&
            (identical(other.creds, creds) ||
                const DeepCollectionEquality().equals(other.creds, creds)) &&
            (identical(other.skills, skills) ||
                const DeepCollectionEquality().equals(other.skills, skills)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(languages) ^
      const DeepCollectionEquality().hash(profileUrl) ^
      const DeepCollectionEquality().hash(creds) ^
      const DeepCollectionEquality().hash(skills) ^
      runtimeType.hashCode;
}

extension $JobApplicantProfileExtension on JobApplicantProfile {
  JobApplicantProfile copyWith(
      {String? name,
      List<String>? languages,
      String? profileUrl,
      List<UserCredential>? creds,
      List<String>? skills}) {
    return JobApplicantProfile(
        name: name ?? this.name,
        languages: languages ?? this.languages,
        profileUrl: profileUrl ?? this.profileUrl,
        creds: creds ?? this.creds,
        skills: skills ?? this.skills);
  }

  JobApplicantProfile copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<List<String>?>? languages,
      Wrapped<String?>? profileUrl,
      Wrapped<List<UserCredential>?>? creds,
      Wrapped<List<String>?>? skills}) {
    return JobApplicantProfile(
        name: (name != null ? name.value : this.name),
        languages: (languages != null ? languages.value : this.languages),
        profileUrl: (profileUrl != null ? profileUrl.value : this.profileUrl),
        creds: (creds != null ? creds.value : this.creds),
        skills: (skills != null ? skills.value : this.skills));
  }
}

@JsonSerializable(explicitToJson: true)
class UserCredential {
  UserCredential({
    this.url,
    this.type,
  });

  factory UserCredential.fromJson(Map<String, dynamic> json) =>
      _$UserCredentialFromJson(json);

  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'type', includeIfNull: false)
  final String? type;
  static const fromJsonFactory = _$UserCredentialFromJson;
  static const toJsonFactory = _$UserCredentialToJson;
  Map<String, dynamic> toJson() => _$UserCredentialToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserCredential &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $UserCredentialExtension on UserCredential {
  UserCredential copyWith({String? url, String? type}) {
    return UserCredential(url: url ?? this.url, type: type ?? this.type);
  }

  UserCredential copyWithWrapped(
      {Wrapped<String?>? url, Wrapped<String?>? type}) {
    return UserCredential(
        url: (url != null ? url.value : this.url),
        type: (type != null ? type.value : this.type));
  }
}

@JsonSerializable(explicitToJson: true)
class JobAdditionalFormData {
  JobAdditionalFormData({
    this.formInputKey,
    this.formInputValue,
  });

  factory JobAdditionalFormData.fromJson(Map<String, dynamic> json) =>
      _$JobAdditionalFormDataFromJson(json);

  @JsonKey(name: 'formInputKey', includeIfNull: false)
  final String? formInputKey;
  @JsonKey(name: 'formInputValue', includeIfNull: false)
  final String? formInputValue;
  static const fromJsonFactory = _$JobAdditionalFormDataFromJson;
  static const toJsonFactory = _$JobAdditionalFormDataToJson;
  Map<String, dynamic> toJson() => _$JobAdditionalFormDataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is JobAdditionalFormData &&
            (identical(other.formInputKey, formInputKey) ||
                const DeepCollectionEquality()
                    .equals(other.formInputKey, formInputKey)) &&
            (identical(other.formInputValue, formInputValue) ||
                const DeepCollectionEquality()
                    .equals(other.formInputValue, formInputValue)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(formInputKey) ^
      const DeepCollectionEquality().hash(formInputValue) ^
      runtimeType.hashCode;
}

extension $JobAdditionalFormDataExtension on JobAdditionalFormData {
  JobAdditionalFormData copyWith(
      {String? formInputKey, String? formInputValue}) {
    return JobAdditionalFormData(
        formInputKey: formInputKey ?? this.formInputKey,
        formInputValue: formInputValue ?? this.formInputValue);
  }

  JobAdditionalFormData copyWithWrapped(
      {Wrapped<String?>? formInputKey, Wrapped<String?>? formInputValue}) {
    return JobAdditionalFormData(
        formInputKey:
            (formInputKey != null ? formInputKey.value : this.formInputKey),
        formInputValue: (formInputValue != null
            ? formInputValue.value
            : this.formInputValue));
  }
}

@JsonSerializable(explicitToJson: true)
class InitJobResponse {
  InitJobResponse({
    required this.context,
    required this.company,
    required this.initiatedJobs,
    this.jobFulfillments,
    this.additionalFormUrl,
    this.additionalFormData,
  });

  factory InitJobResponse.fromJson(Map<String, dynamic> json) =>
      _$InitJobResponseFromJson(json);

  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  @JsonKey(name: 'company', includeIfNull: false)
  final Company company;
  @JsonKey(
      name: 'initiatedJobs',
      includeIfNull: false,
      defaultValue: <InitiatedJobs>[])
  final List<InitiatedJobs> initiatedJobs;
  @JsonKey(
      name: 'jobFulfillments',
      includeIfNull: false,
      defaultValue: <JobFulfillment>[])
  final List<JobFulfillment>? jobFulfillments;
  @JsonKey(name: 'additionalFormUrl', includeIfNull: false)
  final String? additionalFormUrl;
  @JsonKey(name: 'additionalFormData', includeIfNull: false)
  final InitJobResponse$AdditionalFormData? additionalFormData;
  static const fromJsonFactory = _$InitJobResponseFromJson;
  static const toJsonFactory = _$InitJobResponseToJson;
  Map<String, dynamic> toJson() => _$InitJobResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitJobResponse &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.company, company) ||
                const DeepCollectionEquality()
                    .equals(other.company, company)) &&
            (identical(other.initiatedJobs, initiatedJobs) ||
                const DeepCollectionEquality()
                    .equals(other.initiatedJobs, initiatedJobs)) &&
            (identical(other.jobFulfillments, jobFulfillments) ||
                const DeepCollectionEquality()
                    .equals(other.jobFulfillments, jobFulfillments)) &&
            (identical(other.additionalFormUrl, additionalFormUrl) ||
                const DeepCollectionEquality()
                    .equals(other.additionalFormUrl, additionalFormUrl)) &&
            (identical(other.additionalFormData, additionalFormData) ||
                const DeepCollectionEquality()
                    .equals(other.additionalFormData, additionalFormData)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(company) ^
      const DeepCollectionEquality().hash(initiatedJobs) ^
      const DeepCollectionEquality().hash(jobFulfillments) ^
      const DeepCollectionEquality().hash(additionalFormUrl) ^
      const DeepCollectionEquality().hash(additionalFormData) ^
      runtimeType.hashCode;
}

extension $InitJobResponseExtension on InitJobResponse {
  InitJobResponse copyWith(
      {Context? context,
      Company? company,
      List<InitiatedJobs>? initiatedJobs,
      List<JobFulfillment>? jobFulfillments,
      String? additionalFormUrl,
      InitJobResponse$AdditionalFormData? additionalFormData}) {
    return InitJobResponse(
        context: context ?? this.context,
        company: company ?? this.company,
        initiatedJobs: initiatedJobs ?? this.initiatedJobs,
        jobFulfillments: jobFulfillments ?? this.jobFulfillments,
        additionalFormUrl: additionalFormUrl ?? this.additionalFormUrl,
        additionalFormData: additionalFormData ?? this.additionalFormData);
  }

  InitJobResponse copyWithWrapped(
      {Wrapped<Context>? context,
      Wrapped<Company>? company,
      Wrapped<List<InitiatedJobs>>? initiatedJobs,
      Wrapped<List<JobFulfillment>?>? jobFulfillments,
      Wrapped<String?>? additionalFormUrl,
      Wrapped<InitJobResponse$AdditionalFormData?>? additionalFormData}) {
    return InitJobResponse(
        context: (context != null ? context.value : this.context),
        company: (company != null ? company.value : this.company),
        initiatedJobs:
            (initiatedJobs != null ? initiatedJobs.value : this.initiatedJobs),
        jobFulfillments: (jobFulfillments != null
            ? jobFulfillments.value
            : this.jobFulfillments),
        additionalFormUrl: (additionalFormUrl != null
            ? additionalFormUrl.value
            : this.additionalFormUrl),
        additionalFormData: (additionalFormData != null
            ? additionalFormData.value
            : this.additionalFormData));
  }
}

@JsonSerializable(explicitToJson: true)
class InitiatedJobs {
  InitiatedJobs({
    required this.jobId,
    required this.role,
    this.description,
    this.additionalDesc,
    this.locations,
    this.educationalQualifications,
    this.workExperience,
    this.responsibilities,
    this.employmentInformation,
    this.compensation,
  });

  factory InitiatedJobs.fromJson(Map<String, dynamic> json) =>
      _$InitiatedJobsFromJson(json);

  @JsonKey(name: 'jobId', includeIfNull: false)
  final String jobId;
  @JsonKey(name: 'role', includeIfNull: false)
  final String role;
  @JsonKey(name: 'description', includeIfNull: false)
  final String? description;
  @JsonKey(name: 'additionalDesc', includeIfNull: false)
  final AdditionalDesc? additionalDesc;
  @JsonKey(name: 'locations', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? locations;
  @JsonKey(
      name: 'educationalQualifications',
      includeIfNull: false,
      defaultValue: <Object>[])
  final List<Object>? educationalQualifications;
  @JsonKey(name: 'workExperience', includeIfNull: false)
  final InitiatedJobs$WorkExperience? workExperience;
  @JsonKey(
      name: 'responsibilities', includeIfNull: false, defaultValue: <String>[])
  final List<String>? responsibilities;
  @JsonKey(name: 'employmentInformation', includeIfNull: false)
  final InitiatedJobs$EmploymentInformation? employmentInformation;
  @JsonKey(name: 'compensation', includeIfNull: false)
  final InitiatedJobs$Compensation? compensation;
  static const fromJsonFactory = _$InitiatedJobsFromJson;
  static const toJsonFactory = _$InitiatedJobsToJson;
  Map<String, dynamic> toJson() => _$InitiatedJobsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitiatedJobs &&
            (identical(other.jobId, jobId) ||
                const DeepCollectionEquality().equals(other.jobId, jobId)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.additionalDesc, additionalDesc) ||
                const DeepCollectionEquality()
                    .equals(other.additionalDesc, additionalDesc)) &&
            (identical(other.locations, locations) ||
                const DeepCollectionEquality()
                    .equals(other.locations, locations)) &&
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
      const DeepCollectionEquality().hash(jobId) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(additionalDesc) ^
      const DeepCollectionEquality().hash(locations) ^
      const DeepCollectionEquality().hash(educationalQualifications) ^
      const DeepCollectionEquality().hash(workExperience) ^
      const DeepCollectionEquality().hash(responsibilities) ^
      const DeepCollectionEquality().hash(employmentInformation) ^
      const DeepCollectionEquality().hash(compensation) ^
      runtimeType.hashCode;
}

extension $InitiatedJobsExtension on InitiatedJobs {
  InitiatedJobs copyWith(
      {String? jobId,
      String? role,
      String? description,
      AdditionalDesc? additionalDesc,
      List<Object>? locations,
      List<Object>? educationalQualifications,
      InitiatedJobs$WorkExperience? workExperience,
      List<String>? responsibilities,
      InitiatedJobs$EmploymentInformation? employmentInformation,
      InitiatedJobs$Compensation? compensation}) {
    return InitiatedJobs(
        jobId: jobId ?? this.jobId,
        role: role ?? this.role,
        description: description ?? this.description,
        additionalDesc: additionalDesc ?? this.additionalDesc,
        locations: locations ?? this.locations,
        educationalQualifications:
            educationalQualifications ?? this.educationalQualifications,
        workExperience: workExperience ?? this.workExperience,
        responsibilities: responsibilities ?? this.responsibilities,
        employmentInformation:
            employmentInformation ?? this.employmentInformation,
        compensation: compensation ?? this.compensation);
  }

  InitiatedJobs copyWithWrapped(
      {Wrapped<String>? jobId,
      Wrapped<String>? role,
      Wrapped<String?>? description,
      Wrapped<AdditionalDesc?>? additionalDesc,
      Wrapped<List<Object>?>? locations,
      Wrapped<List<Object>?>? educationalQualifications,
      Wrapped<InitiatedJobs$WorkExperience?>? workExperience,
      Wrapped<List<String>?>? responsibilities,
      Wrapped<InitiatedJobs$EmploymentInformation?>? employmentInformation,
      Wrapped<InitiatedJobs$Compensation?>? compensation}) {
    return InitiatedJobs(
        jobId: (jobId != null ? jobId.value : this.jobId),
        role: (role != null ? role.value : this.role),
        description:
            (description != null ? description.value : this.description),
        additionalDesc: (additionalDesc != null
            ? additionalDesc.value
            : this.additionalDesc),
        locations: (locations != null ? locations.value : this.locations),
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
class ConfirmJobRequest {
  ConfirmJobRequest({
    required this.jobId,
    required this.context,
    this.confirmation,
  });

  factory ConfirmJobRequest.fromJson(Map<String, dynamic> json) =>
      _$ConfirmJobRequestFromJson(json);

  @JsonKey(name: 'jobId', includeIfNull: false)
  final String jobId;
  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  @JsonKey(name: 'confirmation', includeIfNull: false)
  final JobFulfillment? confirmation;
  static const fromJsonFactory = _$ConfirmJobRequestFromJson;
  static const toJsonFactory = _$ConfirmJobRequestToJson;
  Map<String, dynamic> toJson() => _$ConfirmJobRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmJobRequest &&
            (identical(other.jobId, jobId) ||
                const DeepCollectionEquality().equals(other.jobId, jobId)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.confirmation, confirmation) ||
                const DeepCollectionEquality()
                    .equals(other.confirmation, confirmation)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobId) ^
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(confirmation) ^
      runtimeType.hashCode;
}

extension $ConfirmJobRequestExtension on ConfirmJobRequest {
  ConfirmJobRequest copyWith(
      {String? jobId, Context? context, JobFulfillment? confirmation}) {
    return ConfirmJobRequest(
        jobId: jobId ?? this.jobId,
        context: context ?? this.context,
        confirmation: confirmation ?? this.confirmation);
  }

  ConfirmJobRequest copyWithWrapped(
      {Wrapped<String>? jobId,
      Wrapped<Context>? context,
      Wrapped<JobFulfillment?>? confirmation}) {
    return ConfirmJobRequest(
        jobId: (jobId != null ? jobId.value : this.jobId),
        context: (context != null ? context.value : this.context),
        confirmation:
            (confirmation != null ? confirmation.value : this.confirmation));
  }
}

@JsonSerializable(explicitToJson: true)
class ConfirmJobResponse {
  ConfirmJobResponse({
    required this.context,
    required this.applicationId,
    required this.company,
    this.confirmedJobs,
    this.jobFulfillments,
    this.additionalFormUrl,
    this.additionalFormData,
  });

  factory ConfirmJobResponse.fromJson(Map<String, dynamic> json) =>
      _$ConfirmJobResponseFromJson(json);

  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  @JsonKey(name: 'applicationId', includeIfNull: false)
  final String applicationId;
  @JsonKey(name: 'company', includeIfNull: false)
  final Company company;
  @JsonKey(
      name: 'confirmedJobs',
      includeIfNull: false,
      defaultValue: <ConfirmedJob>[])
  final List<ConfirmedJob>? confirmedJobs;
  @JsonKey(
      name: 'jobFulfillments',
      includeIfNull: false,
      defaultValue: <JobFulfillment>[])
  final List<JobFulfillment>? jobFulfillments;
  @JsonKey(name: 'additionalFormUrl', includeIfNull: false)
  final String? additionalFormUrl;
  @JsonKey(name: 'additionalFormData', includeIfNull: false)
  final ConfirmJobResponse$AdditionalFormData? additionalFormData;
  static const fromJsonFactory = _$ConfirmJobResponseFromJson;
  static const toJsonFactory = _$ConfirmJobResponseToJson;
  Map<String, dynamic> toJson() => _$ConfirmJobResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmJobResponse &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.company, company) ||
                const DeepCollectionEquality()
                    .equals(other.company, company)) &&
            (identical(other.confirmedJobs, confirmedJobs) ||
                const DeepCollectionEquality()
                    .equals(other.confirmedJobs, confirmedJobs)) &&
            (identical(other.jobFulfillments, jobFulfillments) ||
                const DeepCollectionEquality()
                    .equals(other.jobFulfillments, jobFulfillments)) &&
            (identical(other.additionalFormUrl, additionalFormUrl) ||
                const DeepCollectionEquality()
                    .equals(other.additionalFormUrl, additionalFormUrl)) &&
            (identical(other.additionalFormData, additionalFormData) ||
                const DeepCollectionEquality()
                    .equals(other.additionalFormData, additionalFormData)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(company) ^
      const DeepCollectionEquality().hash(confirmedJobs) ^
      const DeepCollectionEquality().hash(jobFulfillments) ^
      const DeepCollectionEquality().hash(additionalFormUrl) ^
      const DeepCollectionEquality().hash(additionalFormData) ^
      runtimeType.hashCode;
}

extension $ConfirmJobResponseExtension on ConfirmJobResponse {
  ConfirmJobResponse copyWith(
      {Context? context,
      String? applicationId,
      Company? company,
      List<ConfirmedJob>? confirmedJobs,
      List<JobFulfillment>? jobFulfillments,
      String? additionalFormUrl,
      ConfirmJobResponse$AdditionalFormData? additionalFormData}) {
    return ConfirmJobResponse(
        context: context ?? this.context,
        applicationId: applicationId ?? this.applicationId,
        company: company ?? this.company,
        confirmedJobs: confirmedJobs ?? this.confirmedJobs,
        jobFulfillments: jobFulfillments ?? this.jobFulfillments,
        additionalFormUrl: additionalFormUrl ?? this.additionalFormUrl,
        additionalFormData: additionalFormData ?? this.additionalFormData);
  }

  ConfirmJobResponse copyWithWrapped(
      {Wrapped<Context>? context,
      Wrapped<String>? applicationId,
      Wrapped<Company>? company,
      Wrapped<List<ConfirmedJob>?>? confirmedJobs,
      Wrapped<List<JobFulfillment>?>? jobFulfillments,
      Wrapped<String?>? additionalFormUrl,
      Wrapped<ConfirmJobResponse$AdditionalFormData?>? additionalFormData}) {
    return ConfirmJobResponse(
        context: (context != null ? context.value : this.context),
        applicationId:
            (applicationId != null ? applicationId.value : this.applicationId),
        company: (company != null ? company.value : this.company),
        confirmedJobs:
            (confirmedJobs != null ? confirmedJobs.value : this.confirmedJobs),
        jobFulfillments: (jobFulfillments != null
            ? jobFulfillments.value
            : this.jobFulfillments),
        additionalFormUrl: (additionalFormUrl != null
            ? additionalFormUrl.value
            : this.additionalFormUrl),
        additionalFormData: (additionalFormData != null
            ? additionalFormData.value
            : this.additionalFormData));
  }
}

@JsonSerializable(explicitToJson: true)
class ConfirmedJob {
  ConfirmedJob({
    required this.jobId,
    required this.role,
    this.description,
    this.additionalDesc,
    this.locations,
    this.educationalQualifications,
    this.workExperience,
    this.responsibilities,
    this.employmentInformation,
    this.compensation,
  });

  factory ConfirmedJob.fromJson(Map<String, dynamic> json) =>
      _$ConfirmedJobFromJson(json);

  @JsonKey(name: 'jobId', includeIfNull: false)
  final String jobId;
  @JsonKey(name: 'role', includeIfNull: false)
  final String role;
  @JsonKey(name: 'description', includeIfNull: false)
  final String? description;
  @JsonKey(name: 'additionalDesc', includeIfNull: false)
  final AdditionalDesc? additionalDesc;
  @JsonKey(name: 'locations', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? locations;
  @JsonKey(
      name: 'educationalQualifications',
      includeIfNull: false,
      defaultValue: <Object>[])
  final List<Object>? educationalQualifications;
  @JsonKey(name: 'workExperience', includeIfNull: false)
  final ConfirmedJob$WorkExperience? workExperience;
  @JsonKey(
      name: 'responsibilities', includeIfNull: false, defaultValue: <String>[])
  final List<String>? responsibilities;
  @JsonKey(name: 'employmentInformation', includeIfNull: false)
  final ConfirmedJob$EmploymentInformation? employmentInformation;
  @JsonKey(name: 'compensation', includeIfNull: false)
  final ConfirmedJob$Compensation? compensation;
  static const fromJsonFactory = _$ConfirmedJobFromJson;
  static const toJsonFactory = _$ConfirmedJobToJson;
  Map<String, dynamic> toJson() => _$ConfirmedJobToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmedJob &&
            (identical(other.jobId, jobId) ||
                const DeepCollectionEquality().equals(other.jobId, jobId)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.additionalDesc, additionalDesc) ||
                const DeepCollectionEquality()
                    .equals(other.additionalDesc, additionalDesc)) &&
            (identical(other.locations, locations) ||
                const DeepCollectionEquality()
                    .equals(other.locations, locations)) &&
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
      const DeepCollectionEquality().hash(jobId) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(additionalDesc) ^
      const DeepCollectionEquality().hash(locations) ^
      const DeepCollectionEquality().hash(educationalQualifications) ^
      const DeepCollectionEquality().hash(workExperience) ^
      const DeepCollectionEquality().hash(responsibilities) ^
      const DeepCollectionEquality().hash(employmentInformation) ^
      const DeepCollectionEquality().hash(compensation) ^
      runtimeType.hashCode;
}

extension $ConfirmedJobExtension on ConfirmedJob {
  ConfirmedJob copyWith(
      {String? jobId,
      String? role,
      String? description,
      AdditionalDesc? additionalDesc,
      List<Object>? locations,
      List<Object>? educationalQualifications,
      ConfirmedJob$WorkExperience? workExperience,
      List<String>? responsibilities,
      ConfirmedJob$EmploymentInformation? employmentInformation,
      ConfirmedJob$Compensation? compensation}) {
    return ConfirmedJob(
        jobId: jobId ?? this.jobId,
        role: role ?? this.role,
        description: description ?? this.description,
        additionalDesc: additionalDesc ?? this.additionalDesc,
        locations: locations ?? this.locations,
        educationalQualifications:
            educationalQualifications ?? this.educationalQualifications,
        workExperience: workExperience ?? this.workExperience,
        responsibilities: responsibilities ?? this.responsibilities,
        employmentInformation:
            employmentInformation ?? this.employmentInformation,
        compensation: compensation ?? this.compensation);
  }

  ConfirmedJob copyWithWrapped(
      {Wrapped<String>? jobId,
      Wrapped<String>? role,
      Wrapped<String?>? description,
      Wrapped<AdditionalDesc?>? additionalDesc,
      Wrapped<List<Object>?>? locations,
      Wrapped<List<Object>?>? educationalQualifications,
      Wrapped<ConfirmedJob$WorkExperience?>? workExperience,
      Wrapped<List<String>?>? responsibilities,
      Wrapped<ConfirmedJob$EmploymentInformation?>? employmentInformation,
      Wrapped<ConfirmedJob$Compensation?>? compensation}) {
    return ConfirmedJob(
        jobId: (jobId != null ? jobId.value : this.jobId),
        role: (role != null ? role.value : this.role),
        description:
            (description != null ? description.value : this.description),
        additionalDesc: (additionalDesc != null
            ? additionalDesc.value
            : this.additionalDesc),
        locations: (locations != null ? locations.value : this.locations),
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
class JobStatusRequest {
  JobStatusRequest({
    required this.applicationId,
    required this.context,
  });

  factory JobStatusRequest.fromJson(Map<String, dynamic> json) =>
      _$JobStatusRequestFromJson(json);

  @JsonKey(name: 'applicationId', includeIfNull: false)
  final String applicationId;
  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  static const fromJsonFactory = _$JobStatusRequestFromJson;
  static const toJsonFactory = _$JobStatusRequestToJson;
  Map<String, dynamic> toJson() => _$JobStatusRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is JobStatusRequest &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(context) ^
      runtimeType.hashCode;
}

extension $JobStatusRequestExtension on JobStatusRequest {
  JobStatusRequest copyWith({String? applicationId, Context? context}) {
    return JobStatusRequest(
        applicationId: applicationId ?? this.applicationId,
        context: context ?? this.context);
  }

  JobStatusRequest copyWithWrapped(
      {Wrapped<String>? applicationId, Wrapped<Context>? context}) {
    return JobStatusRequest(
        applicationId:
            (applicationId != null ? applicationId.value : this.applicationId),
        context: (context != null ? context.value : this.context));
  }
}

@JsonSerializable(explicitToJson: true)
class JobStatusResponse {
  JobStatusResponse({
    required this.context,
    required this.applicationId,
    required this.company,
    this.confirmedJobs,
    this.jobFulfillments,
    this.additionalFormUrl,
    this.additionalFormData,
  });

  factory JobStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$JobStatusResponseFromJson(json);

  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  @JsonKey(name: 'applicationId', includeIfNull: false)
  final String applicationId;
  @JsonKey(name: 'company', includeIfNull: false)
  final Company company;
  @JsonKey(
      name: 'confirmedJobs',
      includeIfNull: false,
      defaultValue: <ConfirmedJob>[])
  final List<ConfirmedJob>? confirmedJobs;
  @JsonKey(
      name: 'jobFulfillments',
      includeIfNull: false,
      defaultValue: <JobStatusFulfillment>[])
  final List<JobStatusFulfillment>? jobFulfillments;
  @JsonKey(name: 'additionalFormUrl', includeIfNull: false)
  final String? additionalFormUrl;
  @JsonKey(name: 'additionalFormData', includeIfNull: false)
  final JobStatusResponse$AdditionalFormData? additionalFormData;
  static const fromJsonFactory = _$JobStatusResponseFromJson;
  static const toJsonFactory = _$JobStatusResponseToJson;
  Map<String, dynamic> toJson() => _$JobStatusResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is JobStatusResponse &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.company, company) ||
                const DeepCollectionEquality()
                    .equals(other.company, company)) &&
            (identical(other.confirmedJobs, confirmedJobs) ||
                const DeepCollectionEquality()
                    .equals(other.confirmedJobs, confirmedJobs)) &&
            (identical(other.jobFulfillments, jobFulfillments) ||
                const DeepCollectionEquality()
                    .equals(other.jobFulfillments, jobFulfillments)) &&
            (identical(other.additionalFormUrl, additionalFormUrl) ||
                const DeepCollectionEquality()
                    .equals(other.additionalFormUrl, additionalFormUrl)) &&
            (identical(other.additionalFormData, additionalFormData) ||
                const DeepCollectionEquality()
                    .equals(other.additionalFormData, additionalFormData)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(company) ^
      const DeepCollectionEquality().hash(confirmedJobs) ^
      const DeepCollectionEquality().hash(jobFulfillments) ^
      const DeepCollectionEquality().hash(additionalFormUrl) ^
      const DeepCollectionEquality().hash(additionalFormData) ^
      runtimeType.hashCode;
}

extension $JobStatusResponseExtension on JobStatusResponse {
  JobStatusResponse copyWith(
      {Context? context,
      String? applicationId,
      Company? company,
      List<ConfirmedJob>? confirmedJobs,
      List<JobStatusFulfillment>? jobFulfillments,
      String? additionalFormUrl,
      JobStatusResponse$AdditionalFormData? additionalFormData}) {
    return JobStatusResponse(
        context: context ?? this.context,
        applicationId: applicationId ?? this.applicationId,
        company: company ?? this.company,
        confirmedJobs: confirmedJobs ?? this.confirmedJobs,
        jobFulfillments: jobFulfillments ?? this.jobFulfillments,
        additionalFormUrl: additionalFormUrl ?? this.additionalFormUrl,
        additionalFormData: additionalFormData ?? this.additionalFormData);
  }

  JobStatusResponse copyWithWrapped(
      {Wrapped<Context>? context,
      Wrapped<String>? applicationId,
      Wrapped<Company>? company,
      Wrapped<List<ConfirmedJob>?>? confirmedJobs,
      Wrapped<List<JobStatusFulfillment>?>? jobFulfillments,
      Wrapped<String?>? additionalFormUrl,
      Wrapped<JobStatusResponse$AdditionalFormData?>? additionalFormData}) {
    return JobStatusResponse(
        context: (context != null ? context.value : this.context),
        applicationId:
            (applicationId != null ? applicationId.value : this.applicationId),
        company: (company != null ? company.value : this.company),
        confirmedJobs:
            (confirmedJobs != null ? confirmedJobs.value : this.confirmedJobs),
        jobFulfillments: (jobFulfillments != null
            ? jobFulfillments.value
            : this.jobFulfillments),
        additionalFormUrl: (additionalFormUrl != null
            ? additionalFormUrl.value
            : this.additionalFormUrl),
        additionalFormData: (additionalFormData != null
            ? additionalFormData.value
            : this.additionalFormData));
  }
}

@JsonSerializable(explicitToJson: true)
class JobStatusFulfillment {
  JobStatusFulfillment({
    this.jobFulfillmentCategoryId,
    this.jobApplicantProfile,
    this.jobStatus,
  });

  factory JobStatusFulfillment.fromJson(Map<String, dynamic> json) =>
      _$JobStatusFulfillmentFromJson(json);

  @JsonKey(name: 'JobFulfillmentCategoryId', includeIfNull: false)
  final String? jobFulfillmentCategoryId;
  @JsonKey(name: 'jobApplicantProfile', includeIfNull: false)
  final JobApplicantProfile? jobApplicantProfile;
  @JsonKey(name: 'jobStatus', includeIfNull: false)
  final JobStatus? jobStatus;
  static const fromJsonFactory = _$JobStatusFulfillmentFromJson;
  static const toJsonFactory = _$JobStatusFulfillmentToJson;
  Map<String, dynamic> toJson() => _$JobStatusFulfillmentToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is JobStatusFulfillment &&
            (identical(
                    other.jobFulfillmentCategoryId, jobFulfillmentCategoryId) ||
                const DeepCollectionEquality().equals(
                    other.jobFulfillmentCategoryId,
                    jobFulfillmentCategoryId)) &&
            (identical(other.jobApplicantProfile, jobApplicantProfile) ||
                const DeepCollectionEquality()
                    .equals(other.jobApplicantProfile, jobApplicantProfile)) &&
            (identical(other.jobStatus, jobStatus) ||
                const DeepCollectionEquality()
                    .equals(other.jobStatus, jobStatus)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobFulfillmentCategoryId) ^
      const DeepCollectionEquality().hash(jobApplicantProfile) ^
      const DeepCollectionEquality().hash(jobStatus) ^
      runtimeType.hashCode;
}

extension $JobStatusFulfillmentExtension on JobStatusFulfillment {
  JobStatusFulfillment copyWith(
      {String? jobFulfillmentCategoryId,
      JobApplicantProfile? jobApplicantProfile,
      JobStatus? jobStatus}) {
    return JobStatusFulfillment(
        jobFulfillmentCategoryId:
            jobFulfillmentCategoryId ?? this.jobFulfillmentCategoryId,
        jobApplicantProfile: jobApplicantProfile ?? this.jobApplicantProfile,
        jobStatus: jobStatus ?? this.jobStatus);
  }

  JobStatusFulfillment copyWithWrapped(
      {Wrapped<String?>? jobFulfillmentCategoryId,
      Wrapped<JobApplicantProfile?>? jobApplicantProfile,
      Wrapped<JobStatus?>? jobStatus}) {
    return JobStatusFulfillment(
        jobFulfillmentCategoryId: (jobFulfillmentCategoryId != null
            ? jobFulfillmentCategoryId.value
            : this.jobFulfillmentCategoryId),
        jobApplicantProfile: (jobApplicantProfile != null
            ? jobApplicantProfile.value
            : this.jobApplicantProfile),
        jobStatus: (jobStatus != null ? jobStatus.value : this.jobStatus));
  }
}

@JsonSerializable(explicitToJson: true)
class JobStatus {
  JobStatus({
    this.status,
    this.statusCode,
  });

  factory JobStatus.fromJson(Map<String, dynamic> json) =>
      _$JobStatusFromJson(json);

  @JsonKey(name: 'status', includeIfNull: false)
  final String? status;
  @JsonKey(name: 'statusCode', includeIfNull: false)
  final String? statusCode;
  static const fromJsonFactory = _$JobStatusFromJson;
  static const toJsonFactory = _$JobStatusToJson;
  Map<String, dynamic> toJson() => _$JobStatusToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is JobStatus &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(statusCode) ^
      runtimeType.hashCode;
}

extension $JobStatusExtension on JobStatus {
  JobStatus copyWith({String? status, String? statusCode}) {
    return JobStatus(
        status: status ?? this.status,
        statusCode: statusCode ?? this.statusCode);
  }

  JobStatus copyWithWrapped(
      {Wrapped<String?>? status, Wrapped<String?>? statusCode}) {
    return JobStatus(
        status: (status != null ? status.value : this.status),
        statusCode: (statusCode != null ? statusCode.value : this.statusCode));
  }
}

@JsonSerializable(explicitToJson: true)
class SearchMentorshipRequest {
  SearchMentorshipRequest({
    this.sessionTitle,
    this.mentor,
  });

  factory SearchMentorshipRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchMentorshipRequestFromJson(json);

  @JsonKey(name: 'sessionTitle', includeIfNull: false)
  final SearchMentorshipRequest$SessionTitle? sessionTitle;
  @JsonKey(name: 'mentor', includeIfNull: false)
  final SearchMentorshipRequest$Mentor? mentor;
  static const fromJsonFactory = _$SearchMentorshipRequestFromJson;
  static const toJsonFactory = _$SearchMentorshipRequestToJson;
  Map<String, dynamic> toJson() => _$SearchMentorshipRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchMentorshipRequest &&
            (identical(other.sessionTitle, sessionTitle) ||
                const DeepCollectionEquality()
                    .equals(other.sessionTitle, sessionTitle)) &&
            (identical(other.mentor, mentor) ||
                const DeepCollectionEquality().equals(other.mentor, mentor)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(sessionTitle) ^
      const DeepCollectionEquality().hash(mentor) ^
      runtimeType.hashCode;
}

extension $SearchMentorshipRequestExtension on SearchMentorshipRequest {
  SearchMentorshipRequest copyWith(
      {SearchMentorshipRequest$SessionTitle? sessionTitle,
      SearchMentorshipRequest$Mentor? mentor}) {
    return SearchMentorshipRequest(
        sessionTitle: sessionTitle ?? this.sessionTitle,
        mentor: mentor ?? this.mentor);
  }

  SearchMentorshipRequest copyWithWrapped(
      {Wrapped<SearchMentorshipRequest$SessionTitle?>? sessionTitle,
      Wrapped<SearchMentorshipRequest$Mentor?>? mentor}) {
    return SearchMentorshipRequest(
        sessionTitle:
            (sessionTitle != null ? sessionTitle.value : this.sessionTitle),
        mentor: (mentor != null ? mentor.value : this.mentor));
  }
}

@JsonSerializable(explicitToJson: true)
class MentorshipResults {
  MentorshipResults({
    required this.context,
    required this.mentorshipProviders,
  });

  factory MentorshipResults.fromJson(Map<String, dynamic> json) =>
      _$MentorshipResultsFromJson(json);

  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  @JsonKey(
      name: 'mentorshipProviders',
      includeIfNull: false,
      defaultValue: <Object>[])
  final List<Object> mentorshipProviders;
  static const fromJsonFactory = _$MentorshipResultsFromJson;
  static const toJsonFactory = _$MentorshipResultsToJson;
  Map<String, dynamic> toJson() => _$MentorshipResultsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MentorshipResults &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.mentorshipProviders, mentorshipProviders) ||
                const DeepCollectionEquality()
                    .equals(other.mentorshipProviders, mentorshipProviders)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(mentorshipProviders) ^
      runtimeType.hashCode;
}

extension $MentorshipResultsExtension on MentorshipResults {
  MentorshipResults copyWith(
      {Context? context, List<Object>? mentorshipProviders}) {
    return MentorshipResults(
        context: context ?? this.context,
        mentorshipProviders: mentorshipProviders ?? this.mentorshipProviders);
  }

  MentorshipResults copyWithWrapped(
      {Wrapped<Context>? context, Wrapped<List<Object>>? mentorshipProviders}) {
    return MentorshipResults(
        context: (context != null ? context.value : this.context),
        mentorshipProviders: (mentorshipProviders != null
            ? mentorshipProviders.value
            : this.mentorshipProviders));
  }
}

@JsonSerializable(explicitToJson: true)
class MentorshipProvider {
  MentorshipProvider({
    required this.id,
    required this.code,
    required this.name,
    required this.description,
    required this.mentorships,
  });

  factory MentorshipProvider.fromJson(Map<String, dynamic> json) =>
      _$MentorshipProviderFromJson(json);

  @JsonKey(name: 'id', includeIfNull: false)
  final String id;
  @JsonKey(name: 'code', includeIfNull: false)
  final String code;
  @JsonKey(name: 'name', includeIfNull: false)
  final String name;
  @JsonKey(name: 'description', includeIfNull: false)
  final String description;
  @JsonKey(name: 'mentorships', includeIfNull: false, defaultValue: <Object>[])
  final List<Object> mentorships;
  static const fromJsonFactory = _$MentorshipProviderFromJson;
  static const toJsonFactory = _$MentorshipProviderToJson;
  Map<String, dynamic> toJson() => _$MentorshipProviderToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MentorshipProvider &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.mentorships, mentorships) ||
                const DeepCollectionEquality()
                    .equals(other.mentorships, mentorships)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(mentorships) ^
      runtimeType.hashCode;
}

extension $MentorshipProviderExtension on MentorshipProvider {
  MentorshipProvider copyWith(
      {String? id,
      String? code,
      String? name,
      String? description,
      List<Object>? mentorships}) {
    return MentorshipProvider(
        id: id ?? this.id,
        code: code ?? this.code,
        name: name ?? this.name,
        description: description ?? this.description,
        mentorships: mentorships ?? this.mentorships);
  }

  MentorshipProvider copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? code,
      Wrapped<String>? name,
      Wrapped<String>? description,
      Wrapped<List<Object>>? mentorships}) {
    return MentorshipProvider(
        id: (id != null ? id.value : this.id),
        code: (code != null ? code.value : this.code),
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        mentorships:
            (mentorships != null ? mentorships.value : this.mentorships));
  }
}

@JsonSerializable(explicitToJson: true)
class Mentorship {
  Mentorship({
    required this.id,
    this.code,
    required this.name,
    required this.description,
    this.longDescription,
    this.imageLocations,
    this.categories,
    this.available,
    this.allocated,
    this.price,
    this.mentorshipSessions,
    this.recommendedFor,
  });

  factory Mentorship.fromJson(Map<String, dynamic> json) =>
      _$MentorshipFromJson(json);

  @JsonKey(name: 'id', includeIfNull: false)
  final String id;
  @JsonKey(name: 'code', includeIfNull: false)
  final String? code;
  @JsonKey(name: 'name', includeIfNull: false)
  final String name;
  @JsonKey(name: 'description', includeIfNull: false)
  final String description;
  @JsonKey(name: 'longDescription', includeIfNull: false)
  final String? longDescription;
  @JsonKey(
      name: 'imageLocations', includeIfNull: false, defaultValue: <String>[])
  final List<String>? imageLocations;
  @JsonKey(name: 'categories', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? categories;
  @JsonKey(name: 'available', includeIfNull: false)
  final int? available;
  @JsonKey(name: 'allocated', includeIfNull: false)
  final int? allocated;
  @JsonKey(name: 'price', includeIfNull: false)
  final double? price;
  @JsonKey(
      name: 'mentorshipSessions',
      includeIfNull: false,
      defaultValue: <Object>[])
  final List<Object>? mentorshipSessions;
  @JsonKey(
      name: 'recommendedFor', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? recommendedFor;
  static const fromJsonFactory = _$MentorshipFromJson;
  static const toJsonFactory = _$MentorshipToJson;
  Map<String, dynamic> toJson() => _$MentorshipToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Mentorship &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.longDescription, longDescription) ||
                const DeepCollectionEquality()
                    .equals(other.longDescription, longDescription)) &&
            (identical(other.imageLocations, imageLocations) ||
                const DeepCollectionEquality()
                    .equals(other.imageLocations, imageLocations)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.available, available) ||
                const DeepCollectionEquality()
                    .equals(other.available, available)) &&
            (identical(other.allocated, allocated) ||
                const DeepCollectionEquality()
                    .equals(other.allocated, allocated)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.mentorshipSessions, mentorshipSessions) ||
                const DeepCollectionEquality()
                    .equals(other.mentorshipSessions, mentorshipSessions)) &&
            (identical(other.recommendedFor, recommendedFor) ||
                const DeepCollectionEquality()
                    .equals(other.recommendedFor, recommendedFor)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(longDescription) ^
      const DeepCollectionEquality().hash(imageLocations) ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(available) ^
      const DeepCollectionEquality().hash(allocated) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(mentorshipSessions) ^
      const DeepCollectionEquality().hash(recommendedFor) ^
      runtimeType.hashCode;
}

extension $MentorshipExtension on Mentorship {
  Mentorship copyWith(
      {String? id,
      String? code,
      String? name,
      String? description,
      String? longDescription,
      List<String>? imageLocations,
      List<Object>? categories,
      int? available,
      int? allocated,
      double? price,
      List<Object>? mentorshipSessions,
      List<Object>? recommendedFor}) {
    return Mentorship(
        id: id ?? this.id,
        code: code ?? this.code,
        name: name ?? this.name,
        description: description ?? this.description,
        longDescription: longDescription ?? this.longDescription,
        imageLocations: imageLocations ?? this.imageLocations,
        categories: categories ?? this.categories,
        available: available ?? this.available,
        allocated: allocated ?? this.allocated,
        price: price ?? this.price,
        mentorshipSessions: mentorshipSessions ?? this.mentorshipSessions,
        recommendedFor: recommendedFor ?? this.recommendedFor);
  }

  Mentorship copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String?>? code,
      Wrapped<String>? name,
      Wrapped<String>? description,
      Wrapped<String?>? longDescription,
      Wrapped<List<String>?>? imageLocations,
      Wrapped<List<Object>?>? categories,
      Wrapped<int?>? available,
      Wrapped<int?>? allocated,
      Wrapped<double?>? price,
      Wrapped<List<Object>?>? mentorshipSessions,
      Wrapped<List<Object>?>? recommendedFor}) {
    return Mentorship(
        id: (id != null ? id.value : this.id),
        code: (code != null ? code.value : this.code),
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        longDescription: (longDescription != null
            ? longDescription.value
            : this.longDescription),
        imageLocations: (imageLocations != null
            ? imageLocations.value
            : this.imageLocations),
        categories: (categories != null ? categories.value : this.categories),
        available: (available != null ? available.value : this.available),
        allocated: (allocated != null ? allocated.value : this.allocated),
        price: (price != null ? price.value : this.price),
        mentorshipSessions: (mentorshipSessions != null
            ? mentorshipSessions.value
            : this.mentorshipSessions),
        recommendedFor: (recommendedFor != null
            ? recommendedFor.value
            : this.recommendedFor));
  }
}

@JsonSerializable(explicitToJson: true)
class MentorshipCategory {
  MentorshipCategory({
    required this.id,
    required this.code,
    required this.name,
  });

  factory MentorshipCategory.fromJson(Map<String, dynamic> json) =>
      _$MentorshipCategoryFromJson(json);

  @JsonKey(name: 'id', includeIfNull: false)
  final String id;
  @JsonKey(name: 'code', includeIfNull: false)
  final String code;
  @JsonKey(name: 'name', includeIfNull: false)
  final String name;
  static const fromJsonFactory = _$MentorshipCategoryFromJson;
  static const toJsonFactory = _$MentorshipCategoryToJson;
  Map<String, dynamic> toJson() => _$MentorshipCategoryToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MentorshipCategory &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $MentorshipCategoryExtension on MentorshipCategory {
  MentorshipCategory copyWith({String? id, String? code, String? name}) {
    return MentorshipCategory(
        id: id ?? this.id, code: code ?? this.code, name: name ?? this.name);
  }

  MentorshipCategory copyWithWrapped(
      {Wrapped<String>? id, Wrapped<String>? code, Wrapped<String>? name}) {
    return MentorshipCategory(
        id: (id != null ? id.value : this.id),
        code: (code != null ? code.value : this.code),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class MentorshipSession {
  MentorshipSession({
    required this.id,
    required this.language,
    this.timingStart,
    this.timingEnd,
    required this.type,
    this.status,
    this.timezone,
    required this.mentor,
  });

  factory MentorshipSession.fromJson(Map<String, dynamic> json) =>
      _$MentorshipSessionFromJson(json);

  @JsonKey(name: 'id', includeIfNull: false)
  final String id;
  @JsonKey(name: 'language', includeIfNull: false)
  final String language;
  @JsonKey(name: 'timingStart', includeIfNull: false)
  final String? timingStart;
  @JsonKey(name: 'timingEnd', includeIfNull: false)
  final String? timingEnd;
  @JsonKey(name: 'type', includeIfNull: false)
  final String type;
  @JsonKey(name: 'status', includeIfNull: false)
  final String? status;
  @JsonKey(name: 'timezone', includeIfNull: false)
  final String? timezone;
  @JsonKey(name: 'mentor', includeIfNull: false)
  final Mentor mentor;
  static const fromJsonFactory = _$MentorshipSessionFromJson;
  static const toJsonFactory = _$MentorshipSessionToJson;
  Map<String, dynamic> toJson() => _$MentorshipSessionToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MentorshipSession &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.timingStart, timingStart) ||
                const DeepCollectionEquality()
                    .equals(other.timingStart, timingStart)) &&
            (identical(other.timingEnd, timingEnd) ||
                const DeepCollectionEquality()
                    .equals(other.timingEnd, timingEnd)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.timezone, timezone) ||
                const DeepCollectionEquality()
                    .equals(other.timezone, timezone)) &&
            (identical(other.mentor, mentor) ||
                const DeepCollectionEquality().equals(other.mentor, mentor)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(timingStart) ^
      const DeepCollectionEquality().hash(timingEnd) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(timezone) ^
      const DeepCollectionEquality().hash(mentor) ^
      runtimeType.hashCode;
}

extension $MentorshipSessionExtension on MentorshipSession {
  MentorshipSession copyWith(
      {String? id,
      String? language,
      String? timingStart,
      String? timingEnd,
      String? type,
      String? status,
      String? timezone,
      Mentor? mentor}) {
    return MentorshipSession(
        id: id ?? this.id,
        language: language ?? this.language,
        timingStart: timingStart ?? this.timingStart,
        timingEnd: timingEnd ?? this.timingEnd,
        type: type ?? this.type,
        status: status ?? this.status,
        timezone: timezone ?? this.timezone,
        mentor: mentor ?? this.mentor);
  }

  MentorshipSession copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? language,
      Wrapped<String?>? timingStart,
      Wrapped<String?>? timingEnd,
      Wrapped<String>? type,
      Wrapped<String?>? status,
      Wrapped<String?>? timezone,
      Wrapped<Mentor>? mentor}) {
    return MentorshipSession(
        id: (id != null ? id.value : this.id),
        language: (language != null ? language.value : this.language),
        timingStart:
            (timingStart != null ? timingStart.value : this.timingStart),
        timingEnd: (timingEnd != null ? timingEnd.value : this.timingEnd),
        type: (type != null ? type.value : this.type),
        status: (status != null ? status.value : this.status),
        timezone: (timezone != null ? timezone.value : this.timezone),
        mentor: (mentor != null ? mentor.value : this.mentor));
  }
}

@JsonSerializable(explicitToJson: true)
class MentorshipRecommendation {
  MentorshipRecommendation({
    required this.recommendationForCode,
    required this.recommendationForName,
  });

  factory MentorshipRecommendation.fromJson(Map<String, dynamic> json) =>
      _$MentorshipRecommendationFromJson(json);

  @JsonKey(name: 'recommendationForCode', includeIfNull: false)
  final String recommendationForCode;
  @JsonKey(name: 'recommendationForName', includeIfNull: false)
  final String recommendationForName;
  static const fromJsonFactory = _$MentorshipRecommendationFromJson;
  static const toJsonFactory = _$MentorshipRecommendationToJson;
  Map<String, dynamic> toJson() => _$MentorshipRecommendationToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MentorshipRecommendation &&
            (identical(other.recommendationForCode, recommendationForCode) ||
                const DeepCollectionEquality().equals(
                    other.recommendationForCode, recommendationForCode)) &&
            (identical(other.recommendationForName, recommendationForName) ||
                const DeepCollectionEquality().equals(
                    other.recommendationForName, recommendationForName)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(recommendationForCode) ^
      const DeepCollectionEquality().hash(recommendationForName) ^
      runtimeType.hashCode;
}

extension $MentorshipRecommendationExtension on MentorshipRecommendation {
  MentorshipRecommendation copyWith(
      {String? recommendationForCode, String? recommendationForName}) {
    return MentorshipRecommendation(
        recommendationForCode:
            recommendationForCode ?? this.recommendationForCode,
        recommendationForName:
            recommendationForName ?? this.recommendationForName);
  }

  MentorshipRecommendation copyWithWrapped(
      {Wrapped<String>? recommendationForCode,
      Wrapped<String>? recommendationForName}) {
    return MentorshipRecommendation(
        recommendationForCode: (recommendationForCode != null
            ? recommendationForCode.value
            : this.recommendationForCode),
        recommendationForName: (recommendationForName != null
            ? recommendationForName.value
            : this.recommendationForName));
  }
}

@JsonSerializable(explicitToJson: true)
class Mentor {
  Mentor({
    required this.id,
    required this.name,
    this.gender,
    this.image,
    this.rating,
  });

  factory Mentor.fromJson(Map<String, dynamic> json) => _$MentorFromJson(json);

  @JsonKey(name: 'id', includeIfNull: false)
  final String id;
  @JsonKey(name: 'name', includeIfNull: false)
  final String name;
  @JsonKey(name: 'gender', includeIfNull: false)
  final String? gender;
  @JsonKey(name: 'image', includeIfNull: false)
  final String? image;
  @JsonKey(name: 'rating', includeIfNull: false)
  final String? rating;
  static const fromJsonFactory = _$MentorFromJson;
  static const toJsonFactory = _$MentorToJson;
  Map<String, dynamic> toJson() => _$MentorToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Mentor &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(rating) ^
      runtimeType.hashCode;
}

extension $MentorExtension on Mentor {
  Mentor copyWith(
      {String? id,
      String? name,
      String? gender,
      String? image,
      String? rating}) {
    return Mentor(
        id: id ?? this.id,
        name: name ?? this.name,
        gender: gender ?? this.gender,
        image: image ?? this.image,
        rating: rating ?? this.rating);
  }

  Mentor copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? name,
      Wrapped<String?>? gender,
      Wrapped<String?>? image,
      Wrapped<String?>? rating}) {
    return Mentor(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        gender: (gender != null ? gender.value : this.gender),
        image: (image != null ? image.value : this.image),
        rating: (rating != null ? rating.value : this.rating));
  }
}

@JsonSerializable(explicitToJson: true)
class SelectMentorshipRequest {
  SelectMentorshipRequest({
    required this.mentorshipId,
    required this.context,
  });

  factory SelectMentorshipRequest.fromJson(Map<String, dynamic> json) =>
      _$SelectMentorshipRequestFromJson(json);

  @JsonKey(name: 'mentorshipId', includeIfNull: false)
  final String mentorshipId;
  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  static const fromJsonFactory = _$SelectMentorshipRequestFromJson;
  static const toJsonFactory = _$SelectMentorshipRequestToJson;
  Map<String, dynamic> toJson() => _$SelectMentorshipRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectMentorshipRequest &&
            (identical(other.mentorshipId, mentorshipId) ||
                const DeepCollectionEquality()
                    .equals(other.mentorshipId, mentorshipId)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(mentorshipId) ^
      const DeepCollectionEquality().hash(context) ^
      runtimeType.hashCode;
}

extension $SelectMentorshipRequestExtension on SelectMentorshipRequest {
  SelectMentorshipRequest copyWith({String? mentorshipId, Context? context}) {
    return SelectMentorshipRequest(
        mentorshipId: mentorshipId ?? this.mentorshipId,
        context: context ?? this.context);
  }

  SelectMentorshipRequest copyWithWrapped(
      {Wrapped<String>? mentorshipId, Wrapped<Context>? context}) {
    return SelectMentorshipRequest(
        mentorshipId:
            (mentorshipId != null ? mentorshipId.value : this.mentorshipId),
        context: (context != null ? context.value : this.context));
  }
}

@JsonSerializable(explicitToJson: true)
class SelectMentorshipResponse {
  SelectMentorshipResponse({
    required this.context,
    required this.mentorshipProvider,
  });

  factory SelectMentorshipResponse.fromJson(Map<String, dynamic> json) =>
      _$SelectMentorshipResponseFromJson(json);

  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  @JsonKey(name: 'mentorshipProvider', includeIfNull: false)
  final MentorshipProvider mentorshipProvider;
  static const fromJsonFactory = _$SelectMentorshipResponseFromJson;
  static const toJsonFactory = _$SelectMentorshipResponseToJson;
  Map<String, dynamic> toJson() => _$SelectMentorshipResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectMentorshipResponse &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.mentorshipProvider, mentorshipProvider) ||
                const DeepCollectionEquality()
                    .equals(other.mentorshipProvider, mentorshipProvider)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(mentorshipProvider) ^
      runtimeType.hashCode;
}

extension $SelectMentorshipResponseExtension on SelectMentorshipResponse {
  SelectMentorshipResponse copyWith(
      {Context? context, MentorshipProvider? mentorshipProvider}) {
    return SelectMentorshipResponse(
        context: context ?? this.context,
        mentorshipProvider: mentorshipProvider ?? this.mentorshipProvider);
  }

  SelectMentorshipResponse copyWithWrapped(
      {Wrapped<Context>? context,
      Wrapped<MentorshipProvider>? mentorshipProvider}) {
    return SelectMentorshipResponse(
        context: (context != null ? context.value : this.context),
        mentorshipProvider: (mentorshipProvider != null
            ? mentorshipProvider.value
            : this.mentorshipProvider));
  }
}

@JsonSerializable(explicitToJson: true)
class InitMentorshipRequest {
  InitMentorshipRequest({
    required this.mentorshipId,
    required this.mentorshipSessionId,
    required this.context,
    required this.billing,
  });

  factory InitMentorshipRequest.fromJson(Map<String, dynamic> json) =>
      _$InitMentorshipRequestFromJson(json);

  @JsonKey(name: 'mentorshipId', includeIfNull: false)
  final String mentorshipId;
  @JsonKey(name: 'mentorshipSessionId', includeIfNull: false)
  final String mentorshipSessionId;
  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  @JsonKey(name: 'billing', includeIfNull: false)
  final MentorshipBilling billing;
  static const fromJsonFactory = _$InitMentorshipRequestFromJson;
  static const toJsonFactory = _$InitMentorshipRequestToJson;
  Map<String, dynamic> toJson() => _$InitMentorshipRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitMentorshipRequest &&
            (identical(other.mentorshipId, mentorshipId) ||
                const DeepCollectionEquality()
                    .equals(other.mentorshipId, mentorshipId)) &&
            (identical(other.mentorshipSessionId, mentorshipSessionId) ||
                const DeepCollectionEquality()
                    .equals(other.mentorshipSessionId, mentorshipSessionId)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.billing, billing) ||
                const DeepCollectionEquality().equals(other.billing, billing)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(mentorshipId) ^
      const DeepCollectionEquality().hash(mentorshipSessionId) ^
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(billing) ^
      runtimeType.hashCode;
}

extension $InitMentorshipRequestExtension on InitMentorshipRequest {
  InitMentorshipRequest copyWith(
      {String? mentorshipId,
      String? mentorshipSessionId,
      Context? context,
      MentorshipBilling? billing}) {
    return InitMentorshipRequest(
        mentorshipId: mentorshipId ?? this.mentorshipId,
        mentorshipSessionId: mentorshipSessionId ?? this.mentorshipSessionId,
        context: context ?? this.context,
        billing: billing ?? this.billing);
  }

  InitMentorshipRequest copyWithWrapped(
      {Wrapped<String>? mentorshipId,
      Wrapped<String>? mentorshipSessionId,
      Wrapped<Context>? context,
      Wrapped<MentorshipBilling>? billing}) {
    return InitMentorshipRequest(
        mentorshipId:
            (mentorshipId != null ? mentorshipId.value : this.mentorshipId),
        mentorshipSessionId: (mentorshipSessionId != null
            ? mentorshipSessionId.value
            : this.mentorshipSessionId),
        context: (context != null ? context.value : this.context),
        billing: (billing != null ? billing.value : this.billing));
  }
}

@JsonSerializable(explicitToJson: true)
class InitMentorshipResponse {
  InitMentorshipResponse({
    required this.mentorshipSessionId,
    required this.context,
  });

  factory InitMentorshipResponse.fromJson(Map<String, dynamic> json) =>
      _$InitMentorshipResponseFromJson(json);

  @JsonKey(name: 'mentorshipSessionId', includeIfNull: false)
  final String mentorshipSessionId;
  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  static const fromJsonFactory = _$InitMentorshipResponseFromJson;
  static const toJsonFactory = _$InitMentorshipResponseToJson;
  Map<String, dynamic> toJson() => _$InitMentorshipResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitMentorshipResponse &&
            (identical(other.mentorshipSessionId, mentorshipSessionId) ||
                const DeepCollectionEquality()
                    .equals(other.mentorshipSessionId, mentorshipSessionId)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(mentorshipSessionId) ^
      const DeepCollectionEquality().hash(context) ^
      runtimeType.hashCode;
}

extension $InitMentorshipResponseExtension on InitMentorshipResponse {
  InitMentorshipResponse copyWith(
      {String? mentorshipSessionId, Context? context}) {
    return InitMentorshipResponse(
        mentorshipSessionId: mentorshipSessionId ?? this.mentorshipSessionId,
        context: context ?? this.context);
  }

  InitMentorshipResponse copyWithWrapped(
      {Wrapped<String>? mentorshipSessionId, Wrapped<Context>? context}) {
    return InitMentorshipResponse(
        mentorshipSessionId: (mentorshipSessionId != null
            ? mentorshipSessionId.value
            : this.mentorshipSessionId),
        context: (context != null ? context.value : this.context));
  }
}

@JsonSerializable(explicitToJson: true)
class ConfirmMentorshipRequest {
  ConfirmMentorshipRequest({
    required this.mentorshipId,
    this.mentorshipSessionId,
    required this.context,
    required this.billing,
  });

  factory ConfirmMentorshipRequest.fromJson(Map<String, dynamic> json) =>
      _$ConfirmMentorshipRequestFromJson(json);

  @JsonKey(name: 'mentorshipId', includeIfNull: false)
  final String mentorshipId;
  @JsonKey(name: 'mentorshipSessionId', includeIfNull: false)
  final String? mentorshipSessionId;
  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  @JsonKey(name: 'billing', includeIfNull: false)
  final MentorshipBilling billing;
  static const fromJsonFactory = _$ConfirmMentorshipRequestFromJson;
  static const toJsonFactory = _$ConfirmMentorshipRequestToJson;
  Map<String, dynamic> toJson() => _$ConfirmMentorshipRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmMentorshipRequest &&
            (identical(other.mentorshipId, mentorshipId) ||
                const DeepCollectionEquality()
                    .equals(other.mentorshipId, mentorshipId)) &&
            (identical(other.mentorshipSessionId, mentorshipSessionId) ||
                const DeepCollectionEquality()
                    .equals(other.mentorshipSessionId, mentorshipSessionId)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.billing, billing) ||
                const DeepCollectionEquality().equals(other.billing, billing)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(mentorshipId) ^
      const DeepCollectionEquality().hash(mentorshipSessionId) ^
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(billing) ^
      runtimeType.hashCode;
}

extension $ConfirmMentorshipRequestExtension on ConfirmMentorshipRequest {
  ConfirmMentorshipRequest copyWith(
      {String? mentorshipId,
      String? mentorshipSessionId,
      Context? context,
      MentorshipBilling? billing}) {
    return ConfirmMentorshipRequest(
        mentorshipId: mentorshipId ?? this.mentorshipId,
        mentorshipSessionId: mentorshipSessionId ?? this.mentorshipSessionId,
        context: context ?? this.context,
        billing: billing ?? this.billing);
  }

  ConfirmMentorshipRequest copyWithWrapped(
      {Wrapped<String>? mentorshipId,
      Wrapped<String?>? mentorshipSessionId,
      Wrapped<Context>? context,
      Wrapped<MentorshipBilling>? billing}) {
    return ConfirmMentorshipRequest(
        mentorshipId:
            (mentorshipId != null ? mentorshipId.value : this.mentorshipId),
        mentorshipSessionId: (mentorshipSessionId != null
            ? mentorshipSessionId.value
            : this.mentorshipSessionId),
        context: (context != null ? context.value : this.context),
        billing: (billing != null ? billing.value : this.billing));
  }
}

@JsonSerializable(explicitToJson: true)
class MentorshipBilling {
  MentorshipBilling({
    required this.name,
    required this.phone,
    required this.email,
    required this.time,
  });

  factory MentorshipBilling.fromJson(Map<String, dynamic> json) =>
      _$MentorshipBillingFromJson(json);

  @JsonKey(name: 'name', includeIfNull: false)
  final String name;
  @JsonKey(name: 'phone', includeIfNull: false)
  final String phone;
  @JsonKey(name: 'email', includeIfNull: false)
  final String email;
  @JsonKey(name: 'time', includeIfNull: false)
  final MentorshipBilling$Time time;
  static const fromJsonFactory = _$MentorshipBillingFromJson;
  static const toJsonFactory = _$MentorshipBillingToJson;
  Map<String, dynamic> toJson() => _$MentorshipBillingToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MentorshipBilling &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(time) ^
      runtimeType.hashCode;
}

extension $MentorshipBillingExtension on MentorshipBilling {
  MentorshipBilling copyWith(
      {String? name,
      String? phone,
      String? email,
      MentorshipBilling$Time? time}) {
    return MentorshipBilling(
        name: name ?? this.name,
        phone: phone ?? this.phone,
        email: email ?? this.email,
        time: time ?? this.time);
  }

  MentorshipBilling copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<String>? phone,
      Wrapped<String>? email,
      Wrapped<MentorshipBilling$Time>? time}) {
    return MentorshipBilling(
        name: (name != null ? name.value : this.name),
        phone: (phone != null ? phone.value : this.phone),
        email: (email != null ? email.value : this.email),
        time: (time != null ? time.value : this.time));
  }
}

@JsonSerializable(explicitToJson: true)
class ConfirmMentorshipResponse {
  ConfirmMentorshipResponse({
    required this.context,
    required this.mentorshipApplicationId,
    this.mentorshipSession,
  });

  factory ConfirmMentorshipResponse.fromJson(Map<String, dynamic> json) =>
      _$ConfirmMentorshipResponseFromJson(json);

  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  @JsonKey(name: 'mentorshipApplicationId', includeIfNull: false)
  final String mentorshipApplicationId;
  @JsonKey(name: 'mentorshipSession', includeIfNull: false)
  final ConfirmedMentorshipSession? mentorshipSession;
  static const fromJsonFactory = _$ConfirmMentorshipResponseFromJson;
  static const toJsonFactory = _$ConfirmMentorshipResponseToJson;
  Map<String, dynamic> toJson() => _$ConfirmMentorshipResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmMentorshipResponse &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(
                    other.mentorshipApplicationId, mentorshipApplicationId) ||
                const DeepCollectionEquality().equals(
                    other.mentorshipApplicationId, mentorshipApplicationId)) &&
            (identical(other.mentorshipSession, mentorshipSession) ||
                const DeepCollectionEquality()
                    .equals(other.mentorshipSession, mentorshipSession)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(mentorshipApplicationId) ^
      const DeepCollectionEquality().hash(mentorshipSession) ^
      runtimeType.hashCode;
}

extension $ConfirmMentorshipResponseExtension on ConfirmMentorshipResponse {
  ConfirmMentorshipResponse copyWith(
      {Context? context,
      String? mentorshipApplicationId,
      ConfirmedMentorshipSession? mentorshipSession}) {
    return ConfirmMentorshipResponse(
        context: context ?? this.context,
        mentorshipApplicationId:
            mentorshipApplicationId ?? this.mentorshipApplicationId,
        mentorshipSession: mentorshipSession ?? this.mentorshipSession);
  }

  ConfirmMentorshipResponse copyWithWrapped(
      {Wrapped<Context>? context,
      Wrapped<String>? mentorshipApplicationId,
      Wrapped<ConfirmedMentorshipSession?>? mentorshipSession}) {
    return ConfirmMentorshipResponse(
        context: (context != null ? context.value : this.context),
        mentorshipApplicationId: (mentorshipApplicationId != null
            ? mentorshipApplicationId.value
            : this.mentorshipApplicationId),
        mentorshipSession: (mentorshipSession != null
            ? mentorshipSession.value
            : this.mentorshipSession));
  }
}

@JsonSerializable(explicitToJson: true)
class ConfirmedMentorshipSession {
  ConfirmedMentorshipSession({
    required this.id,
    this.sessionJoinLinks,
    required this.language,
    this.timingStart,
    this.timingEnd,
    required this.type,
    this.status,
    this.timezone,
    required this.mentor,
  });

  factory ConfirmedMentorshipSession.fromJson(Map<String, dynamic> json) =>
      _$ConfirmedMentorshipSessionFromJson(json);

  @JsonKey(name: 'id', includeIfNull: false)
  final String id;
  @JsonKey(
      name: 'sessionJoinLinks', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? sessionJoinLinks;
  @JsonKey(name: 'language', includeIfNull: false)
  final String language;
  @JsonKey(name: 'timingStart', includeIfNull: false)
  final String? timingStart;
  @JsonKey(name: 'timingEnd', includeIfNull: false)
  final String? timingEnd;
  @JsonKey(name: 'type', includeIfNull: false)
  final String type;
  @JsonKey(name: 'status', includeIfNull: false)
  final String? status;
  @JsonKey(name: 'timezone', includeIfNull: false)
  final String? timezone;
  @JsonKey(name: 'mentor', includeIfNull: false)
  final Mentor mentor;
  static const fromJsonFactory = _$ConfirmedMentorshipSessionFromJson;
  static const toJsonFactory = _$ConfirmedMentorshipSessionToJson;
  Map<String, dynamic> toJson() => _$ConfirmedMentorshipSessionToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmedMentorshipSession &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.sessionJoinLinks, sessionJoinLinks) ||
                const DeepCollectionEquality()
                    .equals(other.sessionJoinLinks, sessionJoinLinks)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.timingStart, timingStart) ||
                const DeepCollectionEquality()
                    .equals(other.timingStart, timingStart)) &&
            (identical(other.timingEnd, timingEnd) ||
                const DeepCollectionEquality()
                    .equals(other.timingEnd, timingEnd)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.timezone, timezone) ||
                const DeepCollectionEquality()
                    .equals(other.timezone, timezone)) &&
            (identical(other.mentor, mentor) ||
                const DeepCollectionEquality().equals(other.mentor, mentor)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(sessionJoinLinks) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(timingStart) ^
      const DeepCollectionEquality().hash(timingEnd) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(timezone) ^
      const DeepCollectionEquality().hash(mentor) ^
      runtimeType.hashCode;
}

extension $ConfirmedMentorshipSessionExtension on ConfirmedMentorshipSession {
  ConfirmedMentorshipSession copyWith(
      {String? id,
      List<Object>? sessionJoinLinks,
      String? language,
      String? timingStart,
      String? timingEnd,
      String? type,
      String? status,
      String? timezone,
      Mentor? mentor}) {
    return ConfirmedMentorshipSession(
        id: id ?? this.id,
        sessionJoinLinks: sessionJoinLinks ?? this.sessionJoinLinks,
        language: language ?? this.language,
        timingStart: timingStart ?? this.timingStart,
        timingEnd: timingEnd ?? this.timingEnd,
        type: type ?? this.type,
        status: status ?? this.status,
        timezone: timezone ?? this.timezone,
        mentor: mentor ?? this.mentor);
  }

  ConfirmedMentorshipSession copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<List<Object>?>? sessionJoinLinks,
      Wrapped<String>? language,
      Wrapped<String?>? timingStart,
      Wrapped<String?>? timingEnd,
      Wrapped<String>? type,
      Wrapped<String?>? status,
      Wrapped<String?>? timezone,
      Wrapped<Mentor>? mentor}) {
    return ConfirmedMentorshipSession(
        id: (id != null ? id.value : this.id),
        sessionJoinLinks: (sessionJoinLinks != null
            ? sessionJoinLinks.value
            : this.sessionJoinLinks),
        language: (language != null ? language.value : this.language),
        timingStart:
            (timingStart != null ? timingStart.value : this.timingStart),
        timingEnd: (timingEnd != null ? timingEnd.value : this.timingEnd),
        type: (type != null ? type.value : this.type),
        status: (status != null ? status.value : this.status),
        timezone: (timezone != null ? timezone.value : this.timezone),
        mentor: (mentor != null ? mentor.value : this.mentor));
  }
}

@JsonSerializable(explicitToJson: true)
class MentorshipSessionJoinLink {
  MentorshipSessionJoinLink({
    this.id,
    required this.link,
  });

  factory MentorshipSessionJoinLink.fromJson(Map<String, dynamic> json) =>
      _$MentorshipSessionJoinLinkFromJson(json);

  @JsonKey(name: 'id', includeIfNull: false)
  final String? id;
  @JsonKey(name: 'link', includeIfNull: false)
  final String link;
  static const fromJsonFactory = _$MentorshipSessionJoinLinkFromJson;
  static const toJsonFactory = _$MentorshipSessionJoinLinkToJson;
  Map<String, dynamic> toJson() => _$MentorshipSessionJoinLinkToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MentorshipSessionJoinLink &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(link) ^
      runtimeType.hashCode;
}

extension $MentorshipSessionJoinLinkExtension on MentorshipSessionJoinLink {
  MentorshipSessionJoinLink copyWith({String? id, String? link}) {
    return MentorshipSessionJoinLink(
        id: id ?? this.id, link: link ?? this.link);
  }

  MentorshipSessionJoinLink copyWithWrapped(
      {Wrapped<String?>? id, Wrapped<String>? link}) {
    return MentorshipSessionJoinLink(
        id: (id != null ? id.value : this.id),
        link: (link != null ? link.value : this.link));
  }
}

@JsonSerializable(explicitToJson: true)
class MentorshipStatusRequest {
  MentorshipStatusRequest({
    this.mentorshipApplicationId,
    required this.context,
  });

  factory MentorshipStatusRequest.fromJson(Map<String, dynamic> json) =>
      _$MentorshipStatusRequestFromJson(json);

  @JsonKey(name: 'mentorshipApplicationId', includeIfNull: false)
  final String? mentorshipApplicationId;
  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  static const fromJsonFactory = _$MentorshipStatusRequestFromJson;
  static const toJsonFactory = _$MentorshipStatusRequestToJson;
  Map<String, dynamic> toJson() => _$MentorshipStatusRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MentorshipStatusRequest &&
            (identical(
                    other.mentorshipApplicationId, mentorshipApplicationId) ||
                const DeepCollectionEquality().equals(
                    other.mentorshipApplicationId, mentorshipApplicationId)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(mentorshipApplicationId) ^
      const DeepCollectionEquality().hash(context) ^
      runtimeType.hashCode;
}

extension $MentorshipStatusRequestExtension on MentorshipStatusRequest {
  MentorshipStatusRequest copyWith(
      {String? mentorshipApplicationId, Context? context}) {
    return MentorshipStatusRequest(
        mentorshipApplicationId:
            mentorshipApplicationId ?? this.mentorshipApplicationId,
        context: context ?? this.context);
  }

  MentorshipStatusRequest copyWithWrapped(
      {Wrapped<String?>? mentorshipApplicationId, Wrapped<Context>? context}) {
    return MentorshipStatusRequest(
        mentorshipApplicationId: (mentorshipApplicationId != null
            ? mentorshipApplicationId.value
            : this.mentorshipApplicationId),
        context: (context != null ? context.value : this.context));
  }
}

@JsonSerializable(explicitToJson: true)
class MentorshipStatusResponse {
  MentorshipStatusResponse({
    required this.context,
    required this.mentorshipApplicationId,
    required this.mentorshipApplicationStatus,
    this.mentorshipProvider,
  });

  factory MentorshipStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$MentorshipStatusResponseFromJson(json);

  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  @JsonKey(name: 'mentorshipApplicationId', includeIfNull: false)
  final String mentorshipApplicationId;
  @JsonKey(name: 'mentorshipApplicationStatus', includeIfNull: false)
  final String mentorshipApplicationStatus;
  @JsonKey(name: 'mentorshipProvider', includeIfNull: false)
  final MentorshipProvider? mentorshipProvider;
  static const fromJsonFactory = _$MentorshipStatusResponseFromJson;
  static const toJsonFactory = _$MentorshipStatusResponseToJson;
  Map<String, dynamic> toJson() => _$MentorshipStatusResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MentorshipStatusResponse &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(
                    other.mentorshipApplicationId, mentorshipApplicationId) ||
                const DeepCollectionEquality().equals(
                    other.mentorshipApplicationId, mentorshipApplicationId)) &&
            (identical(other.mentorshipApplicationStatus,
                    mentorshipApplicationStatus) ||
                const DeepCollectionEquality().equals(
                    other.mentorshipApplicationStatus,
                    mentorshipApplicationStatus)) &&
            (identical(other.mentorshipProvider, mentorshipProvider) ||
                const DeepCollectionEquality()
                    .equals(other.mentorshipProvider, mentorshipProvider)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(mentorshipApplicationId) ^
      const DeepCollectionEquality().hash(mentorshipApplicationStatus) ^
      const DeepCollectionEquality().hash(mentorshipProvider) ^
      runtimeType.hashCode;
}

extension $MentorshipStatusResponseExtension on MentorshipStatusResponse {
  MentorshipStatusResponse copyWith(
      {Context? context,
      String? mentorshipApplicationId,
      String? mentorshipApplicationStatus,
      MentorshipProvider? mentorshipProvider}) {
    return MentorshipStatusResponse(
        context: context ?? this.context,
        mentorshipApplicationId:
            mentorshipApplicationId ?? this.mentorshipApplicationId,
        mentorshipApplicationStatus:
            mentorshipApplicationStatus ?? this.mentorshipApplicationStatus,
        mentorshipProvider: mentorshipProvider ?? this.mentorshipProvider);
  }

  MentorshipStatusResponse copyWithWrapped(
      {Wrapped<Context>? context,
      Wrapped<String>? mentorshipApplicationId,
      Wrapped<String>? mentorshipApplicationStatus,
      Wrapped<MentorshipProvider?>? mentorshipProvider}) {
    return MentorshipStatusResponse(
        context: (context != null ? context.value : this.context),
        mentorshipApplicationId: (mentorshipApplicationId != null
            ? mentorshipApplicationId.value
            : this.mentorshipApplicationId),
        mentorshipApplicationStatus: (mentorshipApplicationStatus != null
            ? mentorshipApplicationStatus.value
            : this.mentorshipApplicationStatus),
        mentorshipProvider: (mentorshipProvider != null
            ? mentorshipProvider.value
            : this.mentorshipProvider));
  }
}

@JsonSerializable(explicitToJson: true)
class MentorshipCancelRequest {
  MentorshipCancelRequest({
    this.mentorshipApplicationId,
    this.mentorshipCancellationReasonId,
    this.mentorshipCancellationReason,
    required this.context,
  });

  factory MentorshipCancelRequest.fromJson(Map<String, dynamic> json) =>
      _$MentorshipCancelRequestFromJson(json);

  @JsonKey(name: 'mentorshipApplicationId', includeIfNull: false)
  final String? mentorshipApplicationId;
  @JsonKey(name: 'mentorshipCancellationReasonId', includeIfNull: false)
  final int? mentorshipCancellationReasonId;
  @JsonKey(name: 'mentorshipCancellationReason', includeIfNull: false)
  final String? mentorshipCancellationReason;
  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  static const fromJsonFactory = _$MentorshipCancelRequestFromJson;
  static const toJsonFactory = _$MentorshipCancelRequestToJson;
  Map<String, dynamic> toJson() => _$MentorshipCancelRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MentorshipCancelRequest &&
            (identical(
                    other.mentorshipApplicationId, mentorshipApplicationId) ||
                const DeepCollectionEquality().equals(
                    other.mentorshipApplicationId, mentorshipApplicationId)) &&
            (identical(other.mentorshipCancellationReasonId,
                    mentorshipCancellationReasonId) ||
                const DeepCollectionEquality().equals(
                    other.mentorshipCancellationReasonId,
                    mentorshipCancellationReasonId)) &&
            (identical(other.mentorshipCancellationReason,
                    mentorshipCancellationReason) ||
                const DeepCollectionEquality().equals(
                    other.mentorshipCancellationReason,
                    mentorshipCancellationReason)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(mentorshipApplicationId) ^
      const DeepCollectionEquality().hash(mentorshipCancellationReasonId) ^
      const DeepCollectionEquality().hash(mentorshipCancellationReason) ^
      const DeepCollectionEquality().hash(context) ^
      runtimeType.hashCode;
}

extension $MentorshipCancelRequestExtension on MentorshipCancelRequest {
  MentorshipCancelRequest copyWith(
      {String? mentorshipApplicationId,
      int? mentorshipCancellationReasonId,
      String? mentorshipCancellationReason,
      Context? context}) {
    return MentorshipCancelRequest(
        mentorshipApplicationId:
            mentorshipApplicationId ?? this.mentorshipApplicationId,
        mentorshipCancellationReasonId: mentorshipCancellationReasonId ??
            this.mentorshipCancellationReasonId,
        mentorshipCancellationReason:
            mentorshipCancellationReason ?? this.mentorshipCancellationReason,
        context: context ?? this.context);
  }

  MentorshipCancelRequest copyWithWrapped(
      {Wrapped<String?>? mentorshipApplicationId,
      Wrapped<int?>? mentorshipCancellationReasonId,
      Wrapped<String?>? mentorshipCancellationReason,
      Wrapped<Context>? context}) {
    return MentorshipCancelRequest(
        mentorshipApplicationId: (mentorshipApplicationId != null
            ? mentorshipApplicationId.value
            : this.mentorshipApplicationId),
        mentorshipCancellationReasonId: (mentorshipCancellationReasonId != null
            ? mentorshipCancellationReasonId.value
            : this.mentorshipCancellationReasonId),
        mentorshipCancellationReason: (mentorshipCancellationReason != null
            ? mentorshipCancellationReason.value
            : this.mentorshipCancellationReason),
        context: (context != null ? context.value : this.context));
  }
}

@JsonSerializable(explicitToJson: true)
class MentorshipCancelResponse {
  MentorshipCancelResponse({
    this.mentorshipApplicationId,
    required this.context,
  });

  factory MentorshipCancelResponse.fromJson(Map<String, dynamic> json) =>
      _$MentorshipCancelResponseFromJson(json);

  @JsonKey(name: 'mentorshipApplicationId', includeIfNull: false)
  final String? mentorshipApplicationId;
  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  static const fromJsonFactory = _$MentorshipCancelResponseFromJson;
  static const toJsonFactory = _$MentorshipCancelResponseToJson;
  Map<String, dynamic> toJson() => _$MentorshipCancelResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MentorshipCancelResponse &&
            (identical(
                    other.mentorshipApplicationId, mentorshipApplicationId) ||
                const DeepCollectionEquality().equals(
                    other.mentorshipApplicationId, mentorshipApplicationId)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(mentorshipApplicationId) ^
      const DeepCollectionEquality().hash(context) ^
      runtimeType.hashCode;
}

extension $MentorshipCancelResponseExtension on MentorshipCancelResponse {
  MentorshipCancelResponse copyWith(
      {String? mentorshipApplicationId, Context? context}) {
    return MentorshipCancelResponse(
        mentorshipApplicationId:
            mentorshipApplicationId ?? this.mentorshipApplicationId,
        context: context ?? this.context);
  }

  MentorshipCancelResponse copyWithWrapped(
      {Wrapped<String?>? mentorshipApplicationId, Wrapped<Context>? context}) {
    return MentorshipCancelResponse(
        mentorshipApplicationId: (mentorshipApplicationId != null
            ? mentorshipApplicationId.value
            : this.mentorshipApplicationId),
        context: (context != null ? context.value : this.context));
  }
}

@JsonSerializable(explicitToJson: true)
class SearchScholarship {
  SearchScholarship({
    this.name,
    this.categories,
    this.gender,
    this.finStatus,
    this.casteCategory,
  });

  factory SearchScholarship.fromJson(Map<String, dynamic> json) =>
      _$SearchScholarshipFromJson(json);

  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(
      name: 'categories',
      includeIfNull: false,
      defaultValue: <SearchScholarship$Categories>[])
  final List<SearchScholarship$Categories>? categories;
  @JsonKey(name: 'gender', includeIfNull: false)
  final String? gender;
  @JsonKey(name: 'finStatus', includeIfNull: false)
  final SearchScholarship$FinStatus? finStatus;
  @JsonKey(
      name: 'casteCategory',
      includeIfNull: false,
      defaultValue: <SearchScholarship$CasteCategory>[])
  final List<SearchScholarship$CasteCategory>? casteCategory;
  static const fromJsonFactory = _$SearchScholarshipFromJson;
  static const toJsonFactory = _$SearchScholarshipToJson;
  Map<String, dynamic> toJson() => _$SearchScholarshipToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchScholarship &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.finStatus, finStatus) ||
                const DeepCollectionEquality()
                    .equals(other.finStatus, finStatus)) &&
            (identical(other.casteCategory, casteCategory) ||
                const DeepCollectionEquality()
                    .equals(other.casteCategory, casteCategory)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(finStatus) ^
      const DeepCollectionEquality().hash(casteCategory) ^
      runtimeType.hashCode;
}

extension $SearchScholarshipExtension on SearchScholarship {
  SearchScholarship copyWith(
      {String? name,
      List<SearchScholarship$Categories>? categories,
      String? gender,
      SearchScholarship$FinStatus? finStatus,
      List<SearchScholarship$CasteCategory>? casteCategory}) {
    return SearchScholarship(
        name: name ?? this.name,
        categories: categories ?? this.categories,
        gender: gender ?? this.gender,
        finStatus: finStatus ?? this.finStatus,
        casteCategory: casteCategory ?? this.casteCategory);
  }

  SearchScholarship copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<List<SearchScholarship$Categories>?>? categories,
      Wrapped<String?>? gender,
      Wrapped<SearchScholarship$FinStatus?>? finStatus,
      Wrapped<List<SearchScholarship$CasteCategory>?>? casteCategory}) {
    return SearchScholarship(
        name: (name != null ? name.value : this.name),
        categories: (categories != null ? categories.value : this.categories),
        gender: (gender != null ? gender.value : this.gender),
        finStatus: (finStatus != null ? finStatus.value : this.finStatus),
        casteCategory:
            (casteCategory != null ? casteCategory.value : this.casteCategory));
  }
}

@JsonSerializable(explicitToJson: true)
class ScholarshipResults {
  ScholarshipResults({
    required this.context,
    required this.scholarshipProviders,
  });

  factory ScholarshipResults.fromJson(Map<String, dynamic> json) =>
      _$ScholarshipResultsFromJson(json);

  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  @JsonKey(
      name: 'scholarshipProviders',
      includeIfNull: false,
      defaultValue: <Object>[])
  final List<Object> scholarshipProviders;
  static const fromJsonFactory = _$ScholarshipResultsFromJson;
  static const toJsonFactory = _$ScholarshipResultsToJson;
  Map<String, dynamic> toJson() => _$ScholarshipResultsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScholarshipResults &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.scholarshipProviders, scholarshipProviders) ||
                const DeepCollectionEquality()
                    .equals(other.scholarshipProviders, scholarshipProviders)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(scholarshipProviders) ^
      runtimeType.hashCode;
}

extension $ScholarshipResultsExtension on ScholarshipResults {
  ScholarshipResults copyWith(
      {Context? context, List<Object>? scholarshipProviders}) {
    return ScholarshipResults(
        context: context ?? this.context,
        scholarshipProviders:
            scholarshipProviders ?? this.scholarshipProviders);
  }

  ScholarshipResults copyWithWrapped(
      {Wrapped<Context>? context,
      Wrapped<List<Object>>? scholarshipProviders}) {
    return ScholarshipResults(
        context: (context != null ? context.value : this.context),
        scholarshipProviders: (scholarshipProviders != null
            ? scholarshipProviders.value
            : this.scholarshipProviders));
  }
}

@JsonSerializable(explicitToJson: true)
class ScholarshipProvider {
  ScholarshipProvider({
    required this.id,
    required this.name,
    this.description,
    required this.scholarships,
  });

  factory ScholarshipProvider.fromJson(Map<String, dynamic> json) =>
      _$ScholarshipProviderFromJson(json);

  @JsonKey(name: 'id', includeIfNull: false)
  final String id;
  @JsonKey(name: 'name', includeIfNull: false)
  final String name;
  @JsonKey(name: 'description', includeIfNull: false)
  final String? description;
  @JsonKey(name: 'scholarships', includeIfNull: false, defaultValue: <Object>[])
  final List<Object> scholarships;
  static const fromJsonFactory = _$ScholarshipProviderFromJson;
  static const toJsonFactory = _$ScholarshipProviderToJson;
  Map<String, dynamic> toJson() => _$ScholarshipProviderToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScholarshipProvider &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.scholarships, scholarships) ||
                const DeepCollectionEquality()
                    .equals(other.scholarships, scholarships)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(scholarships) ^
      runtimeType.hashCode;
}

extension $ScholarshipProviderExtension on ScholarshipProvider {
  ScholarshipProvider copyWith(
      {String? id,
      String? name,
      String? description,
      List<Object>? scholarships}) {
    return ScholarshipProvider(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        scholarships: scholarships ?? this.scholarships);
  }

  ScholarshipProvider copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? name,
      Wrapped<String?>? description,
      Wrapped<List<Object>>? scholarships}) {
    return ScholarshipProvider(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        scholarships:
            (scholarships != null ? scholarships.value : this.scholarships));
  }
}

@JsonSerializable(explicitToJson: true)
class Scholarship {
  Scholarship({
    required this.id,
    required this.name,
    required this.description,
    this.amount,
    this.category,
    this.scholarshipDetails,
  });

  factory Scholarship.fromJson(Map<String, dynamic> json) =>
      _$ScholarshipFromJson(json);

  @JsonKey(name: 'id', includeIfNull: false)
  final String id;
  @JsonKey(name: 'name', includeIfNull: false)
  final String name;
  @JsonKey(name: 'description', includeIfNull: false)
  final String description;
  @JsonKey(name: 'amount', includeIfNull: false)
  final ScholarshipAmount? amount;
  @JsonKey(name: 'category', includeIfNull: false)
  final ScholarshipCategory? category;
  @JsonKey(name: 'scholarshipDetails', includeIfNull: false)
  final ScholarshipDetails? scholarshipDetails;
  static const fromJsonFactory = _$ScholarshipFromJson;
  static const toJsonFactory = _$ScholarshipToJson;
  Map<String, dynamic> toJson() => _$ScholarshipToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Scholarship &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.scholarshipDetails, scholarshipDetails) ||
                const DeepCollectionEquality()
                    .equals(other.scholarshipDetails, scholarshipDetails)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(scholarshipDetails) ^
      runtimeType.hashCode;
}

extension $ScholarshipExtension on Scholarship {
  Scholarship copyWith(
      {String? id,
      String? name,
      String? description,
      ScholarshipAmount? amount,
      ScholarshipCategory? category,
      ScholarshipDetails? scholarshipDetails}) {
    return Scholarship(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        amount: amount ?? this.amount,
        category: category ?? this.category,
        scholarshipDetails: scholarshipDetails ?? this.scholarshipDetails);
  }

  Scholarship copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? name,
      Wrapped<String>? description,
      Wrapped<ScholarshipAmount?>? amount,
      Wrapped<ScholarshipCategory?>? category,
      Wrapped<ScholarshipDetails?>? scholarshipDetails}) {
    return Scholarship(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        amount: (amount != null ? amount.value : this.amount),
        category: (category != null ? category.value : this.category),
        scholarshipDetails: (scholarshipDetails != null
            ? scholarshipDetails.value
            : this.scholarshipDetails));
  }
}

@JsonSerializable(explicitToJson: true)
class ScholarshipAmount {
  ScholarshipAmount({
    required this.amount,
    required this.currency,
  });

  factory ScholarshipAmount.fromJson(Map<String, dynamic> json) =>
      _$ScholarshipAmountFromJson(json);

  @JsonKey(name: 'amount', includeIfNull: false)
  final double amount;
  @JsonKey(name: 'currency', includeIfNull: false)
  final String currency;
  static const fromJsonFactory = _$ScholarshipAmountFromJson;
  static const toJsonFactory = _$ScholarshipAmountToJson;
  Map<String, dynamic> toJson() => _$ScholarshipAmountToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScholarshipAmount &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(currency) ^
      runtimeType.hashCode;
}

extension $ScholarshipAmountExtension on ScholarshipAmount {
  ScholarshipAmount copyWith({double? amount, String? currency}) {
    return ScholarshipAmount(
        amount: amount ?? this.amount, currency: currency ?? this.currency);
  }

  ScholarshipAmount copyWithWrapped(
      {Wrapped<double>? amount, Wrapped<String>? currency}) {
    return ScholarshipAmount(
        amount: (amount != null ? amount.value : this.amount),
        currency: (currency != null ? currency.value : this.currency));
  }
}

@JsonSerializable(explicitToJson: true)
class ScholarshipCategory {
  ScholarshipCategory({
    required this.id,
    required this.name,
    required this.code,
  });

  factory ScholarshipCategory.fromJson(Map<String, dynamic> json) =>
      _$ScholarshipCategoryFromJson(json);

  @JsonKey(name: 'id', includeIfNull: false)
  final String id;
  @JsonKey(name: 'name', includeIfNull: false)
  final String name;
  @JsonKey(name: 'code', includeIfNull: false)
  final String code;
  static const fromJsonFactory = _$ScholarshipCategoryFromJson;
  static const toJsonFactory = _$ScholarshipCategoryToJson;
  Map<String, dynamic> toJson() => _$ScholarshipCategoryToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScholarshipCategory &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      runtimeType.hashCode;
}

extension $ScholarshipCategoryExtension on ScholarshipCategory {
  ScholarshipCategory copyWith({String? id, String? name, String? code}) {
    return ScholarshipCategory(
        id: id ?? this.id, name: name ?? this.name, code: code ?? this.code);
  }

  ScholarshipCategory copyWithWrapped(
      {Wrapped<String>? id, Wrapped<String>? name, Wrapped<String>? code}) {
    return ScholarshipCategory(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        code: (code != null ? code.value : this.code));
  }
}

@JsonSerializable(explicitToJson: true)
class ScholarshipDetails {
  ScholarshipDetails({
    required this.id,
    required this.type,
    this.applicationStartDate,
    this.applicationEndDate,
    this.supportContact,
  });

  factory ScholarshipDetails.fromJson(Map<String, dynamic> json) =>
      _$ScholarshipDetailsFromJson(json);

  @JsonKey(name: 'id', includeIfNull: false)
  final String id;
  @JsonKey(name: 'type', includeIfNull: false)
  final String type;
  @JsonKey(name: 'applicationStartDate', includeIfNull: false)
  final String? applicationStartDate;
  @JsonKey(name: 'applicationEndDate', includeIfNull: false)
  final String? applicationEndDate;
  @JsonKey(name: 'supportContact', includeIfNull: false)
  final SupportContact? supportContact;
  static const fromJsonFactory = _$ScholarshipDetailsFromJson;
  static const toJsonFactory = _$ScholarshipDetailsToJson;
  Map<String, dynamic> toJson() => _$ScholarshipDetailsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScholarshipDetails &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.applicationStartDate, applicationStartDate) ||
                const DeepCollectionEquality().equals(
                    other.applicationStartDate, applicationStartDate)) &&
            (identical(other.applicationEndDate, applicationEndDate) ||
                const DeepCollectionEquality()
                    .equals(other.applicationEndDate, applicationEndDate)) &&
            (identical(other.supportContact, supportContact) ||
                const DeepCollectionEquality()
                    .equals(other.supportContact, supportContact)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(applicationStartDate) ^
      const DeepCollectionEquality().hash(applicationEndDate) ^
      const DeepCollectionEquality().hash(supportContact) ^
      runtimeType.hashCode;
}

extension $ScholarshipDetailsExtension on ScholarshipDetails {
  ScholarshipDetails copyWith(
      {String? id,
      String? type,
      String? applicationStartDate,
      String? applicationEndDate,
      SupportContact? supportContact}) {
    return ScholarshipDetails(
        id: id ?? this.id,
        type: type ?? this.type,
        applicationStartDate: applicationStartDate ?? this.applicationStartDate,
        applicationEndDate: applicationEndDate ?? this.applicationEndDate,
        supportContact: supportContact ?? this.supportContact);
  }

  ScholarshipDetails copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? type,
      Wrapped<String?>? applicationStartDate,
      Wrapped<String?>? applicationEndDate,
      Wrapped<SupportContact?>? supportContact}) {
    return ScholarshipDetails(
        id: (id != null ? id.value : this.id),
        type: (type != null ? type.value : this.type),
        applicationStartDate: (applicationStartDate != null
            ? applicationStartDate.value
            : this.applicationStartDate),
        applicationEndDate: (applicationEndDate != null
            ? applicationEndDate.value
            : this.applicationEndDate),
        supportContact: (supportContact != null
            ? supportContact.value
            : this.supportContact));
  }
}

@JsonSerializable(explicitToJson: true)
class SupportContact {
  SupportContact({
    this.name,
    required this.phone,
    required this.email,
  });

  factory SupportContact.fromJson(Map<String, dynamic> json) =>
      _$SupportContactFromJson(json);

  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'phone', includeIfNull: false)
  final String phone;
  @JsonKey(name: 'email', includeIfNull: false)
  final String email;
  static const fromJsonFactory = _$SupportContactFromJson;
  static const toJsonFactory = _$SupportContactToJson;
  Map<String, dynamic> toJson() => _$SupportContactToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SupportContact &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(email) ^
      runtimeType.hashCode;
}

extension $SupportContactExtension on SupportContact {
  SupportContact copyWith({String? name, String? phone, String? email}) {
    return SupportContact(
        name: name ?? this.name,
        phone: phone ?? this.phone,
        email: email ?? this.email);
  }

  SupportContact copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<String>? phone,
      Wrapped<String>? email}) {
    return SupportContact(
        name: (name != null ? name.value : this.name),
        phone: (phone != null ? phone.value : this.phone),
        email: (email != null ? email.value : this.email));
  }
}

@JsonSerializable(explicitToJson: true)
class SelectScholarship {
  SelectScholarship({
    required this.scholarshipProiderId,
    required this.scholarshipId,
    this.scholarshipDetailsId,
    required this.context,
  });

  factory SelectScholarship.fromJson(Map<String, dynamic> json) =>
      _$SelectScholarshipFromJson(json);

  @JsonKey(name: 'scholarshipProiderId', includeIfNull: false)
  final String scholarshipProiderId;
  @JsonKey(name: 'scholarshipId', includeIfNull: false)
  final String scholarshipId;
  @JsonKey(name: 'scholarshipDetailsId', includeIfNull: false)
  final String? scholarshipDetailsId;
  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  static const fromJsonFactory = _$SelectScholarshipFromJson;
  static const toJsonFactory = _$SelectScholarshipToJson;
  Map<String, dynamic> toJson() => _$SelectScholarshipToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectScholarship &&
            (identical(other.scholarshipProiderId, scholarshipProiderId) ||
                const DeepCollectionEquality().equals(
                    other.scholarshipProiderId, scholarshipProiderId)) &&
            (identical(other.scholarshipId, scholarshipId) ||
                const DeepCollectionEquality()
                    .equals(other.scholarshipId, scholarshipId)) &&
            (identical(other.scholarshipDetailsId, scholarshipDetailsId) ||
                const DeepCollectionEquality().equals(
                    other.scholarshipDetailsId, scholarshipDetailsId)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(scholarshipProiderId) ^
      const DeepCollectionEquality().hash(scholarshipId) ^
      const DeepCollectionEquality().hash(scholarshipDetailsId) ^
      const DeepCollectionEquality().hash(context) ^
      runtimeType.hashCode;
}

extension $SelectScholarshipExtension on SelectScholarship {
  SelectScholarship copyWith(
      {String? scholarshipProiderId,
      String? scholarshipId,
      String? scholarshipDetailsId,
      Context? context}) {
    return SelectScholarship(
        scholarshipProiderId: scholarshipProiderId ?? this.scholarshipProiderId,
        scholarshipId: scholarshipId ?? this.scholarshipId,
        scholarshipDetailsId: scholarshipDetailsId ?? this.scholarshipDetailsId,
        context: context ?? this.context);
  }

  SelectScholarship copyWithWrapped(
      {Wrapped<String>? scholarshipProiderId,
      Wrapped<String>? scholarshipId,
      Wrapped<String?>? scholarshipDetailsId,
      Wrapped<Context>? context}) {
    return SelectScholarship(
        scholarshipProiderId: (scholarshipProiderId != null
            ? scholarshipProiderId.value
            : this.scholarshipProiderId),
        scholarshipId:
            (scholarshipId != null ? scholarshipId.value : this.scholarshipId),
        scholarshipDetailsId: (scholarshipDetailsId != null
            ? scholarshipDetailsId.value
            : this.scholarshipDetailsId),
        context: (context != null ? context.value : this.context));
  }
}

@JsonSerializable(explicitToJson: true)
class SelectScholarshipResponse {
  SelectScholarshipResponse({
    required this.context,
    required this.scholarshipProvider,
    this.additionalForm,
    this.academicQualificationsCriteria,
    this.finStatusCriteria,
    this.benefits,
  });

  factory SelectScholarshipResponse.fromJson(Map<String, dynamic> json) =>
      _$SelectScholarshipResponseFromJson(json);

  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  @JsonKey(name: 'scholarshipProvider', includeIfNull: false)
  final ScholarshipProvider scholarshipProvider;
  @JsonKey(name: 'additionalForm', includeIfNull: false)
  final ScholarshipAdditionalForm? additionalForm;
  @JsonKey(
      name: 'academicQualificationsCriteria',
      includeIfNull: false,
      defaultValue: <Object>[])
  final List<Object>? academicQualificationsCriteria;
  @JsonKey(
      name: 'finStatusCriteria', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? finStatusCriteria;
  @JsonKey(name: 'benefits', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? benefits;
  static const fromJsonFactory = _$SelectScholarshipResponseFromJson;
  static const toJsonFactory = _$SelectScholarshipResponseToJson;
  Map<String, dynamic> toJson() => _$SelectScholarshipResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectScholarshipResponse &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.scholarshipProvider, scholarshipProvider) ||
                const DeepCollectionEquality()
                    .equals(other.scholarshipProvider, scholarshipProvider)) &&
            (identical(other.additionalForm, additionalForm) ||
                const DeepCollectionEquality()
                    .equals(other.additionalForm, additionalForm)) &&
            (identical(other.academicQualificationsCriteria,
                    academicQualificationsCriteria) ||
                const DeepCollectionEquality().equals(
                    other.academicQualificationsCriteria,
                    academicQualificationsCriteria)) &&
            (identical(other.finStatusCriteria, finStatusCriteria) ||
                const DeepCollectionEquality()
                    .equals(other.finStatusCriteria, finStatusCriteria)) &&
            (identical(other.benefits, benefits) ||
                const DeepCollectionEquality()
                    .equals(other.benefits, benefits)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(scholarshipProvider) ^
      const DeepCollectionEquality().hash(additionalForm) ^
      const DeepCollectionEquality().hash(academicQualificationsCriteria) ^
      const DeepCollectionEquality().hash(finStatusCriteria) ^
      const DeepCollectionEquality().hash(benefits) ^
      runtimeType.hashCode;
}

extension $SelectScholarshipResponseExtension on SelectScholarshipResponse {
  SelectScholarshipResponse copyWith(
      {Context? context,
      ScholarshipProvider? scholarshipProvider,
      ScholarshipAdditionalForm? additionalForm,
      List<Object>? academicQualificationsCriteria,
      List<Object>? finStatusCriteria,
      List<Object>? benefits}) {
    return SelectScholarshipResponse(
        context: context ?? this.context,
        scholarshipProvider: scholarshipProvider ?? this.scholarshipProvider,
        additionalForm: additionalForm ?? this.additionalForm,
        academicQualificationsCriteria: academicQualificationsCriteria ??
            this.academicQualificationsCriteria,
        finStatusCriteria: finStatusCriteria ?? this.finStatusCriteria,
        benefits: benefits ?? this.benefits);
  }

  SelectScholarshipResponse copyWithWrapped(
      {Wrapped<Context>? context,
      Wrapped<ScholarshipProvider>? scholarshipProvider,
      Wrapped<ScholarshipAdditionalForm?>? additionalForm,
      Wrapped<List<Object>?>? academicQualificationsCriteria,
      Wrapped<List<Object>?>? finStatusCriteria,
      Wrapped<List<Object>?>? benefits}) {
    return SelectScholarshipResponse(
        context: (context != null ? context.value : this.context),
        scholarshipProvider: (scholarshipProvider != null
            ? scholarshipProvider.value
            : this.scholarshipProvider),
        additionalForm: (additionalForm != null
            ? additionalForm.value
            : this.additionalForm),
        academicQualificationsCriteria: (academicQualificationsCriteria != null
            ? academicQualificationsCriteria.value
            : this.academicQualificationsCriteria),
        finStatusCriteria: (finStatusCriteria != null
            ? finStatusCriteria.value
            : this.finStatusCriteria),
        benefits: (benefits != null ? benefits.value : this.benefits));
  }
}

@JsonSerializable(explicitToJson: true)
class ScholarshipAdditionalForm {
  ScholarshipAdditionalForm({
    required this.formUrl,
    this.formMimeType,
    this.submissionId,
    this.data,
  });

  factory ScholarshipAdditionalForm.fromJson(Map<String, dynamic> json) =>
      _$ScholarshipAdditionalFormFromJson(json);

  @JsonKey(name: 'formUrl', includeIfNull: false)
  final String formUrl;
  @JsonKey(name: 'formMimeType', includeIfNull: false)
  final String? formMimeType;
  @JsonKey(name: 'submissionId', includeIfNull: false)
  final String? submissionId;
  @JsonKey(name: 'data', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? data;
  static const fromJsonFactory = _$ScholarshipAdditionalFormFromJson;
  static const toJsonFactory = _$ScholarshipAdditionalFormToJson;
  Map<String, dynamic> toJson() => _$ScholarshipAdditionalFormToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScholarshipAdditionalForm &&
            (identical(other.formUrl, formUrl) ||
                const DeepCollectionEquality()
                    .equals(other.formUrl, formUrl)) &&
            (identical(other.formMimeType, formMimeType) ||
                const DeepCollectionEquality()
                    .equals(other.formMimeType, formMimeType)) &&
            (identical(other.submissionId, submissionId) ||
                const DeepCollectionEquality()
                    .equals(other.submissionId, submissionId)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(formUrl) ^
      const DeepCollectionEquality().hash(formMimeType) ^
      const DeepCollectionEquality().hash(submissionId) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $ScholarshipAdditionalFormExtension on ScholarshipAdditionalForm {
  ScholarshipAdditionalForm copyWith(
      {String? formUrl,
      String? formMimeType,
      String? submissionId,
      List<Object>? data}) {
    return ScholarshipAdditionalForm(
        formUrl: formUrl ?? this.formUrl,
        formMimeType: formMimeType ?? this.formMimeType,
        submissionId: submissionId ?? this.submissionId,
        data: data ?? this.data);
  }

  ScholarshipAdditionalForm copyWithWrapped(
      {Wrapped<String>? formUrl,
      Wrapped<String?>? formMimeType,
      Wrapped<String?>? submissionId,
      Wrapped<List<Object>?>? data}) {
    return ScholarshipAdditionalForm(
        formUrl: (formUrl != null ? formUrl.value : this.formUrl),
        formMimeType:
            (formMimeType != null ? formMimeType.value : this.formMimeType),
        submissionId:
            (submissionId != null ? submissionId.value : this.submissionId),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class ScholarshipAdditionalFormData {
  ScholarshipAdditionalFormData({
    this.formInputKey,
    this.formInputValue,
  });

  factory ScholarshipAdditionalFormData.fromJson(Map<String, dynamic> json) =>
      _$ScholarshipAdditionalFormDataFromJson(json);

  @JsonKey(name: 'formInputKey', includeIfNull: false)
  final String? formInputKey;
  @JsonKey(name: 'formInputValue', includeIfNull: false)
  final String? formInputValue;
  static const fromJsonFactory = _$ScholarshipAdditionalFormDataFromJson;
  static const toJsonFactory = _$ScholarshipAdditionalFormDataToJson;
  Map<String, dynamic> toJson() => _$ScholarshipAdditionalFormDataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScholarshipAdditionalFormData &&
            (identical(other.formInputKey, formInputKey) ||
                const DeepCollectionEquality()
                    .equals(other.formInputKey, formInputKey)) &&
            (identical(other.formInputValue, formInputValue) ||
                const DeepCollectionEquality()
                    .equals(other.formInputValue, formInputValue)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(formInputKey) ^
      const DeepCollectionEquality().hash(formInputValue) ^
      runtimeType.hashCode;
}

extension $ScholarshipAdditionalFormDataExtension
    on ScholarshipAdditionalFormData {
  ScholarshipAdditionalFormData copyWith(
      {String? formInputKey, String? formInputValue}) {
    return ScholarshipAdditionalFormData(
        formInputKey: formInputKey ?? this.formInputKey,
        formInputValue: formInputValue ?? this.formInputValue);
  }

  ScholarshipAdditionalFormData copyWithWrapped(
      {Wrapped<String?>? formInputKey, Wrapped<String?>? formInputValue}) {
    return ScholarshipAdditionalFormData(
        formInputKey:
            (formInputKey != null ? formInputKey.value : this.formInputKey),
        formInputValue: (formInputValue != null
            ? formInputValue.value
            : this.formInputValue));
  }
}

@JsonSerializable(explicitToJson: true)
class AcademicQualification {
  AcademicQualification({
    required this.code,
    required this.name,
    required this.value,
  });

  factory AcademicQualification.fromJson(Map<String, dynamic> json) =>
      _$AcademicQualificationFromJson(json);

  @JsonKey(name: 'code', includeIfNull: false)
  final String code;
  @JsonKey(name: 'name', includeIfNull: false)
  final String name;
  @JsonKey(name: 'value', includeIfNull: false)
  final String value;
  static const fromJsonFactory = _$AcademicQualificationFromJson;
  static const toJsonFactory = _$AcademicQualificationToJson;
  Map<String, dynamic> toJson() => _$AcademicQualificationToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AcademicQualification &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(value) ^
      runtimeType.hashCode;
}

extension $AcademicQualificationExtension on AcademicQualification {
  AcademicQualification copyWith({String? code, String? name, String? value}) {
    return AcademicQualification(
        code: code ?? this.code,
        name: name ?? this.name,
        value: value ?? this.value);
  }

  AcademicQualification copyWithWrapped(
      {Wrapped<String>? code, Wrapped<String>? name, Wrapped<String>? value}) {
    return AcademicQualification(
        code: (code != null ? code.value : this.code),
        name: (name != null ? name.value : this.name),
        value: (value != null ? value.value : this.value));
  }
}

@JsonSerializable(explicitToJson: true)
class FinancialStatus {
  FinancialStatus({
    required this.code,
    required this.name,
    required this.value,
  });

  factory FinancialStatus.fromJson(Map<String, dynamic> json) =>
      _$FinancialStatusFromJson(json);

  @JsonKey(name: 'code', includeIfNull: false)
  final String code;
  @JsonKey(name: 'name', includeIfNull: false)
  final String name;
  @JsonKey(name: 'value', includeIfNull: false)
  final String value;
  static const fromJsonFactory = _$FinancialStatusFromJson;
  static const toJsonFactory = _$FinancialStatusToJson;
  Map<String, dynamic> toJson() => _$FinancialStatusToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FinancialStatus &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(value) ^
      runtimeType.hashCode;
}

extension $FinancialStatusExtension on FinancialStatus {
  FinancialStatus copyWith({String? code, String? name, String? value}) {
    return FinancialStatus(
        code: code ?? this.code,
        name: name ?? this.name,
        value: value ?? this.value);
  }

  FinancialStatus copyWithWrapped(
      {Wrapped<String>? code, Wrapped<String>? name, Wrapped<String>? value}) {
    return FinancialStatus(
        code: (code != null ? code.value : this.code),
        name: (name != null ? name.value : this.name),
        value: (value != null ? value.value : this.value));
  }
}

@JsonSerializable(explicitToJson: true)
class Benefit {
  Benefit({
    required this.code,
    required this.name,
    required this.value,
  });

  factory Benefit.fromJson(Map<String, dynamic> json) =>
      _$BenefitFromJson(json);

  @JsonKey(name: 'code', includeIfNull: false)
  final String code;
  @JsonKey(name: 'name', includeIfNull: false)
  final String name;
  @JsonKey(name: 'value', includeIfNull: false)
  final String value;
  static const fromJsonFactory = _$BenefitFromJson;
  static const toJsonFactory = _$BenefitToJson;
  Map<String, dynamic> toJson() => _$BenefitToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Benefit &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(value) ^
      runtimeType.hashCode;
}

extension $BenefitExtension on Benefit {
  Benefit copyWith({String? code, String? name, String? value}) {
    return Benefit(
        code: code ?? this.code,
        name: name ?? this.name,
        value: value ?? this.value);
  }

  Benefit copyWithWrapped(
      {Wrapped<String>? code, Wrapped<String>? name, Wrapped<String>? value}) {
    return Benefit(
        code: (code != null ? code.value : this.code),
        name: (name != null ? name.value : this.name),
        value: (value != null ? value.value : this.value));
  }
}

@JsonSerializable(explicitToJson: true)
class InitScholarshipRequest {
  InitScholarshipRequest({
    required this.context,
    this.scholarshipProvider,
  });

  factory InitScholarshipRequest.fromJson(Map<String, dynamic> json) =>
      _$InitScholarshipRequestFromJson(json);

  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  @JsonKey(name: 'scholarshipProvider', includeIfNull: false)
  final InitScholarshipProvider? scholarshipProvider;
  static const fromJsonFactory = _$InitScholarshipRequestFromJson;
  static const toJsonFactory = _$InitScholarshipRequestToJson;
  Map<String, dynamic> toJson() => _$InitScholarshipRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitScholarshipRequest &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.scholarshipProvider, scholarshipProvider) ||
                const DeepCollectionEquality()
                    .equals(other.scholarshipProvider, scholarshipProvider)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(scholarshipProvider) ^
      runtimeType.hashCode;
}

extension $InitScholarshipRequestExtension on InitScholarshipRequest {
  InitScholarshipRequest copyWith(
      {Context? context, InitScholarshipProvider? scholarshipProvider}) {
    return InitScholarshipRequest(
        context: context ?? this.context,
        scholarshipProvider: scholarshipProvider ?? this.scholarshipProvider);
  }

  InitScholarshipRequest copyWithWrapped(
      {Wrapped<Context>? context,
      Wrapped<InitScholarshipProvider?>? scholarshipProvider}) {
    return InitScholarshipRequest(
        context: (context != null ? context.value : this.context),
        scholarshipProvider: (scholarshipProvider != null
            ? scholarshipProvider.value
            : this.scholarshipProvider));
  }
}

@JsonSerializable(explicitToJson: true)
class InitScholarshipProvider {
  InitScholarshipProvider({
    required this.id,
    required this.name,
    this.description,
    required this.scholarships,
  });

  factory InitScholarshipProvider.fromJson(Map<String, dynamic> json) =>
      _$InitScholarshipProviderFromJson(json);

  @JsonKey(name: 'id', includeIfNull: false)
  final String id;
  @JsonKey(name: 'name', includeIfNull: false)
  final String name;
  @JsonKey(name: 'description', includeIfNull: false)
  final String? description;
  @JsonKey(name: 'scholarships', includeIfNull: false, defaultValue: <Object>[])
  final List<Object> scholarships;
  static const fromJsonFactory = _$InitScholarshipProviderFromJson;
  static const toJsonFactory = _$InitScholarshipProviderToJson;
  Map<String, dynamic> toJson() => _$InitScholarshipProviderToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitScholarshipProvider &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.scholarships, scholarships) ||
                const DeepCollectionEquality()
                    .equals(other.scholarships, scholarships)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(scholarships) ^
      runtimeType.hashCode;
}

extension $InitScholarshipProviderExtension on InitScholarshipProvider {
  InitScholarshipProvider copyWith(
      {String? id,
      String? name,
      String? description,
      List<Object>? scholarships}) {
    return InitScholarshipProvider(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        scholarships: scholarships ?? this.scholarships);
  }

  InitScholarshipProvider copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? name,
      Wrapped<String?>? description,
      Wrapped<List<Object>>? scholarships}) {
    return InitScholarshipProvider(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        scholarships:
            (scholarships != null ? scholarships.value : this.scholarships));
  }
}

@JsonSerializable(explicitToJson: true)
class InitScholarship {
  InitScholarship({
    required this.id,
    required this.name,
    required this.description,
    this.categoryId,
    this.amount,
    this.scholarshipDetails,
    this.additionalForm,
    this.academicQualificationsCriteria,
    this.finStatusCriteria,
    this.benefits,
  });

  factory InitScholarship.fromJson(Map<String, dynamic> json) =>
      _$InitScholarshipFromJson(json);

  @JsonKey(name: 'id', includeIfNull: false)
  final String id;
  @JsonKey(name: 'name', includeIfNull: false)
  final String name;
  @JsonKey(name: 'description', includeIfNull: false)
  final String description;
  @JsonKey(name: 'categoryId', includeIfNull: false)
  final String? categoryId;
  @JsonKey(name: 'amount', includeIfNull: false)
  final ScholarshipAmount? amount;
  @JsonKey(name: 'scholarshipDetails', includeIfNull: false)
  final InitScholarshipDetails? scholarshipDetails;
  @JsonKey(name: 'additionalForm', includeIfNull: false)
  final ScholarshipAdditionalForm? additionalForm;
  @JsonKey(
      name: 'academicQualificationsCriteria',
      includeIfNull: false,
      defaultValue: <Object>[])
  final List<Object>? academicQualificationsCriteria;
  @JsonKey(
      name: 'finStatusCriteria', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? finStatusCriteria;
  @JsonKey(name: 'benefits', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? benefits;
  static const fromJsonFactory = _$InitScholarshipFromJson;
  static const toJsonFactory = _$InitScholarshipToJson;
  Map<String, dynamic> toJson() => _$InitScholarshipToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitScholarship &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.scholarshipDetails, scholarshipDetails) ||
                const DeepCollectionEquality()
                    .equals(other.scholarshipDetails, scholarshipDetails)) &&
            (identical(other.additionalForm, additionalForm) ||
                const DeepCollectionEquality()
                    .equals(other.additionalForm, additionalForm)) &&
            (identical(other.academicQualificationsCriteria,
                    academicQualificationsCriteria) ||
                const DeepCollectionEquality().equals(
                    other.academicQualificationsCriteria,
                    academicQualificationsCriteria)) &&
            (identical(other.finStatusCriteria, finStatusCriteria) ||
                const DeepCollectionEquality()
                    .equals(other.finStatusCriteria, finStatusCriteria)) &&
            (identical(other.benefits, benefits) ||
                const DeepCollectionEquality()
                    .equals(other.benefits, benefits)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(scholarshipDetails) ^
      const DeepCollectionEquality().hash(additionalForm) ^
      const DeepCollectionEquality().hash(academicQualificationsCriteria) ^
      const DeepCollectionEquality().hash(finStatusCriteria) ^
      const DeepCollectionEquality().hash(benefits) ^
      runtimeType.hashCode;
}

extension $InitScholarshipExtension on InitScholarship {
  InitScholarship copyWith(
      {String? id,
      String? name,
      String? description,
      String? categoryId,
      ScholarshipAmount? amount,
      InitScholarshipDetails? scholarshipDetails,
      ScholarshipAdditionalForm? additionalForm,
      List<Object>? academicQualificationsCriteria,
      List<Object>? finStatusCriteria,
      List<Object>? benefits}) {
    return InitScholarship(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        categoryId: categoryId ?? this.categoryId,
        amount: amount ?? this.amount,
        scholarshipDetails: scholarshipDetails ?? this.scholarshipDetails,
        additionalForm: additionalForm ?? this.additionalForm,
        academicQualificationsCriteria: academicQualificationsCriteria ??
            this.academicQualificationsCriteria,
        finStatusCriteria: finStatusCriteria ?? this.finStatusCriteria,
        benefits: benefits ?? this.benefits);
  }

  InitScholarship copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? name,
      Wrapped<String>? description,
      Wrapped<String?>? categoryId,
      Wrapped<ScholarshipAmount?>? amount,
      Wrapped<InitScholarshipDetails?>? scholarshipDetails,
      Wrapped<ScholarshipAdditionalForm?>? additionalForm,
      Wrapped<List<Object>?>? academicQualificationsCriteria,
      Wrapped<List<Object>?>? finStatusCriteria,
      Wrapped<List<Object>?>? benefits}) {
    return InitScholarship(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        categoryId: (categoryId != null ? categoryId.value : this.categoryId),
        amount: (amount != null ? amount.value : this.amount),
        scholarshipDetails: (scholarshipDetails != null
            ? scholarshipDetails.value
            : this.scholarshipDetails),
        additionalForm: (additionalForm != null
            ? additionalForm.value
            : this.additionalForm),
        academicQualificationsCriteria: (academicQualificationsCriteria != null
            ? academicQualificationsCriteria.value
            : this.academicQualificationsCriteria),
        finStatusCriteria: (finStatusCriteria != null
            ? finStatusCriteria.value
            : this.finStatusCriteria),
        benefits: (benefits != null ? benefits.value : this.benefits));
  }
}

@JsonSerializable(explicitToJson: true)
class InitScholarshipDetails {
  InitScholarshipDetails({
    required this.id,
    required this.type,
    this.applicationStartDate,
    this.applicationEndDate,
    this.supportContact,
    required this.scholarshipRequestor,
  });

  factory InitScholarshipDetails.fromJson(Map<String, dynamic> json) =>
      _$InitScholarshipDetailsFromJson(json);

  @JsonKey(name: 'id', includeIfNull: false)
  final String id;
  @JsonKey(name: 'type', includeIfNull: false)
  final String type;
  @JsonKey(name: 'applicationStartDate', includeIfNull: false)
  final String? applicationStartDate;
  @JsonKey(name: 'applicationEndDate', includeIfNull: false)
  final String? applicationEndDate;
  @JsonKey(name: 'supportContact', includeIfNull: false)
  final SupportContact? supportContact;
  @JsonKey(name: 'scholarshipRequestor', includeIfNull: false)
  final InitScholarshipRequestor scholarshipRequestor;
  static const fromJsonFactory = _$InitScholarshipDetailsFromJson;
  static const toJsonFactory = _$InitScholarshipDetailsToJson;
  Map<String, dynamic> toJson() => _$InitScholarshipDetailsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitScholarshipDetails &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.applicationStartDate, applicationStartDate) ||
                const DeepCollectionEquality().equals(
                    other.applicationStartDate, applicationStartDate)) &&
            (identical(other.applicationEndDate, applicationEndDate) ||
                const DeepCollectionEquality()
                    .equals(other.applicationEndDate, applicationEndDate)) &&
            (identical(other.supportContact, supportContact) ||
                const DeepCollectionEquality()
                    .equals(other.supportContact, supportContact)) &&
            (identical(other.scholarshipRequestor, scholarshipRequestor) ||
                const DeepCollectionEquality()
                    .equals(other.scholarshipRequestor, scholarshipRequestor)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(applicationStartDate) ^
      const DeepCollectionEquality().hash(applicationEndDate) ^
      const DeepCollectionEquality().hash(supportContact) ^
      const DeepCollectionEquality().hash(scholarshipRequestor) ^
      runtimeType.hashCode;
}

extension $InitScholarshipDetailsExtension on InitScholarshipDetails {
  InitScholarshipDetails copyWith(
      {String? id,
      String? type,
      String? applicationStartDate,
      String? applicationEndDate,
      SupportContact? supportContact,
      InitScholarshipRequestor? scholarshipRequestor}) {
    return InitScholarshipDetails(
        id: id ?? this.id,
        type: type ?? this.type,
        applicationStartDate: applicationStartDate ?? this.applicationStartDate,
        applicationEndDate: applicationEndDate ?? this.applicationEndDate,
        supportContact: supportContact ?? this.supportContact,
        scholarshipRequestor:
            scholarshipRequestor ?? this.scholarshipRequestor);
  }

  InitScholarshipDetails copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? type,
      Wrapped<String?>? applicationStartDate,
      Wrapped<String?>? applicationEndDate,
      Wrapped<SupportContact?>? supportContact,
      Wrapped<InitScholarshipRequestor>? scholarshipRequestor}) {
    return InitScholarshipDetails(
        id: (id != null ? id.value : this.id),
        type: (type != null ? type.value : this.type),
        applicationStartDate: (applicationStartDate != null
            ? applicationStartDate.value
            : this.applicationStartDate),
        applicationEndDate: (applicationEndDate != null
            ? applicationEndDate.value
            : this.applicationEndDate),
        supportContact: (supportContact != null
            ? supportContact.value
            : this.supportContact),
        scholarshipRequestor: (scholarshipRequestor != null
            ? scholarshipRequestor.value
            : this.scholarshipRequestor));
  }
}

@JsonSerializable(explicitToJson: true)
class InitScholarshipRequestor {
  InitScholarshipRequestor({
    required this.name,
    this.phone,
    this.address,
    this.needOfScholarship,
    this.docUrl,
  });

  factory InitScholarshipRequestor.fromJson(Map<String, dynamic> json) =>
      _$InitScholarshipRequestorFromJson(json);

  @JsonKey(name: 'name', includeIfNull: false)
  final String name;
  @JsonKey(name: 'phone', includeIfNull: false)
  final String? phone;
  @JsonKey(name: 'address', includeIfNull: false)
  final String? address;
  @JsonKey(name: 'needOfScholarship', includeIfNull: false)
  final String? needOfScholarship;
  @JsonKey(name: 'docUrl', includeIfNull: false)
  final String? docUrl;
  static const fromJsonFactory = _$InitScholarshipRequestorFromJson;
  static const toJsonFactory = _$InitScholarshipRequestorToJson;
  Map<String, dynamic> toJson() => _$InitScholarshipRequestorToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitScholarshipRequestor &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.needOfScholarship, needOfScholarship) ||
                const DeepCollectionEquality()
                    .equals(other.needOfScholarship, needOfScholarship)) &&
            (identical(other.docUrl, docUrl) ||
                const DeepCollectionEquality().equals(other.docUrl, docUrl)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(needOfScholarship) ^
      const DeepCollectionEquality().hash(docUrl) ^
      runtimeType.hashCode;
}

extension $InitScholarshipRequestorExtension on InitScholarshipRequestor {
  InitScholarshipRequestor copyWith(
      {String? name,
      String? phone,
      String? address,
      String? needOfScholarship,
      String? docUrl}) {
    return InitScholarshipRequestor(
        name: name ?? this.name,
        phone: phone ?? this.phone,
        address: address ?? this.address,
        needOfScholarship: needOfScholarship ?? this.needOfScholarship,
        docUrl: docUrl ?? this.docUrl);
  }

  InitScholarshipRequestor copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<String?>? phone,
      Wrapped<String?>? address,
      Wrapped<String?>? needOfScholarship,
      Wrapped<String?>? docUrl}) {
    return InitScholarshipRequestor(
        name: (name != null ? name.value : this.name),
        phone: (phone != null ? phone.value : this.phone),
        address: (address != null ? address.value : this.address),
        needOfScholarship: (needOfScholarship != null
            ? needOfScholarship.value
            : this.needOfScholarship),
        docUrl: (docUrl != null ? docUrl.value : this.docUrl));
  }
}

@JsonSerializable(explicitToJson: true)
class ScholarshipRequestorContactDELETE {
  ScholarshipRequestorContactDELETE({
    required this.address,
    required this.addressFormat,
  });

  factory ScholarshipRequestorContactDELETE.fromJson(
          Map<String, dynamic> json) =>
      _$ScholarshipRequestorContactDELETEFromJson(json);

  @JsonKey(name: 'address', includeIfNull: false)
  final String address;
  @JsonKey(name: 'addressFormat', includeIfNull: false)
  final String addressFormat;
  static const fromJsonFactory = _$ScholarshipRequestorContactDELETEFromJson;
  static const toJsonFactory = _$ScholarshipRequestorContactDELETEToJson;
  Map<String, dynamic> toJson() =>
      _$ScholarshipRequestorContactDELETEToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScholarshipRequestorContactDELETE &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.addressFormat, addressFormat) ||
                const DeepCollectionEquality()
                    .equals(other.addressFormat, addressFormat)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(addressFormat) ^
      runtimeType.hashCode;
}

extension $ScholarshipRequestorContactDELETEExtension
    on ScholarshipRequestorContactDELETE {
  ScholarshipRequestorContactDELETE copyWith(
      {String? address, String? addressFormat}) {
    return ScholarshipRequestorContactDELETE(
        address: address ?? this.address,
        addressFormat: addressFormat ?? this.addressFormat);
  }

  ScholarshipRequestorContactDELETE copyWithWrapped(
      {Wrapped<String>? address, Wrapped<String>? addressFormat}) {
    return ScholarshipRequestorContactDELETE(
        address: (address != null ? address.value : this.address),
        addressFormat:
            (addressFormat != null ? addressFormat.value : this.addressFormat));
  }
}

@JsonSerializable(explicitToJson: true)
class InitScholarshipResponse {
  InitScholarshipResponse({
    required this.context,
    this.scholarshipProvider,
  });

  factory InitScholarshipResponse.fromJson(Map<String, dynamic> json) =>
      _$InitScholarshipResponseFromJson(json);

  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  @JsonKey(name: 'scholarshipProvider', includeIfNull: false)
  final InitScholarshipResponseProvider? scholarshipProvider;
  static const fromJsonFactory = _$InitScholarshipResponseFromJson;
  static const toJsonFactory = _$InitScholarshipResponseToJson;
  Map<String, dynamic> toJson() => _$InitScholarshipResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitScholarshipResponse &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.scholarshipProvider, scholarshipProvider) ||
                const DeepCollectionEquality()
                    .equals(other.scholarshipProvider, scholarshipProvider)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(scholarshipProvider) ^
      runtimeType.hashCode;
}

extension $InitScholarshipResponseExtension on InitScholarshipResponse {
  InitScholarshipResponse copyWith(
      {Context? context,
      InitScholarshipResponseProvider? scholarshipProvider}) {
    return InitScholarshipResponse(
        context: context ?? this.context,
        scholarshipProvider: scholarshipProvider ?? this.scholarshipProvider);
  }

  InitScholarshipResponse copyWithWrapped(
      {Wrapped<Context>? context,
      Wrapped<InitScholarshipResponseProvider?>? scholarshipProvider}) {
    return InitScholarshipResponse(
        context: (context != null ? context.value : this.context),
        scholarshipProvider: (scholarshipProvider != null
            ? scholarshipProvider.value
            : this.scholarshipProvider));
  }
}

@JsonSerializable(explicitToJson: true)
class InitScholarshipResponseProvider {
  InitScholarshipResponseProvider({
    required this.id,
    required this.name,
    this.descriptor,
    required this.scholarships,
  });

  factory InitScholarshipResponseProvider.fromJson(Map<String, dynamic> json) =>
      _$InitScholarshipResponseProviderFromJson(json);

  @JsonKey(name: 'id', includeIfNull: false)
  final String id;
  @JsonKey(name: 'name', includeIfNull: false)
  final String name;
  @JsonKey(name: 'descriptor', includeIfNull: false)
  final String? descriptor;
  @JsonKey(name: 'scholarships', includeIfNull: false, defaultValue: <Object>[])
  final List<Object> scholarships;
  static const fromJsonFactory = _$InitScholarshipResponseProviderFromJson;
  static const toJsonFactory = _$InitScholarshipResponseProviderToJson;
  Map<String, dynamic> toJson() =>
      _$InitScholarshipResponseProviderToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitScholarshipResponseProvider &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.descriptor, descriptor) ||
                const DeepCollectionEquality()
                    .equals(other.descriptor, descriptor)) &&
            (identical(other.scholarships, scholarships) ||
                const DeepCollectionEquality()
                    .equals(other.scholarships, scholarships)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(descriptor) ^
      const DeepCollectionEquality().hash(scholarships) ^
      runtimeType.hashCode;
}

extension $InitScholarshipResponseProviderExtension
    on InitScholarshipResponseProvider {
  InitScholarshipResponseProvider copyWith(
      {String? id,
      String? name,
      String? descriptor,
      List<Object>? scholarships}) {
    return InitScholarshipResponseProvider(
        id: id ?? this.id,
        name: name ?? this.name,
        descriptor: descriptor ?? this.descriptor,
        scholarships: scholarships ?? this.scholarships);
  }

  InitScholarshipResponseProvider copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? name,
      Wrapped<String?>? descriptor,
      Wrapped<List<Object>>? scholarships}) {
    return InitScholarshipResponseProvider(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        descriptor: (descriptor != null ? descriptor.value : this.descriptor),
        scholarships:
            (scholarships != null ? scholarships.value : this.scholarships));
  }
}

@JsonSerializable(explicitToJson: true)
class InitResponseScholarship {
  InitResponseScholarship({
    required this.id,
    required this.name,
    required this.description,
    this.categoryId,
    this.amount,
    this.scholarshipDetails,
    this.additionalForm,
    this.academicQualificationsCriteria,
    this.finStatusCriteria,
    this.benefits,
  });

  factory InitResponseScholarship.fromJson(Map<String, dynamic> json) =>
      _$InitResponseScholarshipFromJson(json);

  @JsonKey(name: 'id', includeIfNull: false)
  final String id;
  @JsonKey(name: 'name', includeIfNull: false)
  final String name;
  @JsonKey(name: 'description', includeIfNull: false)
  final String description;
  @JsonKey(name: 'categoryId', includeIfNull: false)
  final String? categoryId;
  @JsonKey(name: 'amount', includeIfNull: false)
  final ScholarshipAmount? amount;
  @JsonKey(name: 'scholarshipDetails', includeIfNull: false)
  final InitResponseScholarshipDetails? scholarshipDetails;
  @JsonKey(name: 'additionalForm', includeIfNull: false)
  final ScholarshipAdditionalForm? additionalForm;
  @JsonKey(
      name: 'academicQualificationsCriteria',
      includeIfNull: false,
      defaultValue: <Object>[])
  final List<Object>? academicQualificationsCriteria;
  @JsonKey(
      name: 'finStatusCriteria', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? finStatusCriteria;
  @JsonKey(name: 'benefits', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? benefits;
  static const fromJsonFactory = _$InitResponseScholarshipFromJson;
  static const toJsonFactory = _$InitResponseScholarshipToJson;
  Map<String, dynamic> toJson() => _$InitResponseScholarshipToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitResponseScholarship &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.scholarshipDetails, scholarshipDetails) ||
                const DeepCollectionEquality()
                    .equals(other.scholarshipDetails, scholarshipDetails)) &&
            (identical(other.additionalForm, additionalForm) ||
                const DeepCollectionEquality()
                    .equals(other.additionalForm, additionalForm)) &&
            (identical(other.academicQualificationsCriteria,
                    academicQualificationsCriteria) ||
                const DeepCollectionEquality().equals(
                    other.academicQualificationsCriteria,
                    academicQualificationsCriteria)) &&
            (identical(other.finStatusCriteria, finStatusCriteria) ||
                const DeepCollectionEquality()
                    .equals(other.finStatusCriteria, finStatusCriteria)) &&
            (identical(other.benefits, benefits) ||
                const DeepCollectionEquality()
                    .equals(other.benefits, benefits)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(scholarshipDetails) ^
      const DeepCollectionEquality().hash(additionalForm) ^
      const DeepCollectionEquality().hash(academicQualificationsCriteria) ^
      const DeepCollectionEquality().hash(finStatusCriteria) ^
      const DeepCollectionEquality().hash(benefits) ^
      runtimeType.hashCode;
}

extension $InitResponseScholarshipExtension on InitResponseScholarship {
  InitResponseScholarship copyWith(
      {String? id,
      String? name,
      String? description,
      String? categoryId,
      ScholarshipAmount? amount,
      InitResponseScholarshipDetails? scholarshipDetails,
      ScholarshipAdditionalForm? additionalForm,
      List<Object>? academicQualificationsCriteria,
      List<Object>? finStatusCriteria,
      List<Object>? benefits}) {
    return InitResponseScholarship(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        categoryId: categoryId ?? this.categoryId,
        amount: amount ?? this.amount,
        scholarshipDetails: scholarshipDetails ?? this.scholarshipDetails,
        additionalForm: additionalForm ?? this.additionalForm,
        academicQualificationsCriteria: academicQualificationsCriteria ??
            this.academicQualificationsCriteria,
        finStatusCriteria: finStatusCriteria ?? this.finStatusCriteria,
        benefits: benefits ?? this.benefits);
  }

  InitResponseScholarship copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? name,
      Wrapped<String>? description,
      Wrapped<String?>? categoryId,
      Wrapped<ScholarshipAmount?>? amount,
      Wrapped<InitResponseScholarshipDetails?>? scholarshipDetails,
      Wrapped<ScholarshipAdditionalForm?>? additionalForm,
      Wrapped<List<Object>?>? academicQualificationsCriteria,
      Wrapped<List<Object>?>? finStatusCriteria,
      Wrapped<List<Object>?>? benefits}) {
    return InitResponseScholarship(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        categoryId: (categoryId != null ? categoryId.value : this.categoryId),
        amount: (amount != null ? amount.value : this.amount),
        scholarshipDetails: (scholarshipDetails != null
            ? scholarshipDetails.value
            : this.scholarshipDetails),
        additionalForm: (additionalForm != null
            ? additionalForm.value
            : this.additionalForm),
        academicQualificationsCriteria: (academicQualificationsCriteria != null
            ? academicQualificationsCriteria.value
            : this.academicQualificationsCriteria),
        finStatusCriteria: (finStatusCriteria != null
            ? finStatusCriteria.value
            : this.finStatusCriteria),
        benefits: (benefits != null ? benefits.value : this.benefits));
  }
}

@JsonSerializable(explicitToJson: true)
class InitResponseScholarshipDetails {
  InitResponseScholarshipDetails({
    required this.id,
    required this.type,
    this.applicationStartDate,
    this.applicationEndDate,
    this.supportContact,
    required this.scholarshipRequestor,
  });

  factory InitResponseScholarshipDetails.fromJson(Map<String, dynamic> json) =>
      _$InitResponseScholarshipDetailsFromJson(json);

  @JsonKey(name: 'id', includeIfNull: false)
  final String id;
  @JsonKey(name: 'type', includeIfNull: false)
  final String type;
  @JsonKey(name: 'applicationStartDate', includeIfNull: false)
  final String? applicationStartDate;
  @JsonKey(name: 'applicationEndDate', includeIfNull: false)
  final String? applicationEndDate;
  @JsonKey(name: 'supportContact', includeIfNull: false)
  final SupportContact? supportContact;
  @JsonKey(name: 'scholarshipRequestor', includeIfNull: false)
  final InitScholarshipRequestor scholarshipRequestor;
  static const fromJsonFactory = _$InitResponseScholarshipDetailsFromJson;
  static const toJsonFactory = _$InitResponseScholarshipDetailsToJson;
  Map<String, dynamic> toJson() => _$InitResponseScholarshipDetailsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitResponseScholarshipDetails &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.applicationStartDate, applicationStartDate) ||
                const DeepCollectionEquality().equals(
                    other.applicationStartDate, applicationStartDate)) &&
            (identical(other.applicationEndDate, applicationEndDate) ||
                const DeepCollectionEquality()
                    .equals(other.applicationEndDate, applicationEndDate)) &&
            (identical(other.supportContact, supportContact) ||
                const DeepCollectionEquality()
                    .equals(other.supportContact, supportContact)) &&
            (identical(other.scholarshipRequestor, scholarshipRequestor) ||
                const DeepCollectionEquality()
                    .equals(other.scholarshipRequestor, scholarshipRequestor)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(applicationStartDate) ^
      const DeepCollectionEquality().hash(applicationEndDate) ^
      const DeepCollectionEquality().hash(supportContact) ^
      const DeepCollectionEquality().hash(scholarshipRequestor) ^
      runtimeType.hashCode;
}

extension $InitResponseScholarshipDetailsExtension
    on InitResponseScholarshipDetails {
  InitResponseScholarshipDetails copyWith(
      {String? id,
      String? type,
      String? applicationStartDate,
      String? applicationEndDate,
      SupportContact? supportContact,
      InitScholarshipRequestor? scholarshipRequestor}) {
    return InitResponseScholarshipDetails(
        id: id ?? this.id,
        type: type ?? this.type,
        applicationStartDate: applicationStartDate ?? this.applicationStartDate,
        applicationEndDate: applicationEndDate ?? this.applicationEndDate,
        supportContact: supportContact ?? this.supportContact,
        scholarshipRequestor:
            scholarshipRequestor ?? this.scholarshipRequestor);
  }

  InitResponseScholarshipDetails copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? type,
      Wrapped<String?>? applicationStartDate,
      Wrapped<String?>? applicationEndDate,
      Wrapped<SupportContact?>? supportContact,
      Wrapped<InitScholarshipRequestor>? scholarshipRequestor}) {
    return InitResponseScholarshipDetails(
        id: (id != null ? id.value : this.id),
        type: (type != null ? type.value : this.type),
        applicationStartDate: (applicationStartDate != null
            ? applicationStartDate.value
            : this.applicationStartDate),
        applicationEndDate: (applicationEndDate != null
            ? applicationEndDate.value
            : this.applicationEndDate),
        supportContact: (supportContact != null
            ? supportContact.value
            : this.supportContact),
        scholarshipRequestor: (scholarshipRequestor != null
            ? scholarshipRequestor.value
            : this.scholarshipRequestor));
  }
}

@JsonSerializable(explicitToJson: true)
class ConfirmScholarshipRequest {
  ConfirmScholarshipRequest({
    required this.context,
    this.scholarshipProvider,
  });

  factory ConfirmScholarshipRequest.fromJson(Map<String, dynamic> json) =>
      _$ConfirmScholarshipRequestFromJson(json);

  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  @JsonKey(name: 'scholarshipProvider', includeIfNull: false)
  final InitScholarshipResponseProvider? scholarshipProvider;
  static const fromJsonFactory = _$ConfirmScholarshipRequestFromJson;
  static const toJsonFactory = _$ConfirmScholarshipRequestToJson;
  Map<String, dynamic> toJson() => _$ConfirmScholarshipRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmScholarshipRequest &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.scholarshipProvider, scholarshipProvider) ||
                const DeepCollectionEquality()
                    .equals(other.scholarshipProvider, scholarshipProvider)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(scholarshipProvider) ^
      runtimeType.hashCode;
}

extension $ConfirmScholarshipRequestExtension on ConfirmScholarshipRequest {
  ConfirmScholarshipRequest copyWith(
      {Context? context,
      InitScholarshipResponseProvider? scholarshipProvider}) {
    return ConfirmScholarshipRequest(
        context: context ?? this.context,
        scholarshipProvider: scholarshipProvider ?? this.scholarshipProvider);
  }

  ConfirmScholarshipRequest copyWithWrapped(
      {Wrapped<Context>? context,
      Wrapped<InitScholarshipResponseProvider?>? scholarshipProvider}) {
    return ConfirmScholarshipRequest(
        context: (context != null ? context.value : this.context),
        scholarshipProvider: (scholarshipProvider != null
            ? scholarshipProvider.value
            : this.scholarshipProvider));
  }
}

@JsonSerializable(explicitToJson: true)
class ConfirmScholarshipResponse {
  ConfirmScholarshipResponse({
    required this.context,
    required this.scholarshipApplicationId,
    required this.scholarshipApplicationStatus,
    this.scholarshipProvider,
  });

  factory ConfirmScholarshipResponse.fromJson(Map<String, dynamic> json) =>
      _$ConfirmScholarshipResponseFromJson(json);

  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  @JsonKey(name: 'scholarshipApplicationId', includeIfNull: false)
  final String scholarshipApplicationId;
  @JsonKey(name: 'scholarshipApplicationStatus', includeIfNull: false)
  final String scholarshipApplicationStatus;
  @JsonKey(name: 'scholarshipProvider', includeIfNull: false)
  final ConfirmScholarshipResponseProvider? scholarshipProvider;
  static const fromJsonFactory = _$ConfirmScholarshipResponseFromJson;
  static const toJsonFactory = _$ConfirmScholarshipResponseToJson;
  Map<String, dynamic> toJson() => _$ConfirmScholarshipResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmScholarshipResponse &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(
                    other.scholarshipApplicationId, scholarshipApplicationId) ||
                const DeepCollectionEquality().equals(
                    other.scholarshipApplicationId,
                    scholarshipApplicationId)) &&
            (identical(other.scholarshipApplicationStatus,
                    scholarshipApplicationStatus) ||
                const DeepCollectionEquality().equals(
                    other.scholarshipApplicationStatus,
                    scholarshipApplicationStatus)) &&
            (identical(other.scholarshipProvider, scholarshipProvider) ||
                const DeepCollectionEquality()
                    .equals(other.scholarshipProvider, scholarshipProvider)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(scholarshipApplicationId) ^
      const DeepCollectionEquality().hash(scholarshipApplicationStatus) ^
      const DeepCollectionEquality().hash(scholarshipProvider) ^
      runtimeType.hashCode;
}

extension $ConfirmScholarshipResponseExtension on ConfirmScholarshipResponse {
  ConfirmScholarshipResponse copyWith(
      {Context? context,
      String? scholarshipApplicationId,
      String? scholarshipApplicationStatus,
      ConfirmScholarshipResponseProvider? scholarshipProvider}) {
    return ConfirmScholarshipResponse(
        context: context ?? this.context,
        scholarshipApplicationId:
            scholarshipApplicationId ?? this.scholarshipApplicationId,
        scholarshipApplicationStatus:
            scholarshipApplicationStatus ?? this.scholarshipApplicationStatus,
        scholarshipProvider: scholarshipProvider ?? this.scholarshipProvider);
  }

  ConfirmScholarshipResponse copyWithWrapped(
      {Wrapped<Context>? context,
      Wrapped<String>? scholarshipApplicationId,
      Wrapped<String>? scholarshipApplicationStatus,
      Wrapped<ConfirmScholarshipResponseProvider?>? scholarshipProvider}) {
    return ConfirmScholarshipResponse(
        context: (context != null ? context.value : this.context),
        scholarshipApplicationId: (scholarshipApplicationId != null
            ? scholarshipApplicationId.value
            : this.scholarshipApplicationId),
        scholarshipApplicationStatus: (scholarshipApplicationStatus != null
            ? scholarshipApplicationStatus.value
            : this.scholarshipApplicationStatus),
        scholarshipProvider: (scholarshipProvider != null
            ? scholarshipProvider.value
            : this.scholarshipProvider));
  }
}

@JsonSerializable(explicitToJson: true)
class ConfirmScholarshipResponseProvider {
  ConfirmScholarshipResponseProvider({
    required this.id,
    required this.name,
    this.description,
    required this.scholarships,
  });

  factory ConfirmScholarshipResponseProvider.fromJson(
          Map<String, dynamic> json) =>
      _$ConfirmScholarshipResponseProviderFromJson(json);

  @JsonKey(name: 'id', includeIfNull: false)
  final String id;
  @JsonKey(name: 'name', includeIfNull: false)
  final String name;
  @JsonKey(name: 'description', includeIfNull: false)
  final String? description;
  @JsonKey(name: 'scholarships', includeIfNull: false, defaultValue: <Object>[])
  final List<Object> scholarships;
  static const fromJsonFactory = _$ConfirmScholarshipResponseProviderFromJson;
  static const toJsonFactory = _$ConfirmScholarshipResponseProviderToJson;
  Map<String, dynamic> toJson() =>
      _$ConfirmScholarshipResponseProviderToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmScholarshipResponseProvider &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.scholarships, scholarships) ||
                const DeepCollectionEquality()
                    .equals(other.scholarships, scholarships)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(scholarships) ^
      runtimeType.hashCode;
}

extension $ConfirmScholarshipResponseProviderExtension
    on ConfirmScholarshipResponseProvider {
  ConfirmScholarshipResponseProvider copyWith(
      {String? id,
      String? name,
      String? description,
      List<Object>? scholarships}) {
    return ConfirmScholarshipResponseProvider(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        scholarships: scholarships ?? this.scholarships);
  }

  ConfirmScholarshipResponseProvider copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? name,
      Wrapped<String?>? description,
      Wrapped<List<Object>>? scholarships}) {
    return ConfirmScholarshipResponseProvider(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        scholarships:
            (scholarships != null ? scholarships.value : this.scholarships));
  }
}

@JsonSerializable(explicitToJson: true)
class ConfirmResponseScholarship {
  ConfirmResponseScholarship({
    required this.id,
    required this.name,
    required this.description,
    this.categoryId,
    this.amount,
    this.scholarshipDetails,
    this.additionalForm,
    this.academicQualificationsCriteria,
    this.finStatusCriteria,
    this.benefits,
  });

  factory ConfirmResponseScholarship.fromJson(Map<String, dynamic> json) =>
      _$ConfirmResponseScholarshipFromJson(json);

  @JsonKey(name: 'id', includeIfNull: false)
  final String id;
  @JsonKey(name: 'name', includeIfNull: false)
  final String name;
  @JsonKey(name: 'description', includeIfNull: false)
  final String description;
  @JsonKey(name: 'categoryId', includeIfNull: false)
  final String? categoryId;
  @JsonKey(name: 'amount', includeIfNull: false)
  final ScholarshipAmount? amount;
  @JsonKey(name: 'scholarshipDetails', includeIfNull: false)
  final ConfirmResponseScholarshipDetails? scholarshipDetails;
  @JsonKey(name: 'additionalForm', includeIfNull: false)
  final ScholarshipAdditionalForm? additionalForm;
  @JsonKey(
      name: 'academicQualificationsCriteria',
      includeIfNull: false,
      defaultValue: <Object>[])
  final List<Object>? academicQualificationsCriteria;
  @JsonKey(
      name: 'finStatusCriteria', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? finStatusCriteria;
  @JsonKey(name: 'benefits', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? benefits;
  static const fromJsonFactory = _$ConfirmResponseScholarshipFromJson;
  static const toJsonFactory = _$ConfirmResponseScholarshipToJson;
  Map<String, dynamic> toJson() => _$ConfirmResponseScholarshipToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmResponseScholarship &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.scholarshipDetails, scholarshipDetails) ||
                const DeepCollectionEquality()
                    .equals(other.scholarshipDetails, scholarshipDetails)) &&
            (identical(other.additionalForm, additionalForm) ||
                const DeepCollectionEquality()
                    .equals(other.additionalForm, additionalForm)) &&
            (identical(other.academicQualificationsCriteria,
                    academicQualificationsCriteria) ||
                const DeepCollectionEquality().equals(
                    other.academicQualificationsCriteria,
                    academicQualificationsCriteria)) &&
            (identical(other.finStatusCriteria, finStatusCriteria) ||
                const DeepCollectionEquality()
                    .equals(other.finStatusCriteria, finStatusCriteria)) &&
            (identical(other.benefits, benefits) ||
                const DeepCollectionEquality()
                    .equals(other.benefits, benefits)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(scholarshipDetails) ^
      const DeepCollectionEquality().hash(additionalForm) ^
      const DeepCollectionEquality().hash(academicQualificationsCriteria) ^
      const DeepCollectionEquality().hash(finStatusCriteria) ^
      const DeepCollectionEquality().hash(benefits) ^
      runtimeType.hashCode;
}

extension $ConfirmResponseScholarshipExtension on ConfirmResponseScholarship {
  ConfirmResponseScholarship copyWith(
      {String? id,
      String? name,
      String? description,
      String? categoryId,
      ScholarshipAmount? amount,
      ConfirmResponseScholarshipDetails? scholarshipDetails,
      ScholarshipAdditionalForm? additionalForm,
      List<Object>? academicQualificationsCriteria,
      List<Object>? finStatusCriteria,
      List<Object>? benefits}) {
    return ConfirmResponseScholarship(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        categoryId: categoryId ?? this.categoryId,
        amount: amount ?? this.amount,
        scholarshipDetails: scholarshipDetails ?? this.scholarshipDetails,
        additionalForm: additionalForm ?? this.additionalForm,
        academicQualificationsCriteria: academicQualificationsCriteria ??
            this.academicQualificationsCriteria,
        finStatusCriteria: finStatusCriteria ?? this.finStatusCriteria,
        benefits: benefits ?? this.benefits);
  }

  ConfirmResponseScholarship copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? name,
      Wrapped<String>? description,
      Wrapped<String?>? categoryId,
      Wrapped<ScholarshipAmount?>? amount,
      Wrapped<ConfirmResponseScholarshipDetails?>? scholarshipDetails,
      Wrapped<ScholarshipAdditionalForm?>? additionalForm,
      Wrapped<List<Object>?>? academicQualificationsCriteria,
      Wrapped<List<Object>?>? finStatusCriteria,
      Wrapped<List<Object>?>? benefits}) {
    return ConfirmResponseScholarship(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        categoryId: (categoryId != null ? categoryId.value : this.categoryId),
        amount: (amount != null ? amount.value : this.amount),
        scholarshipDetails: (scholarshipDetails != null
            ? scholarshipDetails.value
            : this.scholarshipDetails),
        additionalForm: (additionalForm != null
            ? additionalForm.value
            : this.additionalForm),
        academicQualificationsCriteria: (academicQualificationsCriteria != null
            ? academicQualificationsCriteria.value
            : this.academicQualificationsCriteria),
        finStatusCriteria: (finStatusCriteria != null
            ? finStatusCriteria.value
            : this.finStatusCriteria),
        benefits: (benefits != null ? benefits.value : this.benefits));
  }
}

@JsonSerializable(explicitToJson: true)
class ConfirmResponseScholarshipDetails {
  ConfirmResponseScholarshipDetails({
    required this.id,
    required this.type,
    this.applicationStartDate,
    this.applicationEndDate,
    this.supportContact,
    this.scholarshipRequestor,
  });

  factory ConfirmResponseScholarshipDetails.fromJson(
          Map<String, dynamic> json) =>
      _$ConfirmResponseScholarshipDetailsFromJson(json);

  @JsonKey(name: 'id', includeIfNull: false)
  final String id;
  @JsonKey(name: 'type', includeIfNull: false)
  final String type;
  @JsonKey(name: 'applicationStartDate', includeIfNull: false)
  final String? applicationStartDate;
  @JsonKey(name: 'applicationEndDate', includeIfNull: false)
  final String? applicationEndDate;
  @JsonKey(name: 'supportContact', includeIfNull: false)
  final SupportContact? supportContact;
  @JsonKey(name: 'scholarshipRequestor', includeIfNull: false)
  final InitScholarshipRequestor? scholarshipRequestor;
  static const fromJsonFactory = _$ConfirmResponseScholarshipDetailsFromJson;
  static const toJsonFactory = _$ConfirmResponseScholarshipDetailsToJson;
  Map<String, dynamic> toJson() =>
      _$ConfirmResponseScholarshipDetailsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmResponseScholarshipDetails &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.applicationStartDate, applicationStartDate) ||
                const DeepCollectionEquality().equals(
                    other.applicationStartDate, applicationStartDate)) &&
            (identical(other.applicationEndDate, applicationEndDate) ||
                const DeepCollectionEquality()
                    .equals(other.applicationEndDate, applicationEndDate)) &&
            (identical(other.supportContact, supportContact) ||
                const DeepCollectionEquality()
                    .equals(other.supportContact, supportContact)) &&
            (identical(other.scholarshipRequestor, scholarshipRequestor) ||
                const DeepCollectionEquality()
                    .equals(other.scholarshipRequestor, scholarshipRequestor)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(applicationStartDate) ^
      const DeepCollectionEquality().hash(applicationEndDate) ^
      const DeepCollectionEquality().hash(supportContact) ^
      const DeepCollectionEquality().hash(scholarshipRequestor) ^
      runtimeType.hashCode;
}

extension $ConfirmResponseScholarshipDetailsExtension
    on ConfirmResponseScholarshipDetails {
  ConfirmResponseScholarshipDetails copyWith(
      {String? id,
      String? type,
      String? applicationStartDate,
      String? applicationEndDate,
      SupportContact? supportContact,
      InitScholarshipRequestor? scholarshipRequestor}) {
    return ConfirmResponseScholarshipDetails(
        id: id ?? this.id,
        type: type ?? this.type,
        applicationStartDate: applicationStartDate ?? this.applicationStartDate,
        applicationEndDate: applicationEndDate ?? this.applicationEndDate,
        supportContact: supportContact ?? this.supportContact,
        scholarshipRequestor:
            scholarshipRequestor ?? this.scholarshipRequestor);
  }

  ConfirmResponseScholarshipDetails copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? type,
      Wrapped<String?>? applicationStartDate,
      Wrapped<String?>? applicationEndDate,
      Wrapped<SupportContact?>? supportContact,
      Wrapped<InitScholarshipRequestor?>? scholarshipRequestor}) {
    return ConfirmResponseScholarshipDetails(
        id: (id != null ? id.value : this.id),
        type: (type != null ? type.value : this.type),
        applicationStartDate: (applicationStartDate != null
            ? applicationStartDate.value
            : this.applicationStartDate),
        applicationEndDate: (applicationEndDate != null
            ? applicationEndDate.value
            : this.applicationEndDate),
        supportContact: (supportContact != null
            ? supportContact.value
            : this.supportContact),
        scholarshipRequestor: (scholarshipRequestor != null
            ? scholarshipRequestor.value
            : this.scholarshipRequestor));
  }
}

@JsonSerializable(explicitToJson: true)
class ScholarshipStatusRequest {
  ScholarshipStatusRequest({
    required this.scholarshipApplicationId,
    required this.context,
  });

  factory ScholarshipStatusRequest.fromJson(Map<String, dynamic> json) =>
      _$ScholarshipStatusRequestFromJson(json);

  @JsonKey(name: 'scholarshipApplicationId', includeIfNull: false)
  final String scholarshipApplicationId;
  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  static const fromJsonFactory = _$ScholarshipStatusRequestFromJson;
  static const toJsonFactory = _$ScholarshipStatusRequestToJson;
  Map<String, dynamic> toJson() => _$ScholarshipStatusRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScholarshipStatusRequest &&
            (identical(
                    other.scholarshipApplicationId, scholarshipApplicationId) ||
                const DeepCollectionEquality().equals(
                    other.scholarshipApplicationId,
                    scholarshipApplicationId)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(scholarshipApplicationId) ^
      const DeepCollectionEquality().hash(context) ^
      runtimeType.hashCode;
}

extension $ScholarshipStatusRequestExtension on ScholarshipStatusRequest {
  ScholarshipStatusRequest copyWith(
      {String? scholarshipApplicationId, Context? context}) {
    return ScholarshipStatusRequest(
        scholarshipApplicationId:
            scholarshipApplicationId ?? this.scholarshipApplicationId,
        context: context ?? this.context);
  }

  ScholarshipStatusRequest copyWithWrapped(
      {Wrapped<String>? scholarshipApplicationId, Wrapped<Context>? context}) {
    return ScholarshipStatusRequest(
        scholarshipApplicationId: (scholarshipApplicationId != null
            ? scholarshipApplicationId.value
            : this.scholarshipApplicationId),
        context: (context != null ? context.value : this.context));
  }
}

@JsonSerializable(explicitToJson: true)
class ScholarshipStatusResponse {
  ScholarshipStatusResponse({
    required this.context,
    required this.scholarshipApplicationId,
    required this.scholarshipApplicationStatus,
    this.scholarshipProvider,
  });

  factory ScholarshipStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$ScholarshipStatusResponseFromJson(json);

  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  @JsonKey(name: 'scholarshipApplicationId', includeIfNull: false)
  final String scholarshipApplicationId;
  @JsonKey(name: 'scholarshipApplicationStatus', includeIfNull: false)
  final String scholarshipApplicationStatus;
  @JsonKey(name: 'scholarshipProvider', includeIfNull: false)
  final ConfirmScholarshipResponseProvider? scholarshipProvider;
  static const fromJsonFactory = _$ScholarshipStatusResponseFromJson;
  static const toJsonFactory = _$ScholarshipStatusResponseToJson;
  Map<String, dynamic> toJson() => _$ScholarshipStatusResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScholarshipStatusResponse &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(
                    other.scholarshipApplicationId, scholarshipApplicationId) ||
                const DeepCollectionEquality().equals(
                    other.scholarshipApplicationId,
                    scholarshipApplicationId)) &&
            (identical(other.scholarshipApplicationStatus,
                    scholarshipApplicationStatus) ||
                const DeepCollectionEquality().equals(
                    other.scholarshipApplicationStatus,
                    scholarshipApplicationStatus)) &&
            (identical(other.scholarshipProvider, scholarshipProvider) ||
                const DeepCollectionEquality()
                    .equals(other.scholarshipProvider, scholarshipProvider)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(scholarshipApplicationId) ^
      const DeepCollectionEquality().hash(scholarshipApplicationStatus) ^
      const DeepCollectionEquality().hash(scholarshipProvider) ^
      runtimeType.hashCode;
}

extension $ScholarshipStatusResponseExtension on ScholarshipStatusResponse {
  ScholarshipStatusResponse copyWith(
      {Context? context,
      String? scholarshipApplicationId,
      String? scholarshipApplicationStatus,
      ConfirmScholarshipResponseProvider? scholarshipProvider}) {
    return ScholarshipStatusResponse(
        context: context ?? this.context,
        scholarshipApplicationId:
            scholarshipApplicationId ?? this.scholarshipApplicationId,
        scholarshipApplicationStatus:
            scholarshipApplicationStatus ?? this.scholarshipApplicationStatus,
        scholarshipProvider: scholarshipProvider ?? this.scholarshipProvider);
  }

  ScholarshipStatusResponse copyWithWrapped(
      {Wrapped<Context>? context,
      Wrapped<String>? scholarshipApplicationId,
      Wrapped<String>? scholarshipApplicationStatus,
      Wrapped<ConfirmScholarshipResponseProvider?>? scholarshipProvider}) {
    return ScholarshipStatusResponse(
        context: (context != null ? context.value : this.context),
        scholarshipApplicationId: (scholarshipApplicationId != null
            ? scholarshipApplicationId.value
            : this.scholarshipApplicationId),
        scholarshipApplicationStatus: (scholarshipApplicationStatus != null
            ? scholarshipApplicationStatus.value
            : this.scholarshipApplicationStatus),
        scholarshipProvider: (scholarshipProvider != null
            ? scholarshipProvider.value
            : this.scholarshipProvider));
  }
}

@JsonSerializable(explicitToJson: true)
class SearchCourseRequest {
  SearchCourseRequest({
    this.category,
    this.provider,
    this.searchTitle,
    this.deepSearch,
  });

  factory SearchCourseRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchCourseRequestFromJson(json);

  @JsonKey(name: 'category', includeIfNull: false)
  final String? category;
  @JsonKey(name: 'provider', includeIfNull: false)
  final String? provider;
  @JsonKey(name: 'searchTitle', includeIfNull: false)
  final String? searchTitle;
  @JsonKey(name: 'deepSearch', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? deepSearch;
  static const fromJsonFactory = _$SearchCourseRequestFromJson;
  static const toJsonFactory = _$SearchCourseRequestToJson;
  Map<String, dynamic> toJson() => _$SearchCourseRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchCourseRequest &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.provider, provider) ||
                const DeepCollectionEquality()
                    .equals(other.provider, provider)) &&
            (identical(other.searchTitle, searchTitle) ||
                const DeepCollectionEquality()
                    .equals(other.searchTitle, searchTitle)) &&
            (identical(other.deepSearch, deepSearch) ||
                const DeepCollectionEquality()
                    .equals(other.deepSearch, deepSearch)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(provider) ^
      const DeepCollectionEquality().hash(searchTitle) ^
      const DeepCollectionEquality().hash(deepSearch) ^
      runtimeType.hashCode;
}

extension $SearchCourseRequestExtension on SearchCourseRequest {
  SearchCourseRequest copyWith(
      {String? category,
      String? provider,
      String? searchTitle,
      List<Object>? deepSearch}) {
    return SearchCourseRequest(
        category: category ?? this.category,
        provider: provider ?? this.provider,
        searchTitle: searchTitle ?? this.searchTitle,
        deepSearch: deepSearch ?? this.deepSearch);
  }

  SearchCourseRequest copyWithWrapped(
      {Wrapped<String?>? category,
      Wrapped<String?>? provider,
      Wrapped<String?>? searchTitle,
      Wrapped<List<Object>?>? deepSearch}) {
    return SearchCourseRequest(
        category: (category != null ? category.value : this.category),
        provider: (provider != null ? provider.value : this.provider),
        searchTitle:
            (searchTitle != null ? searchTitle.value : this.searchTitle),
        deepSearch: (deepSearch != null ? deepSearch.value : this.deepSearch));
  }
}

@JsonSerializable(explicitToJson: true)
class CourseDeepSearch {
  CourseDeepSearch({
    this.searchCriteria,
    this.searchParameters,
  });

  factory CourseDeepSearch.fromJson(Map<String, dynamic> json) =>
      _$CourseDeepSearchFromJson(json);

  @JsonKey(name: 'searchCriteria', includeIfNull: false)
  final String? searchCriteria;
  @JsonKey(
      name: 'searchParameters',
      includeIfNull: false,
      defaultValue: <CourseDeepSearch$SearchParameters>[])
  final List<CourseDeepSearch$SearchParameters>? searchParameters;
  static const fromJsonFactory = _$CourseDeepSearchFromJson;
  static const toJsonFactory = _$CourseDeepSearchToJson;
  Map<String, dynamic> toJson() => _$CourseDeepSearchToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CourseDeepSearch &&
            (identical(other.searchCriteria, searchCriteria) ||
                const DeepCollectionEquality()
                    .equals(other.searchCriteria, searchCriteria)) &&
            (identical(other.searchParameters, searchParameters) ||
                const DeepCollectionEquality()
                    .equals(other.searchParameters, searchParameters)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(searchCriteria) ^
      const DeepCollectionEquality().hash(searchParameters) ^
      runtimeType.hashCode;
}

extension $CourseDeepSearchExtension on CourseDeepSearch {
  CourseDeepSearch copyWith(
      {String? searchCriteria,
      List<CourseDeepSearch$SearchParameters>? searchParameters}) {
    return CourseDeepSearch(
        searchCriteria: searchCriteria ?? this.searchCriteria,
        searchParameters: searchParameters ?? this.searchParameters);
  }

  CourseDeepSearch copyWithWrapped(
      {Wrapped<String?>? searchCriteria,
      Wrapped<List<CourseDeepSearch$SearchParameters>?>? searchParameters}) {
    return CourseDeepSearch(
        searchCriteria: (searchCriteria != null
            ? searchCriteria.value
            : this.searchCriteria),
        searchParameters: (searchParameters != null
            ? searchParameters.value
            : this.searchParameters));
  }
}

@JsonSerializable(explicitToJson: true)
class CourseResults {
  CourseResults({
    required this.context,
    this.courses,
  });

  factory CourseResults.fromJson(Map<String, dynamic> json) =>
      _$CourseResultsFromJson(json);

  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  @JsonKey(name: 'courses', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? courses;
  static const fromJsonFactory = _$CourseResultsFromJson;
  static const toJsonFactory = _$CourseResultsToJson;
  Map<String, dynamic> toJson() => _$CourseResultsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CourseResults &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.courses, courses) ||
                const DeepCollectionEquality().equals(other.courses, courses)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(courses) ^
      runtimeType.hashCode;
}

extension $CourseResultsExtension on CourseResults {
  CourseResults copyWith({Context? context, List<Object>? courses}) {
    return CourseResults(
        context: context ?? this.context, courses: courses ?? this.courses);
  }

  CourseResults copyWithWrapped(
      {Wrapped<Context>? context, Wrapped<List<Object>?>? courses}) {
    return CourseResults(
        context: (context != null ? context.value : this.context),
        courses: (courses != null ? courses.value : this.courses));
  }
}

@JsonSerializable(explicitToJson: true)
class Course {
  Course({
    required this.id,
    required this.name,
    this.description,
    required this.imageLocations,
    required this.duration,
    this.userSavedItem,
    this.userAppliedItem,
    required this.provider,
    this.category,
  });

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);

  @JsonKey(name: 'id', includeIfNull: false)
  final String id;
  @JsonKey(name: 'name', includeIfNull: false)
  final String name;
  @JsonKey(name: 'description', includeIfNull: false)
  final String? description;
  @JsonKey(
      name: 'imageLocations', includeIfNull: false, defaultValue: <String>[])
  final List<String> imageLocations;
  @JsonKey(name: 'duration', includeIfNull: false)
  final String duration;
  @JsonKey(name: 'userSavedItem', includeIfNull: false)
  final Object? userSavedItem;
  @JsonKey(name: 'userAppliedItem', includeIfNull: false)
  final Object? userAppliedItem;
  @JsonKey(name: 'provider', includeIfNull: false)
  final CourseProvider provider;
  @JsonKey(name: 'category', includeIfNull: false)
  final CourseCategory? category;
  static const fromJsonFactory = _$CourseFromJson;
  static const toJsonFactory = _$CourseToJson;
  Map<String, dynamic> toJson() => _$CourseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Course &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.imageLocations, imageLocations) ||
                const DeepCollectionEquality()
                    .equals(other.imageLocations, imageLocations)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.userSavedItem, userSavedItem) ||
                const DeepCollectionEquality()
                    .equals(other.userSavedItem, userSavedItem)) &&
            (identical(other.userAppliedItem, userAppliedItem) ||
                const DeepCollectionEquality()
                    .equals(other.userAppliedItem, userAppliedItem)) &&
            (identical(other.provider, provider) ||
                const DeepCollectionEquality()
                    .equals(other.provider, provider)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(imageLocations) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(userSavedItem) ^
      const DeepCollectionEquality().hash(userAppliedItem) ^
      const DeepCollectionEquality().hash(provider) ^
      const DeepCollectionEquality().hash(category) ^
      runtimeType.hashCode;
}

extension $CourseExtension on Course {
  Course copyWith(
      {String? id,
      String? name,
      String? description,
      List<String>? imageLocations,
      String? duration,
      Object? userSavedItem,
      Object? userAppliedItem,
      CourseProvider? provider,
      CourseCategory? category}) {
    return Course(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        imageLocations: imageLocations ?? this.imageLocations,
        duration: duration ?? this.duration,
        userSavedItem: userSavedItem ?? this.userSavedItem,
        userAppliedItem: userAppliedItem ?? this.userAppliedItem,
        provider: provider ?? this.provider,
        category: category ?? this.category);
  }

  Course copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? name,
      Wrapped<String?>? description,
      Wrapped<List<String>>? imageLocations,
      Wrapped<String>? duration,
      Wrapped<Object?>? userSavedItem,
      Wrapped<Object?>? userAppliedItem,
      Wrapped<CourseProvider>? provider,
      Wrapped<CourseCategory?>? category}) {
    return Course(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        imageLocations: (imageLocations != null
            ? imageLocations.value
            : this.imageLocations),
        duration: (duration != null ? duration.value : this.duration),
        userSavedItem:
            (userSavedItem != null ? userSavedItem.value : this.userSavedItem),
        userAppliedItem: (userAppliedItem != null
            ? userAppliedItem.value
            : this.userAppliedItem),
        provider: (provider != null ? provider.value : this.provider),
        category: (category != null ? category.value : this.category));
  }
}

@JsonSerializable(explicitToJson: true)
class CourseProvider {
  CourseProvider({
    required this.id,
    required this.name,
    this.description,
  });

  factory CourseProvider.fromJson(Map<String, dynamic> json) =>
      _$CourseProviderFromJson(json);

  @JsonKey(name: 'id', includeIfNull: false)
  final String id;
  @JsonKey(name: 'name', includeIfNull: false)
  final String name;
  @JsonKey(name: 'description', includeIfNull: false)
  final String? description;
  static const fromJsonFactory = _$CourseProviderFromJson;
  static const toJsonFactory = _$CourseProviderToJson;
  Map<String, dynamic> toJson() => _$CourseProviderToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CourseProvider &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $CourseProviderExtension on CourseProvider {
  CourseProvider copyWith({String? id, String? name, String? description}) {
    return CourseProvider(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description);
  }

  CourseProvider copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? name,
      Wrapped<String?>? description}) {
    return CourseProvider(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description));
  }
}

@JsonSerializable(explicitToJson: true)
class CourseCategory {
  CourseCategory({
    this.id,
    this.name,
  });

  factory CourseCategory.fromJson(Map<String, dynamic> json) =>
      _$CourseCategoryFromJson(json);

  @JsonKey(name: 'id', includeIfNull: false)
  final String? id;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  static const fromJsonFactory = _$CourseCategoryFromJson;
  static const toJsonFactory = _$CourseCategoryToJson;
  Map<String, dynamic> toJson() => _$CourseCategoryToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CourseCategory &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $CourseCategoryExtension on CourseCategory {
  CourseCategory copyWith({String? id, String? name}) {
    return CourseCategory(id: id ?? this.id, name: name ?? this.name);
  }

  CourseCategory copyWithWrapped(
      {Wrapped<String?>? id, Wrapped<String?>? name}) {
    return CourseCategory(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class SelectCourseRequest {
  SelectCourseRequest({
    required this.courseId,
    this.courseProviderId,
    required this.context,
  });

  factory SelectCourseRequest.fromJson(Map<String, dynamic> json) =>
      _$SelectCourseRequestFromJson(json);

  @JsonKey(name: 'courseId', includeIfNull: false)
  final String courseId;
  @JsonKey(name: 'courseProviderId', includeIfNull: false)
  final String? courseProviderId;
  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  static const fromJsonFactory = _$SelectCourseRequestFromJson;
  static const toJsonFactory = _$SelectCourseRequestToJson;
  Map<String, dynamic> toJson() => _$SelectCourseRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectCourseRequest &&
            (identical(other.courseId, courseId) ||
                const DeepCollectionEquality()
                    .equals(other.courseId, courseId)) &&
            (identical(other.courseProviderId, courseProviderId) ||
                const DeepCollectionEquality()
                    .equals(other.courseProviderId, courseProviderId)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(courseId) ^
      const DeepCollectionEquality().hash(courseProviderId) ^
      const DeepCollectionEquality().hash(context) ^
      runtimeType.hashCode;
}

extension $SelectCourseRequestExtension on SelectCourseRequest {
  SelectCourseRequest copyWith(
      {String? courseId, String? courseProviderId, Context? context}) {
    return SelectCourseRequest(
        courseId: courseId ?? this.courseId,
        courseProviderId: courseProviderId ?? this.courseProviderId,
        context: context ?? this.context);
  }

  SelectCourseRequest copyWithWrapped(
      {Wrapped<String>? courseId,
      Wrapped<String?>? courseProviderId,
      Wrapped<Context>? context}) {
    return SelectCourseRequest(
        courseId: (courseId != null ? courseId.value : this.courseId),
        courseProviderId: (courseProviderId != null
            ? courseProviderId.value
            : this.courseProviderId),
        context: (context != null ? context.value : this.context));
  }
}

@JsonSerializable(explicitToJson: true)
class SelectCourseResponse {
  SelectCourseResponse({
    required this.context,
    required this.course,
    required this.courseDetails,
    this.additionalFormUrl,
  });

  factory SelectCourseResponse.fromJson(Map<String, dynamic> json) =>
      _$SelectCourseResponseFromJson(json);

  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  @JsonKey(name: 'course', includeIfNull: false)
  final Course course;
  @JsonKey(name: 'courseDetails', includeIfNull: false)
  final CourseDetails courseDetails;
  @JsonKey(name: 'additionalFormUrl', includeIfNull: false)
  final String? additionalFormUrl;
  static const fromJsonFactory = _$SelectCourseResponseFromJson;
  static const toJsonFactory = _$SelectCourseResponseToJson;
  Map<String, dynamic> toJson() => _$SelectCourseResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectCourseResponse &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.course, course) ||
                const DeepCollectionEquality().equals(other.course, course)) &&
            (identical(other.courseDetails, courseDetails) ||
                const DeepCollectionEquality()
                    .equals(other.courseDetails, courseDetails)) &&
            (identical(other.additionalFormUrl, additionalFormUrl) ||
                const DeepCollectionEquality()
                    .equals(other.additionalFormUrl, additionalFormUrl)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(course) ^
      const DeepCollectionEquality().hash(courseDetails) ^
      const DeepCollectionEquality().hash(additionalFormUrl) ^
      runtimeType.hashCode;
}

extension $SelectCourseResponseExtension on SelectCourseResponse {
  SelectCourseResponse copyWith(
      {Context? context,
      Course? course,
      CourseDetails? courseDetails,
      String? additionalFormUrl}) {
    return SelectCourseResponse(
        context: context ?? this.context,
        course: course ?? this.course,
        courseDetails: courseDetails ?? this.courseDetails,
        additionalFormUrl: additionalFormUrl ?? this.additionalFormUrl);
  }

  SelectCourseResponse copyWithWrapped(
      {Wrapped<Context>? context,
      Wrapped<Course>? course,
      Wrapped<CourseDetails>? courseDetails,
      Wrapped<String?>? additionalFormUrl}) {
    return SelectCourseResponse(
        context: (context != null ? context.value : this.context),
        course: (course != null ? course.value : this.course),
        courseDetails:
            (courseDetails != null ? courseDetails.value : this.courseDetails),
        additionalFormUrl: (additionalFormUrl != null
            ? additionalFormUrl.value
            : this.additionalFormUrl));
  }
}

@JsonSerializable(explicitToJson: true)
class CourseDetails {
  CourseDetails({
    this.price,
    this.startDate,
    this.endDate,
    this.rating,
    this.credits,
    required this.instructors,
    this.offeringInstitue,
    this.courseUrl,
    this.enrollmentEndDate,
    this.eligibility,
    this.courseHighlights,
    this.prerequisites,
  });

  factory CourseDetails.fromJson(Map<String, dynamic> json) =>
      _$CourseDetailsFromJson(json);

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
  final String instructors;
  @JsonKey(name: 'offeringInstitue', includeIfNull: false)
  final String? offeringInstitue;
  @JsonKey(name: 'courseUrl', includeIfNull: false)
  final String? courseUrl;
  @JsonKey(name: 'enrollmentEndDate', includeIfNull: false)
  final String? enrollmentEndDate;
  @JsonKey(name: 'eligibility', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? eligibility;
  @JsonKey(
      name: 'courseHighlights', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? courseHighlights;
  @JsonKey(
      name: 'prerequisites', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? prerequisites;
  static const fromJsonFactory = _$CourseDetailsFromJson;
  static const toJsonFactory = _$CourseDetailsToJson;
  Map<String, dynamic> toJson() => _$CourseDetailsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CourseDetails &&
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
                const DeepCollectionEquality()
                    .equals(other.courseUrl, courseUrl)) &&
            (identical(other.enrollmentEndDate, enrollmentEndDate) ||
                const DeepCollectionEquality()
                    .equals(other.enrollmentEndDate, enrollmentEndDate)) &&
            (identical(other.eligibility, eligibility) ||
                const DeepCollectionEquality()
                    .equals(other.eligibility, eligibility)) &&
            (identical(other.courseHighlights, courseHighlights) ||
                const DeepCollectionEquality()
                    .equals(other.courseHighlights, courseHighlights)) &&
            (identical(other.prerequisites, prerequisites) ||
                const DeepCollectionEquality()
                    .equals(other.prerequisites, prerequisites)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
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
      runtimeType.hashCode;
}

extension $CourseDetailsExtension on CourseDetails {
  CourseDetails copyWith(
      {String? price,
      String? startDate,
      String? endDate,
      String? rating,
      String? credits,
      String? instructors,
      String? offeringInstitue,
      String? courseUrl,
      String? enrollmentEndDate,
      List<Object>? eligibility,
      List<Object>? courseHighlights,
      List<Object>? prerequisites}) {
    return CourseDetails(
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
        prerequisites: prerequisites ?? this.prerequisites);
  }

  CourseDetails copyWithWrapped(
      {Wrapped<String?>? price,
      Wrapped<String?>? startDate,
      Wrapped<String?>? endDate,
      Wrapped<String?>? rating,
      Wrapped<String?>? credits,
      Wrapped<String>? instructors,
      Wrapped<String?>? offeringInstitue,
      Wrapped<String?>? courseUrl,
      Wrapped<String?>? enrollmentEndDate,
      Wrapped<List<Object>?>? eligibility,
      Wrapped<List<Object>?>? courseHighlights,
      Wrapped<List<Object>?>? prerequisites}) {
    return CourseDetails(
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
            (prerequisites != null ? prerequisites.value : this.prerequisites));
  }
}

@JsonSerializable(explicitToJson: true)
class InitCourse {
  InitCourse({
    required this.context,
    required this.courseId,
    this.courseProviderId,
    required this.applicantProfile,
    this.additionalFormData,
  });

  factory InitCourse.fromJson(Map<String, dynamic> json) =>
      _$InitCourseFromJson(json);

  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  @JsonKey(name: 'courseId', includeIfNull: false)
  final String courseId;
  @JsonKey(name: 'CourseProviderId', includeIfNull: false)
  final String? courseProviderId;
  @JsonKey(name: 'applicantProfile', includeIfNull: false)
  final CourseApplicantProfile applicantProfile;
  @JsonKey(name: 'additionalFormData', includeIfNull: false)
  final InitCourse$AdditionalFormData? additionalFormData;
  static const fromJsonFactory = _$InitCourseFromJson;
  static const toJsonFactory = _$InitCourseToJson;
  Map<String, dynamic> toJson() => _$InitCourseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitCourse &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.courseId, courseId) ||
                const DeepCollectionEquality()
                    .equals(other.courseId, courseId)) &&
            (identical(other.courseProviderId, courseProviderId) ||
                const DeepCollectionEquality()
                    .equals(other.courseProviderId, courseProviderId)) &&
            (identical(other.applicantProfile, applicantProfile) ||
                const DeepCollectionEquality()
                    .equals(other.applicantProfile, applicantProfile)) &&
            (identical(other.additionalFormData, additionalFormData) ||
                const DeepCollectionEquality()
                    .equals(other.additionalFormData, additionalFormData)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(courseId) ^
      const DeepCollectionEquality().hash(courseProviderId) ^
      const DeepCollectionEquality().hash(applicantProfile) ^
      const DeepCollectionEquality().hash(additionalFormData) ^
      runtimeType.hashCode;
}

extension $InitCourseExtension on InitCourse {
  InitCourse copyWith(
      {Context? context,
      String? courseId,
      String? courseProviderId,
      CourseApplicantProfile? applicantProfile,
      InitCourse$AdditionalFormData? additionalFormData}) {
    return InitCourse(
        context: context ?? this.context,
        courseId: courseId ?? this.courseId,
        courseProviderId: courseProviderId ?? this.courseProviderId,
        applicantProfile: applicantProfile ?? this.applicantProfile,
        additionalFormData: additionalFormData ?? this.additionalFormData);
  }

  InitCourse copyWithWrapped(
      {Wrapped<Context>? context,
      Wrapped<String>? courseId,
      Wrapped<String?>? courseProviderId,
      Wrapped<CourseApplicantProfile>? applicantProfile,
      Wrapped<InitCourse$AdditionalFormData?>? additionalFormData}) {
    return InitCourse(
        context: (context != null ? context.value : this.context),
        courseId: (courseId != null ? courseId.value : this.courseId),
        courseProviderId: (courseProviderId != null
            ? courseProviderId.value
            : this.courseProviderId),
        applicantProfile: (applicantProfile != null
            ? applicantProfile.value
            : this.applicantProfile),
        additionalFormData: (additionalFormData != null
            ? additionalFormData.value
            : this.additionalFormData));
  }
}

@JsonSerializable(explicitToJson: true)
class CourseApplicantProfile {
  CourseApplicantProfile({
    this.name,
    this.email,
    this.contact,
  });

  factory CourseApplicantProfile.fromJson(Map<String, dynamic> json) =>
      _$CourseApplicantProfileFromJson(json);

  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'email', includeIfNull: false)
  final String? email;
  @JsonKey(name: 'contact', includeIfNull: false)
  final String? contact;
  static const fromJsonFactory = _$CourseApplicantProfileFromJson;
  static const toJsonFactory = _$CourseApplicantProfileToJson;
  Map<String, dynamic> toJson() => _$CourseApplicantProfileToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CourseApplicantProfile &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.contact, contact) ||
                const DeepCollectionEquality().equals(other.contact, contact)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(contact) ^
      runtimeType.hashCode;
}

extension $CourseApplicantProfileExtension on CourseApplicantProfile {
  CourseApplicantProfile copyWith(
      {String? name, String? email, String? contact}) {
    return CourseApplicantProfile(
        name: name ?? this.name,
        email: email ?? this.email,
        contact: contact ?? this.contact);
  }

  CourseApplicantProfile copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<String?>? email,
      Wrapped<String?>? contact}) {
    return CourseApplicantProfile(
        name: (name != null ? name.value : this.name),
        email: (email != null ? email.value : this.email),
        contact: (contact != null ? contact.value : this.contact));
  }
}

@JsonSerializable(explicitToJson: true)
class CourseAdditionalFormData {
  CourseAdditionalFormData({
    this.formInputKey,
    this.formInputValue,
  });

  factory CourseAdditionalFormData.fromJson(Map<String, dynamic> json) =>
      _$CourseAdditionalFormDataFromJson(json);

  @JsonKey(name: 'formInputKey', includeIfNull: false)
  final String? formInputKey;
  @JsonKey(name: 'formInputValue', includeIfNull: false)
  final String? formInputValue;
  static const fromJsonFactory = _$CourseAdditionalFormDataFromJson;
  static const toJsonFactory = _$CourseAdditionalFormDataToJson;
  Map<String, dynamic> toJson() => _$CourseAdditionalFormDataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CourseAdditionalFormData &&
            (identical(other.formInputKey, formInputKey) ||
                const DeepCollectionEquality()
                    .equals(other.formInputKey, formInputKey)) &&
            (identical(other.formInputValue, formInputValue) ||
                const DeepCollectionEquality()
                    .equals(other.formInputValue, formInputValue)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(formInputKey) ^
      const DeepCollectionEquality().hash(formInputValue) ^
      runtimeType.hashCode;
}

extension $CourseAdditionalFormDataExtension on CourseAdditionalFormData {
  CourseAdditionalFormData copyWith(
      {String? formInputKey, String? formInputValue}) {
    return CourseAdditionalFormData(
        formInputKey: formInputKey ?? this.formInputKey,
        formInputValue: formInputValue ?? this.formInputValue);
  }

  CourseAdditionalFormData copyWithWrapped(
      {Wrapped<String?>? formInputKey, Wrapped<String?>? formInputValue}) {
    return CourseAdditionalFormData(
        formInputKey:
            (formInputKey != null ? formInputKey.value : this.formInputKey),
        formInputValue: (formInputValue != null
            ? formInputValue.value
            : this.formInputValue));
  }
}

@JsonSerializable(explicitToJson: true)
class InitCourseResponse {
  InitCourseResponse({
    required this.context,
    required this.course,
    this.courseDetails,
    required this.applicantProfile,
    this.additionalFormUrl,
    this.additionalFormData,
  });

  factory InitCourseResponse.fromJson(Map<String, dynamic> json) =>
      _$InitCourseResponseFromJson(json);

  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  @JsonKey(name: 'course', includeIfNull: false)
  final Course course;
  @JsonKey(name: 'courseDetails', includeIfNull: false)
  final CourseDetails? courseDetails;
  @JsonKey(name: 'applicantProfile', includeIfNull: false)
  final CourseApplicantProfile applicantProfile;
  @JsonKey(name: 'additionalFormUrl', includeIfNull: false)
  final String? additionalFormUrl;
  @JsonKey(name: 'additionalFormData', includeIfNull: false)
  final InitCourseResponse$AdditionalFormData? additionalFormData;
  static const fromJsonFactory = _$InitCourseResponseFromJson;
  static const toJsonFactory = _$InitCourseResponseToJson;
  Map<String, dynamic> toJson() => _$InitCourseResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitCourseResponse &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.course, course) ||
                const DeepCollectionEquality().equals(other.course, course)) &&
            (identical(other.courseDetails, courseDetails) ||
                const DeepCollectionEquality()
                    .equals(other.courseDetails, courseDetails)) &&
            (identical(other.applicantProfile, applicantProfile) ||
                const DeepCollectionEquality()
                    .equals(other.applicantProfile, applicantProfile)) &&
            (identical(other.additionalFormUrl, additionalFormUrl) ||
                const DeepCollectionEquality()
                    .equals(other.additionalFormUrl, additionalFormUrl)) &&
            (identical(other.additionalFormData, additionalFormData) ||
                const DeepCollectionEquality()
                    .equals(other.additionalFormData, additionalFormData)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(course) ^
      const DeepCollectionEquality().hash(courseDetails) ^
      const DeepCollectionEquality().hash(applicantProfile) ^
      const DeepCollectionEquality().hash(additionalFormUrl) ^
      const DeepCollectionEquality().hash(additionalFormData) ^
      runtimeType.hashCode;
}

extension $InitCourseResponseExtension on InitCourseResponse {
  InitCourseResponse copyWith(
      {Context? context,
      Course? course,
      CourseDetails? courseDetails,
      CourseApplicantProfile? applicantProfile,
      String? additionalFormUrl,
      InitCourseResponse$AdditionalFormData? additionalFormData}) {
    return InitCourseResponse(
        context: context ?? this.context,
        course: course ?? this.course,
        courseDetails: courseDetails ?? this.courseDetails,
        applicantProfile: applicantProfile ?? this.applicantProfile,
        additionalFormUrl: additionalFormUrl ?? this.additionalFormUrl,
        additionalFormData: additionalFormData ?? this.additionalFormData);
  }

  InitCourseResponse copyWithWrapped(
      {Wrapped<Context>? context,
      Wrapped<Course>? course,
      Wrapped<CourseDetails?>? courseDetails,
      Wrapped<CourseApplicantProfile>? applicantProfile,
      Wrapped<String?>? additionalFormUrl,
      Wrapped<InitCourseResponse$AdditionalFormData?>? additionalFormData}) {
    return InitCourseResponse(
        context: (context != null ? context.value : this.context),
        course: (course != null ? course.value : this.course),
        courseDetails:
            (courseDetails != null ? courseDetails.value : this.courseDetails),
        applicantProfile: (applicantProfile != null
            ? applicantProfile.value
            : this.applicantProfile),
        additionalFormUrl: (additionalFormUrl != null
            ? additionalFormUrl.value
            : this.additionalFormUrl),
        additionalFormData: (additionalFormData != null
            ? additionalFormData.value
            : this.additionalFormData));
  }
}

@JsonSerializable(explicitToJson: true)
class ConfirmCourseRequest {
  ConfirmCourseRequest({
    required this.context,
    required this.courseId,
    required this.courseProviderId,
    this.applicantProfile,
  });

  factory ConfirmCourseRequest.fromJson(Map<String, dynamic> json) =>
      _$ConfirmCourseRequestFromJson(json);

  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  @JsonKey(name: 'courseId', includeIfNull: false)
  final String courseId;
  @JsonKey(name: 'CourseProviderId', includeIfNull: false)
  final String courseProviderId;
  @JsonKey(name: 'applicantProfile', includeIfNull: false)
  final CourseApplicantProfile? applicantProfile;
  static const fromJsonFactory = _$ConfirmCourseRequestFromJson;
  static const toJsonFactory = _$ConfirmCourseRequestToJson;
  Map<String, dynamic> toJson() => _$ConfirmCourseRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmCourseRequest &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.courseId, courseId) ||
                const DeepCollectionEquality()
                    .equals(other.courseId, courseId)) &&
            (identical(other.courseProviderId, courseProviderId) ||
                const DeepCollectionEquality()
                    .equals(other.courseProviderId, courseProviderId)) &&
            (identical(other.applicantProfile, applicantProfile) ||
                const DeepCollectionEquality()
                    .equals(other.applicantProfile, applicantProfile)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(courseId) ^
      const DeepCollectionEquality().hash(courseProviderId) ^
      const DeepCollectionEquality().hash(applicantProfile) ^
      runtimeType.hashCode;
}

extension $ConfirmCourseRequestExtension on ConfirmCourseRequest {
  ConfirmCourseRequest copyWith(
      {Context? context,
      String? courseId,
      String? courseProviderId,
      CourseApplicantProfile? applicantProfile}) {
    return ConfirmCourseRequest(
        context: context ?? this.context,
        courseId: courseId ?? this.courseId,
        courseProviderId: courseProviderId ?? this.courseProviderId,
        applicantProfile: applicantProfile ?? this.applicantProfile);
  }

  ConfirmCourseRequest copyWithWrapped(
      {Wrapped<Context>? context,
      Wrapped<String>? courseId,
      Wrapped<String>? courseProviderId,
      Wrapped<CourseApplicantProfile?>? applicantProfile}) {
    return ConfirmCourseRequest(
        context: (context != null ? context.value : this.context),
        courseId: (courseId != null ? courseId.value : this.courseId),
        courseProviderId: (courseProviderId != null
            ? courseProviderId.value
            : this.courseProviderId),
        applicantProfile: (applicantProfile != null
            ? applicantProfile.value
            : this.applicantProfile));
  }
}

@JsonSerializable(explicitToJson: true)
class ConfirmCourseResponse {
  ConfirmCourseResponse({
    required this.context,
    required this.applicationId,
    this.applicationState,
    required this.course,
    required this.applicantProfile,
    this.additionalFormUrl,
    this.additionalFormData,
  });

  factory ConfirmCourseResponse.fromJson(Map<String, dynamic> json) =>
      _$ConfirmCourseResponseFromJson(json);

  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  @JsonKey(name: 'applicationId', includeIfNull: false)
  final String applicationId;
  @JsonKey(name: 'applicationState', includeIfNull: false)
  final String? applicationState;
  @JsonKey(name: 'course', includeIfNull: false)
  final Course course;
  @JsonKey(name: 'applicantProfile', includeIfNull: false)
  final CourseApplicantProfile applicantProfile;
  @JsonKey(name: 'additionalFormUrl', includeIfNull: false)
  final String? additionalFormUrl;
  @JsonKey(name: 'additionalFormData', includeIfNull: false)
  final ConfirmCourseResponse$AdditionalFormData? additionalFormData;
  static const fromJsonFactory = _$ConfirmCourseResponseFromJson;
  static const toJsonFactory = _$ConfirmCourseResponseToJson;
  Map<String, dynamic> toJson() => _$ConfirmCourseResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmCourseResponse &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.applicationState, applicationState) ||
                const DeepCollectionEquality()
                    .equals(other.applicationState, applicationState)) &&
            (identical(other.course, course) ||
                const DeepCollectionEquality().equals(other.course, course)) &&
            (identical(other.applicantProfile, applicantProfile) ||
                const DeepCollectionEquality()
                    .equals(other.applicantProfile, applicantProfile)) &&
            (identical(other.additionalFormUrl, additionalFormUrl) ||
                const DeepCollectionEquality()
                    .equals(other.additionalFormUrl, additionalFormUrl)) &&
            (identical(other.additionalFormData, additionalFormData) ||
                const DeepCollectionEquality()
                    .equals(other.additionalFormData, additionalFormData)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(applicationState) ^
      const DeepCollectionEquality().hash(course) ^
      const DeepCollectionEquality().hash(applicantProfile) ^
      const DeepCollectionEquality().hash(additionalFormUrl) ^
      const DeepCollectionEquality().hash(additionalFormData) ^
      runtimeType.hashCode;
}

extension $ConfirmCourseResponseExtension on ConfirmCourseResponse {
  ConfirmCourseResponse copyWith(
      {Context? context,
      String? applicationId,
      String? applicationState,
      Course? course,
      CourseApplicantProfile? applicantProfile,
      String? additionalFormUrl,
      ConfirmCourseResponse$AdditionalFormData? additionalFormData}) {
    return ConfirmCourseResponse(
        context: context ?? this.context,
        applicationId: applicationId ?? this.applicationId,
        applicationState: applicationState ?? this.applicationState,
        course: course ?? this.course,
        applicantProfile: applicantProfile ?? this.applicantProfile,
        additionalFormUrl: additionalFormUrl ?? this.additionalFormUrl,
        additionalFormData: additionalFormData ?? this.additionalFormData);
  }

  ConfirmCourseResponse copyWithWrapped(
      {Wrapped<Context>? context,
      Wrapped<String>? applicationId,
      Wrapped<String?>? applicationState,
      Wrapped<Course>? course,
      Wrapped<CourseApplicantProfile>? applicantProfile,
      Wrapped<String?>? additionalFormUrl,
      Wrapped<ConfirmCourseResponse$AdditionalFormData?>? additionalFormData}) {
    return ConfirmCourseResponse(
        context: (context != null ? context.value : this.context),
        applicationId:
            (applicationId != null ? applicationId.value : this.applicationId),
        applicationState: (applicationState != null
            ? applicationState.value
            : this.applicationState),
        course: (course != null ? course.value : this.course),
        applicantProfile: (applicantProfile != null
            ? applicantProfile.value
            : this.applicantProfile),
        additionalFormUrl: (additionalFormUrl != null
            ? additionalFormUrl.value
            : this.additionalFormUrl),
        additionalFormData: (additionalFormData != null
            ? additionalFormData.value
            : this.additionalFormData));
  }
}

@JsonSerializable(explicitToJson: true)
class CourseStatusRequest {
  CourseStatusRequest({
    required this.applicationId,
    required this.context,
  });

  factory CourseStatusRequest.fromJson(Map<String, dynamic> json) =>
      _$CourseStatusRequestFromJson(json);

  @JsonKey(name: 'applicationId', includeIfNull: false)
  final String applicationId;
  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  static const fromJsonFactory = _$CourseStatusRequestFromJson;
  static const toJsonFactory = _$CourseStatusRequestToJson;
  Map<String, dynamic> toJson() => _$CourseStatusRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CourseStatusRequest &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(context) ^
      runtimeType.hashCode;
}

extension $CourseStatusRequestExtension on CourseStatusRequest {
  CourseStatusRequest copyWith({String? applicationId, Context? context}) {
    return CourseStatusRequest(
        applicationId: applicationId ?? this.applicationId,
        context: context ?? this.context);
  }

  CourseStatusRequest copyWithWrapped(
      {Wrapped<String>? applicationId, Wrapped<Context>? context}) {
    return CourseStatusRequest(
        applicationId:
            (applicationId != null ? applicationId.value : this.applicationId),
        context: (context != null ? context.value : this.context));
  }
}

@JsonSerializable(explicitToJson: true)
class CourseStatusResponse {
  CourseStatusResponse({
    required this.context,
    required this.applicationId,
    required this.course,
    required this.applicantProfile,
    this.additionalFormUrl,
    this.additionalFormData,
  });

  factory CourseStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$CourseStatusResponseFromJson(json);

  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  @JsonKey(name: 'applicationId', includeIfNull: false)
  final String applicationId;
  @JsonKey(name: 'course', includeIfNull: false)
  final Course course;
  @JsonKey(name: 'applicantProfile', includeIfNull: false)
  final CourseApplicantProfile applicantProfile;
  @JsonKey(name: 'additionalFormUrl', includeIfNull: false)
  final String? additionalFormUrl;
  @JsonKey(name: 'additionalFormData', includeIfNull: false)
  final CourseStatusResponse$AdditionalFormData? additionalFormData;
  static const fromJsonFactory = _$CourseStatusResponseFromJson;
  static const toJsonFactory = _$CourseStatusResponseToJson;
  Map<String, dynamic> toJson() => _$CourseStatusResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CourseStatusResponse &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.course, course) ||
                const DeepCollectionEquality().equals(other.course, course)) &&
            (identical(other.applicantProfile, applicantProfile) ||
                const DeepCollectionEquality()
                    .equals(other.applicantProfile, applicantProfile)) &&
            (identical(other.additionalFormUrl, additionalFormUrl) ||
                const DeepCollectionEquality()
                    .equals(other.additionalFormUrl, additionalFormUrl)) &&
            (identical(other.additionalFormData, additionalFormData) ||
                const DeepCollectionEquality()
                    .equals(other.additionalFormData, additionalFormData)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(course) ^
      const DeepCollectionEquality().hash(applicantProfile) ^
      const DeepCollectionEquality().hash(additionalFormUrl) ^
      const DeepCollectionEquality().hash(additionalFormData) ^
      runtimeType.hashCode;
}

extension $CourseStatusResponseExtension on CourseStatusResponse {
  CourseStatusResponse copyWith(
      {Context? context,
      String? applicationId,
      Course? course,
      CourseApplicantProfile? applicantProfile,
      String? additionalFormUrl,
      CourseStatusResponse$AdditionalFormData? additionalFormData}) {
    return CourseStatusResponse(
        context: context ?? this.context,
        applicationId: applicationId ?? this.applicationId,
        course: course ?? this.course,
        applicantProfile: applicantProfile ?? this.applicantProfile,
        additionalFormUrl: additionalFormUrl ?? this.additionalFormUrl,
        additionalFormData: additionalFormData ?? this.additionalFormData);
  }

  CourseStatusResponse copyWithWrapped(
      {Wrapped<Context>? context,
      Wrapped<String>? applicationId,
      Wrapped<Course>? course,
      Wrapped<CourseApplicantProfile>? applicantProfile,
      Wrapped<String?>? additionalFormUrl,
      Wrapped<CourseStatusResponse$AdditionalFormData?>? additionalFormData}) {
    return CourseStatusResponse(
        context: (context != null ? context.value : this.context),
        applicationId:
            (applicationId != null ? applicationId.value : this.applicationId),
        course: (course != null ? course.value : this.course),
        applicantProfile: (applicantProfile != null
            ? applicantProfile.value
            : this.applicantProfile),
        additionalFormUrl: (additionalFormUrl != null
            ? additionalFormUrl.value
            : this.additionalFormUrl),
        additionalFormData: (additionalFormData != null
            ? additionalFormData.value
            : this.additionalFormData));
  }
}

@JsonSerializable(explicitToJson: true)
class Context {
  Context({
    required this.transactionId,
    this.messageId,
    required this.bppId,
    required this.bppUri,
  });

  factory Context.fromJson(Map<String, dynamic> json) =>
      _$ContextFromJson(json);

  @JsonKey(name: 'transactionId', includeIfNull: false)
  final String transactionId;
  @JsonKey(name: 'messageId', includeIfNull: false)
  final String? messageId;
  @JsonKey(name: 'bppId', includeIfNull: false)
  final String bppId;
  @JsonKey(name: 'bppUri', includeIfNull: false)
  final String bppUri;
  static const fromJsonFactory = _$ContextFromJson;
  static const toJsonFactory = _$ContextToJson;
  Map<String, dynamic> toJson() => _$ContextToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Context &&
            (identical(other.transactionId, transactionId) ||
                const DeepCollectionEquality()
                    .equals(other.transactionId, transactionId)) &&
            (identical(other.messageId, messageId) ||
                const DeepCollectionEquality()
                    .equals(other.messageId, messageId)) &&
            (identical(other.bppId, bppId) ||
                const DeepCollectionEquality().equals(other.bppId, bppId)) &&
            (identical(other.bppUri, bppUri) ||
                const DeepCollectionEquality().equals(other.bppUri, bppUri)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transactionId) ^
      const DeepCollectionEquality().hash(messageId) ^
      const DeepCollectionEquality().hash(bppId) ^
      const DeepCollectionEquality().hash(bppUri) ^
      runtimeType.hashCode;
}

extension $ContextExtension on Context {
  Context copyWith(
      {String? transactionId,
      String? messageId,
      String? bppId,
      String? bppUri}) {
    return Context(
        transactionId: transactionId ?? this.transactionId,
        messageId: messageId ?? this.messageId,
        bppId: bppId ?? this.bppId,
        bppUri: bppUri ?? this.bppUri);
  }

  Context copyWithWrapped(
      {Wrapped<String>? transactionId,
      Wrapped<String?>? messageId,
      Wrapped<String>? bppId,
      Wrapped<String>? bppUri}) {
    return Context(
        transactionId:
            (transactionId != null ? transactionId.value : this.transactionId),
        messageId: (messageId != null ? messageId.value : this.messageId),
        bppId: (bppId != null ? bppId.value : this.bppId),
        bppUri: (bppUri != null ? bppUri.value : this.bppUri));
  }
}

@JsonSerializable(explicitToJson: true)
class Error {
  Error({
    required this.code,
    required this.message,
    this.data,
    required this.type,
    this.path,
  });

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);

  @JsonKey(name: 'code', includeIfNull: false)
  final String code;
  @JsonKey(name: 'message', includeIfNull: false)
  final String message;
  @JsonKey(name: 'data', includeIfNull: false)
  final Object? data;
  @JsonKey(name: 'type', includeIfNull: false)
  final String type;
  @JsonKey(name: 'path', includeIfNull: false)
  final String? path;
  static const fromJsonFactory = _$ErrorFromJson;
  static const toJsonFactory = _$ErrorToJson;
  Map<String, dynamic> toJson() => _$ErrorToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(path) ^
      runtimeType.hashCode;
}

extension $ErrorExtension on Error {
  Error copyWith(
      {String? code,
      String? message,
      Object? data,
      String? type,
      String? path}) {
    return Error(
        code: code ?? this.code,
        message: message ?? this.message,
        data: data ?? this.data,
        type: type ?? this.type,
        path: path ?? this.path);
  }

  Error copyWithWrapped(
      {Wrapped<String>? code,
      Wrapped<String>? message,
      Wrapped<Object?>? data,
      Wrapped<String>? type,
      Wrapped<String?>? path}) {
    return Error(
        code: (code != null ? code.value : this.code),
        message: (message != null ? message.value : this.message),
        data: (data != null ? data.value : this.data),
        type: (type != null ? type.value : this.type),
        path: (path != null ? path.value : this.path));
  }
}

@JsonSerializable(explicitToJson: true)
class NetworkError {
  NetworkError({
    this.code,
    this.message,
    this.data,
    this.type,
  });

  factory NetworkError.fromJson(Map<String, dynamic> json) =>
      _$NetworkErrorFromJson(json);

  @JsonKey(name: 'code', includeIfNull: false)
  final int? code;
  @JsonKey(name: 'message', includeIfNull: false)
  final String? message;
  @JsonKey(name: 'data', includeIfNull: false)
  final Object? data;
  @JsonKey(name: 'type', includeIfNull: false)
  final String? type;
  static const fromJsonFactory = _$NetworkErrorFromJson;
  static const toJsonFactory = _$NetworkErrorToJson;
  Map<String, dynamic> toJson() => _$NetworkErrorToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NetworkError &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $NetworkErrorExtension on NetworkError {
  NetworkError copyWith(
      {int? code, String? message, Object? data, String? type}) {
    return NetworkError(
        code: code ?? this.code,
        message: message ?? this.message,
        data: data ?? this.data,
        type: type ?? this.type);
  }

  NetworkError copyWithWrapped(
      {Wrapped<int?>? code,
      Wrapped<String?>? message,
      Wrapped<Object?>? data,
      Wrapped<String?>? type}) {
    return NetworkError(
        code: (code != null ? code.value : this.code),
        message: (message != null ? message.value : this.message),
        data: (data != null ? data.value : this.data),
        type: (type != null ? type.value : this.type));
  }
}

@JsonSerializable(explicitToJson: true)
class Acknowledgement {
  Acknowledgement({
    required this.context,
    required this.message,
  });

  factory Acknowledgement.fromJson(Map<String, dynamic> json) =>
      _$AcknowledgementFromJson(json);

  @JsonKey(name: 'context', includeIfNull: false)
  final Context context;
  @JsonKey(name: 'message', includeIfNull: false)
  final Acknowledgement$Message message;
  static const fromJsonFactory = _$AcknowledgementFromJson;
  static const toJsonFactory = _$AcknowledgementToJson;
  Map<String, dynamic> toJson() => _$AcknowledgementToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Acknowledgement &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $AcknowledgementExtension on Acknowledgement {
  Acknowledgement copyWith(
      {Context? context, Acknowledgement$Message? message}) {
    return Acknowledgement(
        context: context ?? this.context, message: message ?? this.message);
  }

  Acknowledgement copyWithWrapped(
      {Wrapped<Context>? context, Wrapped<Acknowledgement$Message>? message}) {
    return Acknowledgement(
        context: (context != null ? context.value : this.context),
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class SearchJob$Title {
  SearchJob$Title({
    this.key,
  });

  factory SearchJob$Title.fromJson(Map<String, dynamic> json) =>
      _$SearchJob$TitleFromJson(json);

  @JsonKey(name: 'key', includeIfNull: false)
  final String? key;
  static const fromJsonFactory = _$SearchJob$TitleFromJson;
  static const toJsonFactory = _$SearchJob$TitleToJson;
  Map<String, dynamic> toJson() => _$SearchJob$TitleToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchJob$Title &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(key) ^ runtimeType.hashCode;
}

extension $SearchJob$TitleExtension on SearchJob$Title {
  SearchJob$Title copyWith({String? key}) {
    return SearchJob$Title(key: key ?? this.key);
  }

  SearchJob$Title copyWithWrapped({Wrapped<String?>? key}) {
    return SearchJob$Title(key: (key != null ? key.value : this.key));
  }
}

@JsonSerializable(explicitToJson: true)
class SearchJob$Company {
  SearchJob$Company({
    this.name,
    this.locations,
  });

  factory SearchJob$Company.fromJson(Map<String, dynamic> json) =>
      _$SearchJob$CompanyFromJson(json);

  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(
      name: 'locations',
      includeIfNull: false,
      defaultValue: <SearchJob$Company$Locations>[])
  final List<SearchJob$Company$Locations>? locations;
  static const fromJsonFactory = _$SearchJob$CompanyFromJson;
  static const toJsonFactory = _$SearchJob$CompanyToJson;
  Map<String, dynamic> toJson() => _$SearchJob$CompanyToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchJob$Company &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.locations, locations) ||
                const DeepCollectionEquality()
                    .equals(other.locations, locations)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(locations) ^
      runtimeType.hashCode;
}

extension $SearchJob$CompanyExtension on SearchJob$Company {
  SearchJob$Company copyWith(
      {String? name, List<SearchJob$Company$Locations>? locations}) {
    return SearchJob$Company(
        name: name ?? this.name, locations: locations ?? this.locations);
  }

  SearchJob$Company copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<List<SearchJob$Company$Locations>?>? locations}) {
    return SearchJob$Company(
        name: (name != null ? name.value : this.name),
        locations: (locations != null ? locations.value : this.locations));
  }
}

typedef SearchJob$Skills = List<SearchJob$Skills$Item>;

@JsonSerializable(explicitToJson: true)
class SearchJob$Skills$Item {
  SearchJob$Skills$Item({
    this.name,
    this.code,
  });

  factory SearchJob$Skills$Item.fromJson(Map<String, dynamic> json) =>
      _$SearchJob$Skills$ItemFromJson(json);

  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'code', includeIfNull: false)
  final String? code;
  static const fromJsonFactory = _$SearchJob$Skills$ItemFromJson;
  static const toJsonFactory = _$SearchJob$Skills$ItemToJson;
  Map<String, dynamic> toJson() => _$SearchJob$Skills$ItemToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchJob$Skills$Item &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      runtimeType.hashCode;
}

extension $SearchJob$Skills$ItemExtension on SearchJob$Skills$Item {
  SearchJob$Skills$Item copyWith({String? name, String? code}) {
    return SearchJob$Skills$Item(
        name: name ?? this.name, code: code ?? this.code);
  }

  SearchJob$Skills$Item copyWithWrapped(
      {Wrapped<String?>? name, Wrapped<String?>? code}) {
    return SearchJob$Skills$Item(
        name: (name != null ? name.value : this.name),
        code: (code != null ? code.value : this.code));
  }
}

@JsonSerializable(explicitToJson: true)
class SelectJob$Jobs {
  SelectJob$Jobs({
    this.jobId,
  });

  factory SelectJob$Jobs.fromJson(Map<String, dynamic> json) =>
      _$SelectJob$JobsFromJson(json);

  @JsonKey(name: 'jobId', includeIfNull: false)
  final String? jobId;
  static const fromJsonFactory = _$SelectJob$JobsFromJson;
  static const toJsonFactory = _$SelectJob$JobsToJson;
  Map<String, dynamic> toJson() => _$SelectJob$JobsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectJob$Jobs &&
            (identical(other.jobId, jobId) ||
                const DeepCollectionEquality().equals(other.jobId, jobId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobId) ^ runtimeType.hashCode;
}

extension $SelectJob$JobsExtension on SelectJob$Jobs {
  SelectJob$Jobs copyWith({String? jobId}) {
    return SelectJob$Jobs(jobId: jobId ?? this.jobId);
  }

  SelectJob$Jobs copyWithWrapped({Wrapped<String?>? jobId}) {
    return SelectJob$Jobs(jobId: (jobId != null ? jobId.value : this.jobId));
  }
}

@JsonSerializable(explicitToJson: true)
class SelectedJob$WorkExperience {
  SelectedJob$WorkExperience({
    required this.key,
    this.experience,
  });

  factory SelectedJob$WorkExperience.fromJson(Map<String, dynamic> json) =>
      _$SelectedJob$WorkExperienceFromJson(json);

  @JsonKey(name: 'key', includeIfNull: false)
  final String key;
  @JsonKey(name: 'experience', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? experience;
  static const fromJsonFactory = _$SelectedJob$WorkExperienceFromJson;
  static const toJsonFactory = _$SelectedJob$WorkExperienceToJson;
  Map<String, dynamic> toJson() => _$SelectedJob$WorkExperienceToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectedJob$WorkExperience &&
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

extension $SelectedJob$WorkExperienceExtension on SelectedJob$WorkExperience {
  SelectedJob$WorkExperience copyWith({String? key, List<Object>? experience}) {
    return SelectedJob$WorkExperience(
        key: key ?? this.key, experience: experience ?? this.experience);
  }

  SelectedJob$WorkExperience copyWithWrapped(
      {Wrapped<String>? key, Wrapped<List<Object>?>? experience}) {
    return SelectedJob$WorkExperience(
        key: (key != null ? key.value : this.key),
        experience: (experience != null ? experience.value : this.experience));
  }
}

@JsonSerializable(explicitToJson: true)
class SelectedJob$EmploymentInformation {
  SelectedJob$EmploymentInformation({
    required this.code,
    required this.name,
  });

  factory SelectedJob$EmploymentInformation.fromJson(
          Map<String, dynamic> json) =>
      _$SelectedJob$EmploymentInformationFromJson(json);

  @JsonKey(name: 'code', includeIfNull: false)
  final String code;
  @JsonKey(name: 'name', includeIfNull: false)
  final String name;
  static const fromJsonFactory = _$SelectedJob$EmploymentInformationFromJson;
  static const toJsonFactory = _$SelectedJob$EmploymentInformationToJson;
  Map<String, dynamic> toJson() =>
      _$SelectedJob$EmploymentInformationToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectedJob$EmploymentInformation &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $SelectedJob$EmploymentInformationExtension
    on SelectedJob$EmploymentInformation {
  SelectedJob$EmploymentInformation copyWith({String? code, String? name}) {
    return SelectedJob$EmploymentInformation(
        code: code ?? this.code, name: name ?? this.name);
  }

  SelectedJob$EmploymentInformation copyWithWrapped(
      {Wrapped<String>? code, Wrapped<String>? name}) {
    return SelectedJob$EmploymentInformation(
        code: (code != null ? code.value : this.code),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class SelectedJob$Compensation {
  SelectedJob$Compensation({
    this.code,
    required this.name,
    this.salaryInfo,
  });

  factory SelectedJob$Compensation.fromJson(Map<String, dynamic> json) =>
      _$SelectedJob$CompensationFromJson(json);

  @JsonKey(name: 'code', includeIfNull: false)
  final String? code;
  @JsonKey(name: 'name', includeIfNull: false)
  final String name;
  @JsonKey(name: 'salaryInfo', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? salaryInfo;
  static const fromJsonFactory = _$SelectedJob$CompensationFromJson;
  static const toJsonFactory = _$SelectedJob$CompensationToJson;
  Map<String, dynamic> toJson() => _$SelectedJob$CompensationToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectedJob$Compensation &&
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

extension $SelectedJob$CompensationExtension on SelectedJob$Compensation {
  SelectedJob$Compensation copyWith(
      {String? code, String? name, List<Object>? salaryInfo}) {
    return SelectedJob$Compensation(
        code: code ?? this.code,
        name: name ?? this.name,
        salaryInfo: salaryInfo ?? this.salaryInfo);
  }

  SelectedJob$Compensation copyWithWrapped(
      {Wrapped<String?>? code,
      Wrapped<String>? name,
      Wrapped<List<Object>?>? salaryInfo}) {
    return SelectedJob$Compensation(
        code: (code != null ? code.value : this.code),
        name: (name != null ? name.value : this.name),
        salaryInfo: (salaryInfo != null ? salaryInfo.value : this.salaryInfo));
  }
}

@JsonSerializable(explicitToJson: true)
class InitJob$Jobs {
  InitJob$Jobs({
    this.jobId,
  });

  factory InitJob$Jobs.fromJson(Map<String, dynamic> json) =>
      _$InitJob$JobsFromJson(json);

  @JsonKey(name: 'jobId', includeIfNull: false)
  final String? jobId;
  static const fromJsonFactory = _$InitJob$JobsFromJson;
  static const toJsonFactory = _$InitJob$JobsToJson;
  Map<String, dynamic> toJson() => _$InitJob$JobsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitJob$Jobs &&
            (identical(other.jobId, jobId) ||
                const DeepCollectionEquality().equals(other.jobId, jobId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobId) ^ runtimeType.hashCode;
}

extension $InitJob$JobsExtension on InitJob$Jobs {
  InitJob$Jobs copyWith({String? jobId}) {
    return InitJob$Jobs(jobId: jobId ?? this.jobId);
  }

  InitJob$Jobs copyWithWrapped({Wrapped<String?>? jobId}) {
    return InitJob$Jobs(jobId: (jobId != null ? jobId.value : this.jobId));
  }
}

@JsonSerializable(explicitToJson: true)
class InitJob$AdditionalFormData {
  InitJob$AdditionalFormData({
    this.submissionId,
    this.data,
  });

  factory InitJob$AdditionalFormData.fromJson(Map<String, dynamic> json) =>
      _$InitJob$AdditionalFormDataFromJson(json);

  @JsonKey(name: 'submissionId', includeIfNull: false)
  final String? submissionId;
  @JsonKey(name: 'data', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? data;
  static const fromJsonFactory = _$InitJob$AdditionalFormDataFromJson;
  static const toJsonFactory = _$InitJob$AdditionalFormDataToJson;
  Map<String, dynamic> toJson() => _$InitJob$AdditionalFormDataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitJob$AdditionalFormData &&
            (identical(other.submissionId, submissionId) ||
                const DeepCollectionEquality()
                    .equals(other.submissionId, submissionId)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(submissionId) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $InitJob$AdditionalFormDataExtension on InitJob$AdditionalFormData {
  InitJob$AdditionalFormData copyWith(
      {String? submissionId, List<Object>? data}) {
    return InitJob$AdditionalFormData(
        submissionId: submissionId ?? this.submissionId,
        data: data ?? this.data);
  }

  InitJob$AdditionalFormData copyWithWrapped(
      {Wrapped<String?>? submissionId, Wrapped<List<Object>?>? data}) {
    return InitJob$AdditionalFormData(
        submissionId:
            (submissionId != null ? submissionId.value : this.submissionId),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class InitJobResponse$AdditionalFormData {
  InitJobResponse$AdditionalFormData({
    this.submissionId,
    this.data,
  });

  factory InitJobResponse$AdditionalFormData.fromJson(
          Map<String, dynamic> json) =>
      _$InitJobResponse$AdditionalFormDataFromJson(json);

  @JsonKey(name: 'submissionId', includeIfNull: false)
  final String? submissionId;
  @JsonKey(name: 'data', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? data;
  static const fromJsonFactory = _$InitJobResponse$AdditionalFormDataFromJson;
  static const toJsonFactory = _$InitJobResponse$AdditionalFormDataToJson;
  Map<String, dynamic> toJson() =>
      _$InitJobResponse$AdditionalFormDataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitJobResponse$AdditionalFormData &&
            (identical(other.submissionId, submissionId) ||
                const DeepCollectionEquality()
                    .equals(other.submissionId, submissionId)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(submissionId) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $InitJobResponse$AdditionalFormDataExtension
    on InitJobResponse$AdditionalFormData {
  InitJobResponse$AdditionalFormData copyWith(
      {String? submissionId, List<Object>? data}) {
    return InitJobResponse$AdditionalFormData(
        submissionId: submissionId ?? this.submissionId,
        data: data ?? this.data);
  }

  InitJobResponse$AdditionalFormData copyWithWrapped(
      {Wrapped<String?>? submissionId, Wrapped<List<Object>?>? data}) {
    return InitJobResponse$AdditionalFormData(
        submissionId:
            (submissionId != null ? submissionId.value : this.submissionId),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class InitiatedJobs$WorkExperience {
  InitiatedJobs$WorkExperience({
    this.key,
    this.experience,
  });

  factory InitiatedJobs$WorkExperience.fromJson(Map<String, dynamic> json) =>
      _$InitiatedJobs$WorkExperienceFromJson(json);

  @JsonKey(name: 'key', includeIfNull: false)
  final String? key;
  @JsonKey(name: 'experience', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? experience;
  static const fromJsonFactory = _$InitiatedJobs$WorkExperienceFromJson;
  static const toJsonFactory = _$InitiatedJobs$WorkExperienceToJson;
  Map<String, dynamic> toJson() => _$InitiatedJobs$WorkExperienceToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitiatedJobs$WorkExperience &&
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

extension $InitiatedJobs$WorkExperienceExtension
    on InitiatedJobs$WorkExperience {
  InitiatedJobs$WorkExperience copyWith(
      {String? key, List<Object>? experience}) {
    return InitiatedJobs$WorkExperience(
        key: key ?? this.key, experience: experience ?? this.experience);
  }

  InitiatedJobs$WorkExperience copyWithWrapped(
      {Wrapped<String?>? key, Wrapped<List<Object>?>? experience}) {
    return InitiatedJobs$WorkExperience(
        key: (key != null ? key.value : this.key),
        experience: (experience != null ? experience.value : this.experience));
  }
}

@JsonSerializable(explicitToJson: true)
class InitiatedJobs$EmploymentInformation {
  InitiatedJobs$EmploymentInformation({
    this.code,
    this.name,
  });

  factory InitiatedJobs$EmploymentInformation.fromJson(
          Map<String, dynamic> json) =>
      _$InitiatedJobs$EmploymentInformationFromJson(json);

  @JsonKey(name: 'code', includeIfNull: false)
  final String? code;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  static const fromJsonFactory = _$InitiatedJobs$EmploymentInformationFromJson;
  static const toJsonFactory = _$InitiatedJobs$EmploymentInformationToJson;
  Map<String, dynamic> toJson() =>
      _$InitiatedJobs$EmploymentInformationToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitiatedJobs$EmploymentInformation &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $InitiatedJobs$EmploymentInformationExtension
    on InitiatedJobs$EmploymentInformation {
  InitiatedJobs$EmploymentInformation copyWith({String? code, String? name}) {
    return InitiatedJobs$EmploymentInformation(
        code: code ?? this.code, name: name ?? this.name);
  }

  InitiatedJobs$EmploymentInformation copyWithWrapped(
      {Wrapped<String?>? code, Wrapped<String?>? name}) {
    return InitiatedJobs$EmploymentInformation(
        code: (code != null ? code.value : this.code),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class InitiatedJobs$Compensation {
  InitiatedJobs$Compensation({
    this.code,
    this.name,
    this.salaryInfo,
  });

  factory InitiatedJobs$Compensation.fromJson(Map<String, dynamic> json) =>
      _$InitiatedJobs$CompensationFromJson(json);

  @JsonKey(name: 'code', includeIfNull: false)
  final String? code;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'salaryInfo', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? salaryInfo;
  static const fromJsonFactory = _$InitiatedJobs$CompensationFromJson;
  static const toJsonFactory = _$InitiatedJobs$CompensationToJson;
  Map<String, dynamic> toJson() => _$InitiatedJobs$CompensationToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitiatedJobs$Compensation &&
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

extension $InitiatedJobs$CompensationExtension on InitiatedJobs$Compensation {
  InitiatedJobs$Compensation copyWith(
      {String? code, String? name, List<Object>? salaryInfo}) {
    return InitiatedJobs$Compensation(
        code: code ?? this.code,
        name: name ?? this.name,
        salaryInfo: salaryInfo ?? this.salaryInfo);
  }

  InitiatedJobs$Compensation copyWithWrapped(
      {Wrapped<String?>? code,
      Wrapped<String?>? name,
      Wrapped<List<Object>?>? salaryInfo}) {
    return InitiatedJobs$Compensation(
        code: (code != null ? code.value : this.code),
        name: (name != null ? name.value : this.name),
        salaryInfo: (salaryInfo != null ? salaryInfo.value : this.salaryInfo));
  }
}

@JsonSerializable(explicitToJson: true)
class ConfirmJobResponse$AdditionalFormData {
  ConfirmJobResponse$AdditionalFormData({
    this.submissionId,
    this.data,
  });

  factory ConfirmJobResponse$AdditionalFormData.fromJson(
          Map<String, dynamic> json) =>
      _$ConfirmJobResponse$AdditionalFormDataFromJson(json);

  @JsonKey(name: 'submissionId', includeIfNull: false)
  final String? submissionId;
  @JsonKey(name: 'data', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? data;
  static const fromJsonFactory =
      _$ConfirmJobResponse$AdditionalFormDataFromJson;
  static const toJsonFactory = _$ConfirmJobResponse$AdditionalFormDataToJson;
  Map<String, dynamic> toJson() =>
      _$ConfirmJobResponse$AdditionalFormDataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmJobResponse$AdditionalFormData &&
            (identical(other.submissionId, submissionId) ||
                const DeepCollectionEquality()
                    .equals(other.submissionId, submissionId)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(submissionId) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $ConfirmJobResponse$AdditionalFormDataExtension
    on ConfirmJobResponse$AdditionalFormData {
  ConfirmJobResponse$AdditionalFormData copyWith(
      {String? submissionId, List<Object>? data}) {
    return ConfirmJobResponse$AdditionalFormData(
        submissionId: submissionId ?? this.submissionId,
        data: data ?? this.data);
  }

  ConfirmJobResponse$AdditionalFormData copyWithWrapped(
      {Wrapped<String?>? submissionId, Wrapped<List<Object>?>? data}) {
    return ConfirmJobResponse$AdditionalFormData(
        submissionId:
            (submissionId != null ? submissionId.value : this.submissionId),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class ConfirmedJob$WorkExperience {
  ConfirmedJob$WorkExperience({
    this.key,
    this.experience,
  });

  factory ConfirmedJob$WorkExperience.fromJson(Map<String, dynamic> json) =>
      _$ConfirmedJob$WorkExperienceFromJson(json);

  @JsonKey(name: 'key', includeIfNull: false)
  final String? key;
  @JsonKey(name: 'experience', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? experience;
  static const fromJsonFactory = _$ConfirmedJob$WorkExperienceFromJson;
  static const toJsonFactory = _$ConfirmedJob$WorkExperienceToJson;
  Map<String, dynamic> toJson() => _$ConfirmedJob$WorkExperienceToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmedJob$WorkExperience &&
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

extension $ConfirmedJob$WorkExperienceExtension on ConfirmedJob$WorkExperience {
  ConfirmedJob$WorkExperience copyWith(
      {String? key, List<Object>? experience}) {
    return ConfirmedJob$WorkExperience(
        key: key ?? this.key, experience: experience ?? this.experience);
  }

  ConfirmedJob$WorkExperience copyWithWrapped(
      {Wrapped<String?>? key, Wrapped<List<Object>?>? experience}) {
    return ConfirmedJob$WorkExperience(
        key: (key != null ? key.value : this.key),
        experience: (experience != null ? experience.value : this.experience));
  }
}

@JsonSerializable(explicitToJson: true)
class ConfirmedJob$EmploymentInformation {
  ConfirmedJob$EmploymentInformation({
    this.code,
    this.name,
  });

  factory ConfirmedJob$EmploymentInformation.fromJson(
          Map<String, dynamic> json) =>
      _$ConfirmedJob$EmploymentInformationFromJson(json);

  @JsonKey(name: 'code', includeIfNull: false)
  final String? code;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  static const fromJsonFactory = _$ConfirmedJob$EmploymentInformationFromJson;
  static const toJsonFactory = _$ConfirmedJob$EmploymentInformationToJson;
  Map<String, dynamic> toJson() =>
      _$ConfirmedJob$EmploymentInformationToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmedJob$EmploymentInformation &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $ConfirmedJob$EmploymentInformationExtension
    on ConfirmedJob$EmploymentInformation {
  ConfirmedJob$EmploymentInformation copyWith({String? code, String? name}) {
    return ConfirmedJob$EmploymentInformation(
        code: code ?? this.code, name: name ?? this.name);
  }

  ConfirmedJob$EmploymentInformation copyWithWrapped(
      {Wrapped<String?>? code, Wrapped<String?>? name}) {
    return ConfirmedJob$EmploymentInformation(
        code: (code != null ? code.value : this.code),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class ConfirmedJob$Compensation {
  ConfirmedJob$Compensation({
    this.code,
    this.name,
    this.salaryInfo,
  });

  factory ConfirmedJob$Compensation.fromJson(Map<String, dynamic> json) =>
      _$ConfirmedJob$CompensationFromJson(json);

  @JsonKey(name: 'code', includeIfNull: false)
  final String? code;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'salaryInfo', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? salaryInfo;
  static const fromJsonFactory = _$ConfirmedJob$CompensationFromJson;
  static const toJsonFactory = _$ConfirmedJob$CompensationToJson;
  Map<String, dynamic> toJson() => _$ConfirmedJob$CompensationToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmedJob$Compensation &&
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

extension $ConfirmedJob$CompensationExtension on ConfirmedJob$Compensation {
  ConfirmedJob$Compensation copyWith(
      {String? code, String? name, List<Object>? salaryInfo}) {
    return ConfirmedJob$Compensation(
        code: code ?? this.code,
        name: name ?? this.name,
        salaryInfo: salaryInfo ?? this.salaryInfo);
  }

  ConfirmedJob$Compensation copyWithWrapped(
      {Wrapped<String?>? code,
      Wrapped<String?>? name,
      Wrapped<List<Object>?>? salaryInfo}) {
    return ConfirmedJob$Compensation(
        code: (code != null ? code.value : this.code),
        name: (name != null ? name.value : this.name),
        salaryInfo: (salaryInfo != null ? salaryInfo.value : this.salaryInfo));
  }
}

@JsonSerializable(explicitToJson: true)
class JobStatusResponse$AdditionalFormData {
  JobStatusResponse$AdditionalFormData({
    this.submissionId,
    this.data,
  });

  factory JobStatusResponse$AdditionalFormData.fromJson(
          Map<String, dynamic> json) =>
      _$JobStatusResponse$AdditionalFormDataFromJson(json);

  @JsonKey(name: 'submissionId', includeIfNull: false)
  final String? submissionId;
  @JsonKey(name: 'data', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? data;
  static const fromJsonFactory = _$JobStatusResponse$AdditionalFormDataFromJson;
  static const toJsonFactory = _$JobStatusResponse$AdditionalFormDataToJson;
  Map<String, dynamic> toJson() =>
      _$JobStatusResponse$AdditionalFormDataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is JobStatusResponse$AdditionalFormData &&
            (identical(other.submissionId, submissionId) ||
                const DeepCollectionEquality()
                    .equals(other.submissionId, submissionId)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(submissionId) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $JobStatusResponse$AdditionalFormDataExtension
    on JobStatusResponse$AdditionalFormData {
  JobStatusResponse$AdditionalFormData copyWith(
      {String? submissionId, List<Object>? data}) {
    return JobStatusResponse$AdditionalFormData(
        submissionId: submissionId ?? this.submissionId,
        data: data ?? this.data);
  }

  JobStatusResponse$AdditionalFormData copyWithWrapped(
      {Wrapped<String?>? submissionId, Wrapped<List<Object>?>? data}) {
    return JobStatusResponse$AdditionalFormData(
        submissionId:
            (submissionId != null ? submissionId.value : this.submissionId),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class SearchMentorshipRequest$SessionTitle {
  SearchMentorshipRequest$SessionTitle({
    this.key,
  });

  factory SearchMentorshipRequest$SessionTitle.fromJson(
          Map<String, dynamic> json) =>
      _$SearchMentorshipRequest$SessionTitleFromJson(json);

  @JsonKey(name: 'key', includeIfNull: false)
  final String? key;
  static const fromJsonFactory = _$SearchMentorshipRequest$SessionTitleFromJson;
  static const toJsonFactory = _$SearchMentorshipRequest$SessionTitleToJson;
  Map<String, dynamic> toJson() =>
      _$SearchMentorshipRequest$SessionTitleToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchMentorshipRequest$SessionTitle &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(key) ^ runtimeType.hashCode;
}

extension $SearchMentorshipRequest$SessionTitleExtension
    on SearchMentorshipRequest$SessionTitle {
  SearchMentorshipRequest$SessionTitle copyWith({String? key}) {
    return SearchMentorshipRequest$SessionTitle(key: key ?? this.key);
  }

  SearchMentorshipRequest$SessionTitle copyWithWrapped(
      {Wrapped<String?>? key}) {
    return SearchMentorshipRequest$SessionTitle(
        key: (key != null ? key.value : this.key));
  }
}

@JsonSerializable(explicitToJson: true)
class SearchMentorshipRequest$Mentor {
  SearchMentorshipRequest$Mentor({
    this.name,
  });

  factory SearchMentorshipRequest$Mentor.fromJson(Map<String, dynamic> json) =>
      _$SearchMentorshipRequest$MentorFromJson(json);

  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  static const fromJsonFactory = _$SearchMentorshipRequest$MentorFromJson;
  static const toJsonFactory = _$SearchMentorshipRequest$MentorToJson;
  Map<String, dynamic> toJson() => _$SearchMentorshipRequest$MentorToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchMentorshipRequest$Mentor &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^ runtimeType.hashCode;
}

extension $SearchMentorshipRequest$MentorExtension
    on SearchMentorshipRequest$Mentor {
  SearchMentorshipRequest$Mentor copyWith({String? name}) {
    return SearchMentorshipRequest$Mentor(name: name ?? this.name);
  }

  SearchMentorshipRequest$Mentor copyWithWrapped({Wrapped<String?>? name}) {
    return SearchMentorshipRequest$Mentor(
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class MentorshipBilling$Time {
  MentorshipBilling$Time({
    this.timezone,
  });

  factory MentorshipBilling$Time.fromJson(Map<String, dynamic> json) =>
      _$MentorshipBilling$TimeFromJson(json);

  @JsonKey(name: 'timezone', includeIfNull: false)
  final String? timezone;
  static const fromJsonFactory = _$MentorshipBilling$TimeFromJson;
  static const toJsonFactory = _$MentorshipBilling$TimeToJson;
  Map<String, dynamic> toJson() => _$MentorshipBilling$TimeToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MentorshipBilling$Time &&
            (identical(other.timezone, timezone) ||
                const DeepCollectionEquality()
                    .equals(other.timezone, timezone)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(timezone) ^ runtimeType.hashCode;
}

extension $MentorshipBilling$TimeExtension on MentorshipBilling$Time {
  MentorshipBilling$Time copyWith({String? timezone}) {
    return MentorshipBilling$Time(timezone: timezone ?? this.timezone);
  }

  MentorshipBilling$Time copyWithWrapped({Wrapped<String?>? timezone}) {
    return MentorshipBilling$Time(
        timezone: (timezone != null ? timezone.value : this.timezone));
  }
}

typedef SearchScholarship$Categories = List<SearchScholarship$Categories$Item>;

@JsonSerializable(explicitToJson: true)
class SearchScholarship$Categories$Item {
  SearchScholarship$Categories$Item({
    this.code,
  });

  factory SearchScholarship$Categories$Item.fromJson(
          Map<String, dynamic> json) =>
      _$SearchScholarship$Categories$ItemFromJson(json);

  @JsonKey(name: 'code', includeIfNull: false)
  final String? code;
  static const fromJsonFactory = _$SearchScholarship$Categories$ItemFromJson;
  static const toJsonFactory = _$SearchScholarship$Categories$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$SearchScholarship$Categories$ItemToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchScholarship$Categories$Item &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^ runtimeType.hashCode;
}

extension $SearchScholarship$Categories$ItemExtension
    on SearchScholarship$Categories$Item {
  SearchScholarship$Categories$Item copyWith({String? code}) {
    return SearchScholarship$Categories$Item(code: code ?? this.code);
  }

  SearchScholarship$Categories$Item copyWithWrapped({Wrapped<String?>? code}) {
    return SearchScholarship$Categories$Item(
        code: (code != null ? code.value : this.code));
  }
}

@JsonSerializable(explicitToJson: true)
class SearchScholarship$FinStatus {
  SearchScholarship$FinStatus({
    this.familyIncome,
  });

  factory SearchScholarship$FinStatus.fromJson(Map<String, dynamic> json) =>
      _$SearchScholarship$FinStatusFromJson(json);

  @JsonKey(name: 'family_income', includeIfNull: false)
  final String? familyIncome;
  static const fromJsonFactory = _$SearchScholarship$FinStatusFromJson;
  static const toJsonFactory = _$SearchScholarship$FinStatusToJson;
  Map<String, dynamic> toJson() => _$SearchScholarship$FinStatusToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchScholarship$FinStatus &&
            (identical(other.familyIncome, familyIncome) ||
                const DeepCollectionEquality()
                    .equals(other.familyIncome, familyIncome)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(familyIncome) ^ runtimeType.hashCode;
}

extension $SearchScholarship$FinStatusExtension on SearchScholarship$FinStatus {
  SearchScholarship$FinStatus copyWith({String? familyIncome}) {
    return SearchScholarship$FinStatus(
        familyIncome: familyIncome ?? this.familyIncome);
  }

  SearchScholarship$FinStatus copyWithWrapped(
      {Wrapped<String?>? familyIncome}) {
    return SearchScholarship$FinStatus(
        familyIncome:
            (familyIncome != null ? familyIncome.value : this.familyIncome));
  }
}

typedef SearchScholarship$CasteCategory
    = List<SearchScholarship$CasteCategory$Item>;

@JsonSerializable(explicitToJson: true)
class SearchScholarship$CasteCategory$Item {
  SearchScholarship$CasteCategory$Item({
    this.caste,
  });

  factory SearchScholarship$CasteCategory$Item.fromJson(
          Map<String, dynamic> json) =>
      _$SearchScholarship$CasteCategory$ItemFromJson(json);

  @JsonKey(name: 'caste', includeIfNull: false)
  final String? caste;
  static const fromJsonFactory = _$SearchScholarship$CasteCategory$ItemFromJson;
  static const toJsonFactory = _$SearchScholarship$CasteCategory$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$SearchScholarship$CasteCategory$ItemToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchScholarship$CasteCategory$Item &&
            (identical(other.caste, caste) ||
                const DeepCollectionEquality().equals(other.caste, caste)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(caste) ^ runtimeType.hashCode;
}

extension $SearchScholarship$CasteCategory$ItemExtension
    on SearchScholarship$CasteCategory$Item {
  SearchScholarship$CasteCategory$Item copyWith({String? caste}) {
    return SearchScholarship$CasteCategory$Item(caste: caste ?? this.caste);
  }

  SearchScholarship$CasteCategory$Item copyWithWrapped(
      {Wrapped<String?>? caste}) {
    return SearchScholarship$CasteCategory$Item(
        caste: (caste != null ? caste.value : this.caste));
  }
}

typedef CourseDeepSearch$SearchParameters
    = List<CourseDeepSearch$SearchParameters$Item>;

@JsonSerializable(explicitToJson: true)
class CourseDeepSearch$SearchParameters$Item {
  CourseDeepSearch$SearchParameters$Item({
    this.name,
    this.value,
  });

  factory CourseDeepSearch$SearchParameters$Item.fromJson(
          Map<String, dynamic> json) =>
      _$CourseDeepSearch$SearchParameters$ItemFromJson(json);

  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'value', includeIfNull: false)
  final String? value;
  static const fromJsonFactory =
      _$CourseDeepSearch$SearchParameters$ItemFromJson;
  static const toJsonFactory = _$CourseDeepSearch$SearchParameters$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$CourseDeepSearch$SearchParameters$ItemToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CourseDeepSearch$SearchParameters$Item &&
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

extension $CourseDeepSearch$SearchParameters$ItemExtension
    on CourseDeepSearch$SearchParameters$Item {
  CourseDeepSearch$SearchParameters$Item copyWith(
      {String? name, String? value}) {
    return CourseDeepSearch$SearchParameters$Item(
        name: name ?? this.name, value: value ?? this.value);
  }

  CourseDeepSearch$SearchParameters$Item copyWithWrapped(
      {Wrapped<String?>? name, Wrapped<String?>? value}) {
    return CourseDeepSearch$SearchParameters$Item(
        name: (name != null ? name.value : this.name),
        value: (value != null ? value.value : this.value));
  }
}

@JsonSerializable(explicitToJson: true)
class InitCourse$AdditionalFormData {
  InitCourse$AdditionalFormData({
    this.submissionId,
    this.data,
  });

  factory InitCourse$AdditionalFormData.fromJson(Map<String, dynamic> json) =>
      _$InitCourse$AdditionalFormDataFromJson(json);

  @JsonKey(name: 'submissionId', includeIfNull: false)
  final String? submissionId;
  @JsonKey(name: 'data', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? data;
  static const fromJsonFactory = _$InitCourse$AdditionalFormDataFromJson;
  static const toJsonFactory = _$InitCourse$AdditionalFormDataToJson;
  Map<String, dynamic> toJson() => _$InitCourse$AdditionalFormDataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitCourse$AdditionalFormData &&
            (identical(other.submissionId, submissionId) ||
                const DeepCollectionEquality()
                    .equals(other.submissionId, submissionId)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(submissionId) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $InitCourse$AdditionalFormDataExtension
    on InitCourse$AdditionalFormData {
  InitCourse$AdditionalFormData copyWith(
      {String? submissionId, List<Object>? data}) {
    return InitCourse$AdditionalFormData(
        submissionId: submissionId ?? this.submissionId,
        data: data ?? this.data);
  }

  InitCourse$AdditionalFormData copyWithWrapped(
      {Wrapped<String?>? submissionId, Wrapped<List<Object>?>? data}) {
    return InitCourse$AdditionalFormData(
        submissionId:
            (submissionId != null ? submissionId.value : this.submissionId),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class InitCourseResponse$AdditionalFormData {
  InitCourseResponse$AdditionalFormData({
    this.submissionId,
    this.data,
  });

  factory InitCourseResponse$AdditionalFormData.fromJson(
          Map<String, dynamic> json) =>
      _$InitCourseResponse$AdditionalFormDataFromJson(json);

  @JsonKey(name: 'submissionId', includeIfNull: false)
  final String? submissionId;
  @JsonKey(name: 'data', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? data;
  static const fromJsonFactory =
      _$InitCourseResponse$AdditionalFormDataFromJson;
  static const toJsonFactory = _$InitCourseResponse$AdditionalFormDataToJson;
  Map<String, dynamic> toJson() =>
      _$InitCourseResponse$AdditionalFormDataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitCourseResponse$AdditionalFormData &&
            (identical(other.submissionId, submissionId) ||
                const DeepCollectionEquality()
                    .equals(other.submissionId, submissionId)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(submissionId) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $InitCourseResponse$AdditionalFormDataExtension
    on InitCourseResponse$AdditionalFormData {
  InitCourseResponse$AdditionalFormData copyWith(
      {String? submissionId, List<Object>? data}) {
    return InitCourseResponse$AdditionalFormData(
        submissionId: submissionId ?? this.submissionId,
        data: data ?? this.data);
  }

  InitCourseResponse$AdditionalFormData copyWithWrapped(
      {Wrapped<String?>? submissionId, Wrapped<List<Object>?>? data}) {
    return InitCourseResponse$AdditionalFormData(
        submissionId:
            (submissionId != null ? submissionId.value : this.submissionId),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class ConfirmCourseResponse$AdditionalFormData {
  ConfirmCourseResponse$AdditionalFormData({
    this.submissionId,
    this.data,
  });

  factory ConfirmCourseResponse$AdditionalFormData.fromJson(
          Map<String, dynamic> json) =>
      _$ConfirmCourseResponse$AdditionalFormDataFromJson(json);

  @JsonKey(name: 'submissionId', includeIfNull: false)
  final String? submissionId;
  @JsonKey(name: 'data', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? data;
  static const fromJsonFactory =
      _$ConfirmCourseResponse$AdditionalFormDataFromJson;
  static const toJsonFactory = _$ConfirmCourseResponse$AdditionalFormDataToJson;
  Map<String, dynamic> toJson() =>
      _$ConfirmCourseResponse$AdditionalFormDataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmCourseResponse$AdditionalFormData &&
            (identical(other.submissionId, submissionId) ||
                const DeepCollectionEquality()
                    .equals(other.submissionId, submissionId)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(submissionId) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $ConfirmCourseResponse$AdditionalFormDataExtension
    on ConfirmCourseResponse$AdditionalFormData {
  ConfirmCourseResponse$AdditionalFormData copyWith(
      {String? submissionId, List<Object>? data}) {
    return ConfirmCourseResponse$AdditionalFormData(
        submissionId: submissionId ?? this.submissionId,
        data: data ?? this.data);
  }

  ConfirmCourseResponse$AdditionalFormData copyWithWrapped(
      {Wrapped<String?>? submissionId, Wrapped<List<Object>?>? data}) {
    return ConfirmCourseResponse$AdditionalFormData(
        submissionId:
            (submissionId != null ? submissionId.value : this.submissionId),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class CourseStatusResponse$AdditionalFormData {
  CourseStatusResponse$AdditionalFormData({
    this.submissionId,
    this.data,
  });

  factory CourseStatusResponse$AdditionalFormData.fromJson(
          Map<String, dynamic> json) =>
      _$CourseStatusResponse$AdditionalFormDataFromJson(json);

  @JsonKey(name: 'submissionId', includeIfNull: false)
  final String? submissionId;
  @JsonKey(name: 'data', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? data;
  static const fromJsonFactory =
      _$CourseStatusResponse$AdditionalFormDataFromJson;
  static const toJsonFactory = _$CourseStatusResponse$AdditionalFormDataToJson;
  Map<String, dynamic> toJson() =>
      _$CourseStatusResponse$AdditionalFormDataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CourseStatusResponse$AdditionalFormData &&
            (identical(other.submissionId, submissionId) ||
                const DeepCollectionEquality()
                    .equals(other.submissionId, submissionId)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(submissionId) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $CourseStatusResponse$AdditionalFormDataExtension
    on CourseStatusResponse$AdditionalFormData {
  CourseStatusResponse$AdditionalFormData copyWith(
      {String? submissionId, List<Object>? data}) {
    return CourseStatusResponse$AdditionalFormData(
        submissionId: submissionId ?? this.submissionId,
        data: data ?? this.data);
  }

  CourseStatusResponse$AdditionalFormData copyWithWrapped(
      {Wrapped<String?>? submissionId, Wrapped<List<Object>?>? data}) {
    return CourseStatusResponse$AdditionalFormData(
        submissionId:
            (submissionId != null ? submissionId.value : this.submissionId),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Acknowledgement$Message {
  Acknowledgement$Message({
    this.ack,
  });

  factory Acknowledgement$Message.fromJson(Map<String, dynamic> json) =>
      _$Acknowledgement$MessageFromJson(json);

  @JsonKey(name: 'ack', includeIfNull: false)
  final Acknowledgement$Message$Ack? ack;
  static const fromJsonFactory = _$Acknowledgement$MessageFromJson;
  static const toJsonFactory = _$Acknowledgement$MessageToJson;
  Map<String, dynamic> toJson() => _$Acknowledgement$MessageToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Acknowledgement$Message &&
            (identical(other.ack, ack) ||
                const DeepCollectionEquality().equals(other.ack, ack)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ack) ^ runtimeType.hashCode;
}

extension $Acknowledgement$MessageExtension on Acknowledgement$Message {
  Acknowledgement$Message copyWith({Acknowledgement$Message$Ack? ack}) {
    return Acknowledgement$Message(ack: ack ?? this.ack);
  }

  Acknowledgement$Message copyWithWrapped(
      {Wrapped<Acknowledgement$Message$Ack?>? ack}) {
    return Acknowledgement$Message(ack: (ack != null ? ack.value : this.ack));
  }
}

typedef SearchJob$Company$Locations = List<SearchJob$Company$Locations$Item>;

@JsonSerializable(explicitToJson: true)
class SearchJob$Company$Locations$Item {
  SearchJob$Company$Locations$Item({
    this.city,
  });

  factory SearchJob$Company$Locations$Item.fromJson(
          Map<String, dynamic> json) =>
      _$SearchJob$Company$Locations$ItemFromJson(json);

  @JsonKey(name: 'city', includeIfNull: false)
  final String? city;
  static const fromJsonFactory = _$SearchJob$Company$Locations$ItemFromJson;
  static const toJsonFactory = _$SearchJob$Company$Locations$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$SearchJob$Company$Locations$ItemToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchJob$Company$Locations$Item &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(city) ^ runtimeType.hashCode;
}

extension $SearchJob$Company$Locations$ItemExtension
    on SearchJob$Company$Locations$Item {
  SearchJob$Company$Locations$Item copyWith({String? city}) {
    return SearchJob$Company$Locations$Item(city: city ?? this.city);
  }

  SearchJob$Company$Locations$Item copyWithWrapped({Wrapped<String?>? city}) {
    return SearchJob$Company$Locations$Item(
        city: (city != null ? city.value : this.city));
  }
}

@JsonSerializable(explicitToJson: true)
class Acknowledgement$Message$Ack {
  Acknowledgement$Message$Ack({
    this.status,
  });

  factory Acknowledgement$Message$Ack.fromJson(Map<String, dynamic> json) =>
      _$Acknowledgement$Message$AckFromJson(json);

  @JsonKey(
    name: 'status',
    includeIfNull: false,
    toJson: acknowledgement$Message$AckStatusToJson,
    fromJson: acknowledgement$Message$AckStatusFromJson,
  )
  final enums.Acknowledgement$Message$AckStatus? status;
  static const fromJsonFactory = _$Acknowledgement$Message$AckFromJson;
  static const toJsonFactory = _$Acknowledgement$Message$AckToJson;
  Map<String, dynamic> toJson() => _$Acknowledgement$Message$AckToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Acknowledgement$Message$Ack &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^ runtimeType.hashCode;
}

extension $Acknowledgement$Message$AckExtension on Acknowledgement$Message$Ack {
  Acknowledgement$Message$Ack copyWith(
      {enums.Acknowledgement$Message$AckStatus? status}) {
    return Acknowledgement$Message$Ack(status: status ?? this.status);
  }

  Acknowledgement$Message$Ack copyWithWrapped(
      {Wrapped<enums.Acknowledgement$Message$AckStatus?>? status}) {
    return Acknowledgement$Message$Ack(
        status: (status != null ? status.value : this.status));
  }
}

String? acknowledgement$Message$AckStatusToJson(
    enums.Acknowledgement$Message$AckStatus?
        acknowledgement$Message$AckStatus) {
  return acknowledgement$Message$AckStatus?.value;
}

enums.Acknowledgement$Message$AckStatus
    acknowledgement$Message$AckStatusFromJson(
  Object? acknowledgement$Message$AckStatus, [
  enums.Acknowledgement$Message$AckStatus? defaultValue,
]) {
  return enums.Acknowledgement$Message$AckStatus.values.firstWhereOrNull(
          (e) => e.value == acknowledgement$Message$AckStatus) ??
      defaultValue ??
      enums.Acknowledgement$Message$AckStatus.swaggerGeneratedUnknown;
}

List<String> acknowledgement$Message$AckStatusListToJson(
    List<enums.Acknowledgement$Message$AckStatus>?
        acknowledgement$Message$AckStatus) {
  if (acknowledgement$Message$AckStatus == null) {
    return [];
  }

  return acknowledgement$Message$AckStatus.map((e) => e.value!).toList();
}

List<enums.Acknowledgement$Message$AckStatus>
    acknowledgement$Message$AckStatusListFromJson(
  List? acknowledgement$Message$AckStatus, [
  List<enums.Acknowledgement$Message$AckStatus>? defaultValue,
]) {
  if (acknowledgement$Message$AckStatus == null) {
    return defaultValue ?? [];
  }

  return acknowledgement$Message$AckStatus
      .map((e) => acknowledgement$Message$AckStatusFromJson(e.toString()))
      .toList();
}

List<enums.Acknowledgement$Message$AckStatus>?
    acknowledgement$Message$AckStatusNullableListFromJson(
  List? acknowledgement$Message$AckStatus, [
  List<enums.Acknowledgement$Message$AckStatus>? defaultValue,
]) {
  if (acknowledgement$Message$AckStatus == null) {
    return defaultValue;
  }

  return acknowledgement$Message$AckStatus
      .map((e) => acknowledgement$Message$AckStatusFromJson(e.toString()))
      .toList();
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
