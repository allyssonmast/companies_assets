import '../../auto_router/routes_imports.dart';

class NavigationService {
  final AppRouter _appRouter = AppRouter();

  AppRouter get router => _appRouter;

  Future<void> navigateTo(String routeName, {Object? arguments}) {
    return _appRouter.pushNamed(routeName);
  }

  void goBack() {
    _appRouter.maybePop();
  }
}
