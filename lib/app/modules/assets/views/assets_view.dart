import 'package:auto_route/auto_route.dart';
import 'package:companies_assets/app/modules/assets/views/widget/choice_chip.dart';
import 'package:companies_assets/app/modules/assets/views/widget/search_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/assets_controller.dart';
import '../models/tree_node.dart';
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
                    onChanged: (query) {},
                  ),
                  ChoiceChipDemo(
                    selectedChoice: controller.selectedChoice.value,
                    onSelected: controller.onSelectedChoice,
                  ),
                ],
              ),
            ),
          )),
      body: FutureBuilder<List<NodeTree>>(
        future: controller.loadTreeNodes(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No data available'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (_, index) {
                return TreeNodeWidget(node: snapshot.data![index]);
              },
            );
          }
        },
      ),
    );
  }
}
