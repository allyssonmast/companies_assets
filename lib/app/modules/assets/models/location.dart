import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable()
@collection
class Location {
  Location();
  Id ?idLocation = Isar.autoIncrement;
  late String id;
  late String name;

  String? parentId;

  final parentLocation = IsarLink<Location>();

  @Backlink(to: 'parentLocation')
  final subLocations = IsarLinks<Location>();

  Map<String, dynamic> toJson() => _$LocationToJson(this);

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
