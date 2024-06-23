import 'package:companies_assets/app/modules/assets/repository/repository.dart';
import 'package:get/get.dart';

class AssetsController extends GetxController {
  final Repository _repository;
  String value = Get.arguments;

  AssetsController(this._repository);

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();

    print(value);
    _repository.loadCompanyData('jaguar' ?? '');
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
