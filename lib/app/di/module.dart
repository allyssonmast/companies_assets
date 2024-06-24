import 'package:companies_assets/app/modules/assets/models/asset.dart';
import 'package:companies_assets/app/modules/assets/models/location.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

@module
abstract class DatabaseModule {
  @preResolve
  Future<Isar> provideIsar() async {
    final dir = await getApplicationDocumentsDirectory();
    return await Isar.open(
      [AssetSchema, LocationSchema],
      directory: dir.path,
      name: 'apex'
    );
  }
}
