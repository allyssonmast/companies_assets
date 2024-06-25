// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:companies_assets/app/modules/assets/views/assets_view.dart'
    as _i1;
import 'package:companies_assets/app/modules/config/views/config_view.dart'
    as _i2;
import 'package:companies_assets/app/modules/dashboard/dashboard_page.dart'
    as _i3;
import 'package:companies_assets/app/modules/home/views/home_view.dart' as _i4;
import 'package:companies_assets/app/modules/new_assset/views/new_assset_view.dart'
    as _i5;
import 'package:flutter/material.dart' as _i7;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    AssetsViewRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<AssetsViewRouteArgs>(
          orElse: () =>
              AssetsViewRouteArgs(companyId: pathParams.optString('id')));
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AssetsView(
          companyId: args.companyId,
          key: args.key,
        ),
      );
    },
    ConfigViewRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ConfigView(),
      );
    },
    DashboardPageRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DashboardPage(),
      );
    },
    HomeViewRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomeView(),
      );
    },
    NewAsssetViewRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.NewAsssetView(),
      );
    },
  };
}

/// generated route for
/// [_i1.AssetsView]
class AssetsViewRoute extends _i6.PageRouteInfo<AssetsViewRouteArgs> {
  AssetsViewRoute({
    String? companyId,
    _i7.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          AssetsViewRoute.name,
          args: AssetsViewRouteArgs(
            companyId: companyId,
            key: key,
          ),
          rawPathParams: {'id': companyId},
          initialChildren: children,
        );

  static const String name = 'AssetsViewRoute';

  static const _i6.PageInfo<AssetsViewRouteArgs> page =
      _i6.PageInfo<AssetsViewRouteArgs>(name);
}

class AssetsViewRouteArgs {
  const AssetsViewRouteArgs({
    this.companyId,
    this.key,
  });

  final String? companyId;

  final _i7.Key? key;

  @override
  String toString() {
    return 'AssetsViewRouteArgs{companyId: $companyId, key: $key}';
  }
}

/// generated route for
/// [_i2.ConfigView]
class ConfigViewRoute extends _i6.PageRouteInfo<void> {
  const ConfigViewRoute({List<_i6.PageRouteInfo>? children})
      : super(
          ConfigViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConfigViewRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DashboardPage]
class DashboardPageRoute extends _i6.PageRouteInfo<void> {
  const DashboardPageRoute({List<_i6.PageRouteInfo>? children})
      : super(
          DashboardPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardPageRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomeView]
class HomeViewRoute extends _i6.PageRouteInfo<void> {
  const HomeViewRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeViewRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.NewAsssetView]
class NewAsssetViewRoute extends _i6.PageRouteInfo<void> {
  const NewAsssetViewRoute({List<_i6.PageRouteInfo>? children})
      : super(
          NewAsssetViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewAsssetViewRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
