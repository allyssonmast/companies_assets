import 'package:companies_assets/app/modules/assets/repository/repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import '../../../utils/filter_nodes.dart';
import '../models/tree_node.dart';

@injectable
class AssetsController extends GetxController {
  final Repository _repository;
  final FilterNodes filterNodes;
  final RxString errorMessage = ''.obs;
  var companyId = Get.arguments;
  //var companyId = ''.obs;
  final RxBool isLoading = false.obs;
  final RxInt selectedChoice = 0.obs;
  var searchController = TextEditingController();
  final RxList<NodeTree> treeNodes = <NodeTree>[].obs;
  List<NodeTree> originalTreeNodes = [];

  AssetsController(this._repository, this.filterNodes);

  @override
  void onInit() {
    super.onInit();
    loadTreeNodes(companyId);
  }

  void changeCompanyId(String company) => companyId.value = company;

  Future<void> loadTreeNodes(String companyId) async {
    isLoading.value = true;
    final result = await _repository.getData(companyId.toLowerCase());
    result.fold(
      (l) {
        errorMessage.value = "Erro: $l";
        treeNodes.clear();
      },
      (r) {
        originalTreeNodes = List.from(r);
        treeNodes.value = r;
      },
    );
    isLoading.value = false;
    update();
  }

  void onSelectedChoice(int index) {
    selectedChoice.value = index;
    applyFilters();
  }

  void onSearchChanged(String query) {
    applyFilters();
  }

  void applyFilters() {
    isLoading.value = true;
    update();
    List<NodeTree> filteredNodes =
        filterNodes(originalTreeNodes, searchController.text, (node) {
      bool matchesChoice = true;

      if (selectedChoice.value == 1) {
        matchesChoice = node.sensorType == 'energy';
      } else if (selectedChoice.value == 2) {
        matchesChoice = node.status == 'alert';
      }

      return matchesChoice;
    });

    treeNodes.value = filteredNodes;
    isLoading.value = false;
    update();
  }
}
