import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

import '../../../utils/json_converts/TreeDataService.dart';
import '../models/asset.dart';
import '../models/location.dart';
import '../models/tree_node.dart';

@injectable
class Repository {
  final Isar _isar;
  final TreeDataConvert convert;

  Repository(this._isar, this.convert);

  Future<List<NodeTree>> getData(String companyName) async {
    final locationsJson =
        await rootBundle.loadString('assets/${companyName}_locations.json');
    final assetsJson =
        await rootBundle.loadString('assets/${companyName}_assets.json');

    final List<dynamic> locations = json.decode(locationsJson);
    final List<dynamic> assets = json.decode(assetsJson);

    return convert.buildTree(locations, assets);
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

  Future<void> importAssetsFromJson() async {
    final assetFiles = [
      'assets/apex_assets.json',
      'assets/jaguar_assets.json',
      'assets/tobias_assets.json',
    ];

    for (final file in assetFiles) {
      final jsonString = await rootBundle.loadString(file);
      final List<dynamic> jsonData = json.decode(jsonString);
      final assets = jsonData.map((data) => Asset.fromJson(data)).toList();

      await _isar.writeTxn(() async {
        await _isar.assets.putAll(assets);
      });
    }
  }

  Future<void> importLocationsFromJson() async {
    final locationFiles = [
      'assets/apex_locations.json',
      'assets/jaguar_locations.json',
      'assets/tobias_locations.json',
    ];

    for (final file in locationFiles) {
      final jsonString = await rootBundle.loadString(file);
      final List<dynamic> jsonData = json.decode(jsonString);
      final locations =
          jsonData.map((data) => Location.fromJson(data)).toList();

      await _isar.writeTxn(() async {
        await _isar.locations.putAll(locations);
      });
    }
  }
}
