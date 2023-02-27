import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:realm/realm.dart';
import 'package:dsep_reference_flutter/local_models/realm/jobs-filter-object.dart';
import 'package:dsep_reference_flutter/local_models/realm/courses-filter-object.dart';

class RealmDBService {
  static final RealmDBService _realmDBService = new RealmDBService._internal();
  Realm? _realm;
  factory RealmDBService() {
    return _realmDBService;
  }
  RealmDBService._internal() {
    var config = Configuration.local([
      JobsFilterObject.schema,
      CoursesFilterObject.schema,
    ]);
    _realm = Realm(config);
  }
  Realm? get db => _realm;
}
