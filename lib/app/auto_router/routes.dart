part of 'routes_imports.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: HomeViewRoute.page,
          path: HOME,
        ),
        AutoRoute(
          page: AssetsViewRoute.page,
          path: ASSETSID,
        ),
      ];
}
