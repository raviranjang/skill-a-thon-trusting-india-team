// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobs-filter-object.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class JobsFilterObject extends _JobsFilterObject
    with RealmEntity, RealmObjectBase, RealmObject {
  JobsFilterObject({
    String? location,
    Iterable<String> skills = const [],
    Iterable<int> experienceRangeInYears = const [],
  }) {
    RealmObjectBase.set(this, 'location', location);
    RealmObjectBase.set<RealmList<String>>(
        this, 'skills', RealmList<String>(skills));
    RealmObjectBase.set<RealmList<int>>(
        this, 'experienceRangeInYears', RealmList<int>(experienceRangeInYears));
  }

  JobsFilterObject._();

  @override
  RealmList<String> get skills =>
      RealmObjectBase.get<String>(this, 'skills') as RealmList<String>;
  @override
  set skills(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  String? get location =>
      RealmObjectBase.get<String>(this, 'location') as String?;
  @override
  set location(String? value) => RealmObjectBase.set(this, 'location', value);

  @override
  RealmList<int> get experienceRangeInYears =>
      RealmObjectBase.get<int>(this, 'experienceRangeInYears')
          as RealmList<int>;
  @override
  set experienceRangeInYears(covariant RealmList<int> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<JobsFilterObject>> get changes =>
      RealmObjectBase.getChanges<JobsFilterObject>(this);

  @override
  JobsFilterObject freeze() =>
      RealmObjectBase.freezeObject<JobsFilterObject>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(JobsFilterObject._);
    return const SchemaObject(
        ObjectType.realmObject, JobsFilterObject, 'JobsFilterObject', [
      SchemaProperty('skills', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('location', RealmPropertyType.string, optional: true),
      SchemaProperty('experienceRangeInYears', RealmPropertyType.int,
          collectionType: RealmCollectionType.list),
    ]);
  }
}
