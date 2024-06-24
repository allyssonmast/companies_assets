import 'package:companies_assets/app/modules/assets/repository/repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import '../models/tree_node.dart';

@injectable
class AssetsController extends GetxController {
  final Repository _repository;
  String value = Get.arguments;
  var selectedChoice = 0.obs;
  var searchController = TextEditingController();

  AssetsController(this._repository);

  Future<List<NodeTree>> loadTreeNodes() async =>
      _repository.getData(value.toLowerCase());

  void onSelectedChoice(int index) {
    selectedChoice.value = index;
  }
}
