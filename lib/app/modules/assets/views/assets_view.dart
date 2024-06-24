import 'package:auto_route/auto_route.dart';
import 'package:companies_assets/app/modules/assets/views/widget/choice_chip.dart';
import 'package:companies_assets/app/modules/assets/views/widget/search_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/assets_controller.dart';
import 'widget/tree_node_adapter.dart';

@RoutePage()
class AssetsView extends GetView<AssetsController> {
  final String? companyId;
  const AssetsView({@PathParam('id') this.companyId, super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('${controller.value} Unit'),
          centerTitle: true,
          elevation: 8,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(120),
            child: Obx(
              () => Column(
                children: [
                  CustomerSearchBar(
                    controller: controller.searchController,
                    onSubmitted: controller.onSearchChanged,
                  ),
                  ChoiceChipDemo(
                    selectedChoice: controller.selectedChoice.value,
                    onSelected: controller.onSelectedChoice,
                  ),
                ],
              ),
            ),
          )),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return ListView.builder(
          itemCount: controller.treeNodes.length,
          itemBuilder: (_, index) {
            return TreeNodeWidget(
              node: controller.treeNodes[index],
            );
          },
        );
      }),
    );
  }
}
