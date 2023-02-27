// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courses-filter-object.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class CoursesFilterObject extends _CoursesFilterObject
    with RealmEntity, RealmObjectBase, RealmObject {
  CoursesFilterObject({
    String? apiEndpoint,
    String? mode,
    int? geofencesLastLoadedAt,
    int? geofencesLastUpdatedAt,
  }) {
    RealmObjectBase.set(this, 'apiEndpoint', apiEndpoint);
    RealmObjectBase.set(this, 'mode', mode);
    RealmObjectBase.set(this, 'geofencesLastLoadedAt', geofencesLastLoadedAt);
    RealmObjectBase.set(this, 'geofencesLastUpdatedAt', geofencesLastUpdatedAt);
  }

  CoursesFilterObject._();

  @override
  String? get apiEndpoint =>
      RealmObjectBase.get<String>(this, 'apiEndpoint') as String?;
  @override
  set apiEndpoint(String? value) =>
      RealmObjectBase.set(this, 'apiEndpoint', value);

  @override
  String? get mode => RealmObjectBase.get<String>(this, 'mode') as String?;
  @override
  set mode(String? value) => RealmObjectBase.set(this, 'mode', value);

  @override
  int? get geofencesLastLoadedAt =>
      RealmObjectBase.get<int>(this, 'geofencesLastLoadedAt') as int?;
  @override
  set geofencesLastLoadedAt(int? value) =>
      RealmObjectBase.set(this, 'geofencesLastLoadedAt', value);

  @override
  int? get geofencesLastUpdatedAt =>
      RealmObjectBase.get<int>(this, 'geofencesLastUpdatedAt') as int?;
  @override
  set geofencesLastUpdatedAt(int? value) =>
      RealmObjectBase.set(this, 'geofencesLastUpdatedAt', value);

  @override
  Stream<RealmObjectChanges<CoursesFilterObject>> get changes =>
      RealmObjectBase.getChanges<CoursesFilterObject>(this);

  @override
  CoursesFilterObject freeze() =>
      RealmObjectBase.freezeObject<CoursesFilterObject>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(CoursesFilterObject._);
    return const SchemaObject(
        ObjectType.realmObject, CoursesFilterObject, 'CoursesFilterObject', [
      SchemaProperty('apiEndpoint', RealmPropertyType.string, optional: true),
      SchemaProperty('mode', RealmPropertyType.string, optional: true),
      SchemaProperty('geofencesLastLoadedAt', RealmPropertyType.int,
          optional: true),
      SchemaProperty('geofencesLastUpdatedAt', RealmPropertyType.int,
          optional: true),
    ]);
  }
}
