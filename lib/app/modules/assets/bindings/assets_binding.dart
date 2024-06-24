import 'package:companies_assets/app/di/injection.dart';
import 'package:get/get.dart';

import '../controllers/assets_controller.dart';

class AssetsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AssetsController>(
      () => getIt<AssetsController>(),
    );
  }
}
