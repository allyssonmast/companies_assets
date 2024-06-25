import 'package:get/get.dart';

import '../controllers/new_assset_controller.dart';

class NewAsssetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewAsssetController>(
      () => NewAsssetController(),
    );
  }
}
