import 'package:get/get.dart';

import '../modules/assets/bindings/assets_binding.dart';
import '../modules/assets/views/assets_view.dart';
import '../modules/config/bindings/config_binding.dart';
import '../modules/config/views/config_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/new_assset/bindings/new_assset_binding.dart';
import '../modules/new_assset/views/new_assset_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ASSETS,
      page: () => const AssetsView(),
      binding: AssetsBinding(),
    ),
    GetPage(
      name: _Paths.NEW_ASSSET,
      page: () => const NewAsssetView(),
      binding: NewAsssetBinding(),
    ),
    GetPage(
      name: _Paths.CONFIG,
      page: () => const ConfigView(),
      binding: ConfigBinding(),
    ),
  ];
}
