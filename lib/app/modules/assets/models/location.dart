import 'package:isar/isar.dart';

part 'location.g.dart';

@collection
class Location {
  Id id = Isar.autoIncrement;

  late String name;

  String? parentId;

  final parentLocation = IsarLink<Location>();

  @Backlink(to: 'parentLocation')
  final subLocations = IsarLinks<Location>();
}
