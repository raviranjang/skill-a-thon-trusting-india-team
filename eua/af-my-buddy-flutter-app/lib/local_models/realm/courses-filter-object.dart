import 'package:realm/realm.dart';
part 'courses-filter-object.g.dart';

@RealmModel()
class _CoursesFilterObject {
  String? apiEndpoint;
  String? mode;
  int? geofencesLastLoadedAt;
  int? geofencesLastUpdatedAt;
}
