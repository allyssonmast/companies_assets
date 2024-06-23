import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

import '../models/asset.dart';
import '../models/location.dart';

class Repository {
  late Isar _isar;

  Repository() {
    _initIsar();
  }

  Future<void> _initIsar() async {
    final dir = await getApplicationDocumentsDirectory();
    _isar = await Isar.open(
      [AssetSchema, LocationSchema],
      directory: dir.path,
    );
  }

  Future<void> loadCompanyData(String companyName) async {
    final assetsJson =
    await rootBundle.loadString('assets/${companyName}_assets.json');
    final locationsJson =
    await rootBundle.loadString('assets/${companyName}_locations.json');

    List assets = jsonDecode(assetsJson);
    List locations = jsonDecode(locationsJson);

    await _isar.writeTxn(() async {
      for (var location in locations) {
        var existingLocation = await _isar.locations
            .where()
            .filter()
            .idEqualTo(location['id'])
            .findFirst();
        if (existingLocation == null) {
          await _isar.locations.put(Location()
            ..id = location['id']
            ..name = location['name']
            ..parentId = location['parentId']);
        }
      }

      for (var asset in assets) {
        var existingAsset = await _isar.assets
            .where()
            .filter()
            .idEqualTo(asset['id'])
            .findFirst();
        if (existingAsset == null) {
          await _isar.assets.put(Asset()
            ..id = asset['id']
            ..name = asset['name']
            ..locationId = asset['locationId']
            ..parentId = asset['parentId']
            ..sensorType = asset['sensorType'] != null
                ? SensorType.values.byName(asset['sensorType'])
                : null
            ..status = Status.values.byName(asset['status']));
        }
      }
    });
  }

  Future<List<Asset>> fetchAssets() async {
    return await _isar.assets.where().findAll();
  }

  Future<List<Location>> fetchLocations() async {
    return await _isar.locations.where().findAll();
  }

  Future<void> addNewAsset(Asset newAsset) async {
    await _isar.writeTxn(() async {
      await _isar.assets.put(newAsset);
    });
  }

  Future<void> addNewLocation(Location newLocation) async {
    await _isar.writeTxn(() async {
      await _isar.locations.put(newLocation);
    });
  }
}
