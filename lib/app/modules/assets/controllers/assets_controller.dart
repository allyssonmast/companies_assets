import 'package:companies_assets/app/modules/assets/repository/repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import '../models/tree_node.dart';

@injectable
class AssetsController extends GetxController {
  final Repository _repository;
  final String value = Get.arguments;
  final RxBool isLoading = false.obs;
  final RxInt selectedChoice = 0.obs;
  var searchController = TextEditingController();
  final RxList<NodeTree> treeNodes = <NodeTree>[].obs;
  List<NodeTree> originalTreeNodes = [];

  AssetsController(this._repository);

  @override
  void onInit() {
    super.onInit();
    loadTreeNodes();
  }

  Future<void> loadTreeNodes() async {
    isLoading.value = true;
    List<NodeTree> nodes = await _repository.getData(value.toLowerCase());
    originalTreeNodes = List.from(nodes);
    treeNodes.value = nodes;
    isLoading.value = false;
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
    List<NodeTree> filteredNodes =
        _filterNodes(originalTreeNodes, searchController.text, (node) {
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
  }

  List<NodeTree> _filterNodes(List<NodeTree> nodes, String query,
      bool Function(NodeTree node) predicate) {
    return nodes
        .map((node) {
          List<NodeTree> filteredChildren = node.children.isNotEmpty
              ? _filterNodes(node.children, query, predicate)
              : [];
          bool matchesQuery =
              node.label.toLowerCase().contains(query.toLowerCase());
          bool matchesPredicate = predicate(node);
          return (matchesQuery && matchesPredicate) ||
                  filteredChildren.isNotEmpty
              ? node.copyWith(children: filteredChildren)
              : null;
        })
        .where((node) => node != null)
        .toList()
        .cast<NodeTree>();
  }
}
