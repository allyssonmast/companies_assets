import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../modules/assets/models/asset.dart';
import '../modules/assets/models/location.dart';

class IsarManager {
  static final Map<String, Isar> _isarInstances = {};

  static Future<Isar> getIsarInstance(String dbName) async {
    if (_isarInstances.containsKey(dbName)) {
      return _isarInstances[dbName]!;
    } else {
      final dir = await getApplicationDocumentsDirectory();
      final isarInstance = await Isar.open(
        [AssetSchema, LocationSchema],
        directory: "${dir.path}/$dbName",
        name: dbName,
      );
      _isarInstances[dbName] = isarInstance;
      return isarInstance;
    }
  }

  static void closeIsarInstance(String dbName) {
    if (_isarInstances.containsKey(dbName)) {
      _isarInstances[dbName]!.close();
      _isarInstances.remove(dbName);
    }
  }

  static void closeAll() {
    _isarInstances.forEach((key, value) {
      value.close();
    });
    _isarInstances.clear();
  }
}
