// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:companies_assets/app/modules/assets/views/assets_view.dart'
    as _i1;
import 'package:companies_assets/app/modules/home/views/home_view.dart' as _i2;
import 'package:flutter/material.dart' as _i4;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    AssetsViewRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<AssetsViewRouteArgs>(
          orElse: () =>
              AssetsViewRouteArgs(companyId: pathParams.optString('id')));
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AssetsView(
          companyId: args.companyId,
          key: args.key,
        ),
      );
    },
    HomeViewRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeView(),
      );
    },
  };
}

/// generated route for
/// [_i1.AssetsView]
class AssetsViewRoute extends _i3.PageRouteInfo<AssetsViewRouteArgs> {
  AssetsViewRoute({
    String? companyId,
    _i4.Key? key,
    List<_i3.PageRouteInfo>? children,
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

  static const _i3.PageInfo<AssetsViewRouteArgs> page =
      _i3.PageInfo<AssetsViewRouteArgs>(name);
}

class AssetsViewRouteArgs {
  const AssetsViewRouteArgs({
    this.companyId,
    this.key,
  });

  final String? companyId;

  final _i4.Key? key;

  @override
  String toString() {
    return 'AssetsViewRouteArgs{companyId: $companyId, key: $key}';
  }
}

/// generated route for
/// [_i2.HomeView]
class HomeViewRoute extends _i3.PageRouteInfo<void> {
  const HomeViewRoute({List<_i3.PageRouteInfo>? children})
      : super(
          HomeViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeViewRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
