import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/assets_controller.dart';

@RoutePage()
class AssetsView extends GetView<AssetsController> {
  final String? companyId;
  const AssetsView({@PathParam('id') this.companyId, super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AssetsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AssetsView is workng',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
