import 'package:isar/isar.dart';
import 'location.dart';
import 'package:json_annotation/json_annotation.dart';

part 'asset.g.dart';

enum SensorType { energy, vibration }
enum Status { operating, alert }

@JsonSerializable()
@collection
class Asset {

  Id? idUser = Isar.autoIncrement;

  late String id;

  late String name;

  @Enumerated(EnumType.name)
  SensorType? sensorType;

  @Enumerated(EnumType.name)
  Status? status;

  String? locationId;
  String? parentId;

  final location = IsarLink<Location>();
  final parent = IsarLink<Asset>();

  @Backlink(to: 'parent')
  final childAssets = IsarLinks<Asset>();

  Asset();
  factory Asset.fromJson(Map<String, dynamic> json) =>
      _$AssetFromJson(json);

  Map<String, dynamic> toJson() => _$AssetToJson(this);

}
