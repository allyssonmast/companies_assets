import 'package:companies_assets/app/modules/assets/repository/repository.dart';
import 'package:get/get.dart';

import '../controllers/assets_controller.dart';

class AssetsBinding extends Bindings {
  @override
  void dependencies() {
    var repository = Repository();
    var value = Get.arguments;
    print(value);
    Get.lazyPut<AssetsController>(
      () => AssetsController(repository),
    );
  }
}
