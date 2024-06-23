import 'package:isar/isar.dart';
import 'location.dart';

part 'asset.g.dart';

enum SensorType { energy, vibration }
enum Status { operating, alert }

@collection
class Asset {
  Id id = Isar.autoIncrement;

  late String name;

  @Enumerated(EnumType.name)
  SensorType? sensorType;

  @Enumerated(EnumType.name)
  late Status status;

  String? locationId;
  String? parentId;

  final location = IsarLink<Location>();
  final parent = IsarLink<Asset>();

  @Backlink(to: 'parent')
  final childAssets = IsarLinks<Asset>();
}
