// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i4;

import '../modules/assets/controllers/assets_controller.dart' as _i7;
import '../modules/assets/repository/repository.dart' as _i6;
import '../utils/filter_nodes.dart' as _i3;
import '../utils/json_converts/TreeDataService.dart' as _i5;
import 'module.dart' as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final databaseModule = _$DatabaseModule();
    gh.factory<_i3.FilterNodes>(() => _i3.FilterNodes());
    await gh.factoryAsync<_i4.Isar>(
      () => databaseModule.provideIsar(),
      preResolve: true,
    );
    gh.factory<_i5.TreeDataConvert>(() => _i5.TreeDataConvert());
    gh.factory<_i6.Repository>(() => _i6.Repository(gh<_i5.TreeDataConvert>()));
    gh.factory<_i7.AssetsController>(() => _i7.AssetsController(
          gh<_i6.Repository>(),
          gh<_i3.FilterNodes>(),
        ));
    return this;
  }
}

class _$DatabaseModule extends _i8.DatabaseModule {}
