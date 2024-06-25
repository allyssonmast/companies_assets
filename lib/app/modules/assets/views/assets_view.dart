import 'package:auto_route/auto_route.dart';
import 'package:companies_assets/app/di/injection.dart';
import 'package:companies_assets/app/modules/assets/views/widget/choice_chip.dart';
import 'package:companies_assets/app/modules/assets/views/widget/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/assets_controller.dart';
import 'widget/tree_node_adapter.dart';

@RoutePage()
class AssetsView extends StatelessWidget {
  final String? companyId;
  const AssetsView({@PathParam('id') this.companyId, super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AssetsController>(
      init: getIt<AssetsController>()..changeCompanyId(companyId ?? ''),
      builder: (controller) => Scaffold(
        appBar: _buildAppBar(controller),
        body: _buildBody(controller),
      ),
    );
  }

  AppBar _buildAppBar(AssetsController controller) {
    return AppBar(
      title: Text('${companyId ?? ''} Unit'),
      centerTitle: true,
      elevation: 8,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: _buildAppBarBottom(controller),
      ),
    );
  }

  Widget _buildAppBarBottom(AssetsController controller) {
    return Column(
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
    );
  }

  Widget _buildBody(AssetsController controller) {
    if (controller.isLoading.value) {
      return const Center(child: CircularProgressIndicator());
    } else if (controller.errorMessage.isNotEmpty) {
      return Center(child: Text(controller.errorMessage.value));
    } else if (controller.treeNodes.isEmpty) {
      return const Center(child: Text('Nenhum Asset encontrado'));
    } else {
      return ListView.builder(
        itemCount: controller.treeNodes.length,
        itemBuilder: (_, index) => TreeNodeWidget(
          node: controller.treeNodes[index],
        ),
      );
    }
  }
}
