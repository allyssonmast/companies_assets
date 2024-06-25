// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../modules/assets/controllers/assets_controller.dart' as _i6;
import '../modules/assets/repository/repository.dart' as _i5;
import '../utils/filter_nodes.dart' as _i3;
import '../utils/json_converts/tree_data_service.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.FilterNodes>(() => _i3.FilterNodes());
    gh.factory<_i4.TreeDataConvert>(() => _i4.TreeDataConvert());
    gh.factory<_i5.Repository>(() => _i5.Repository(gh<_i4.TreeDataConvert>()));
    gh.factory<_i6.AssetsController>(() => _i6.AssetsController(
          gh<_i5.Repository>(),
          gh<_i3.FilterNodes>(),
        ));
    return this;
  }
}
