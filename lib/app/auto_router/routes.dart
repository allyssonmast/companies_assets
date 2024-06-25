part of 'routes_imports.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: DashboardPageRoute.page,
          path: DASHBOARD,
          children: [
            AutoRoute(
              page: HomeViewRoute.page,
              initial: true,
              path: HOME,
            ),
            AutoRoute(
              page: NewAsssetViewRoute.page,
              path: NEWASSET,
            ),
            AutoRoute(
              page: ConfigViewRoute.page,
              path: CONFIG,
            ),
          ],
        ),
        AutoRoute(
          page: AssetsViewRoute.page,
          path: ASSETSID,
        ),
      ];
}
