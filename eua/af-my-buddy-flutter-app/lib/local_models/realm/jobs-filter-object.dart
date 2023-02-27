import 'package:realm/realm.dart';
part 'jobs-filter-object.g.dart';

@RealmModel()
class _JobsFilterObject {
  List<String> skills = [];
  String? location;
  List<int> experienceRangeInYears = [];
}
