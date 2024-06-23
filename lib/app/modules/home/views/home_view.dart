import 'package:auto_route/auto_route.dart';
import 'package:companies_assets/app/auto_router/routes_imports.gr.dart';
import 'package:companies_assets/app/utils/navigation_extension.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../auto_router/names_routes.dart';
import '../controllers/home_controller.dart';

@RoutePage()
class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    var list= ['Jaguar','Tobias','Apex'];
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: list.length,
          padding: const EdgeInsets.all(8),
          itemBuilder: (_, index) {
            return Card(
              margin: const EdgeInsets.all(24),
              child: ListTile(
                minVerticalPadding: 34,
                onTap: () {
                  Get.toNamed(ASSETS,arguments: list[index]);

                  //context.navigator.navigateTo('$ASSETS/${list[index]}');
                },
                leading: const Icon(Icons.web_asset_sharp),
                title: Text('${list[index]} Unit'),
              ),
            );
          }),
    );
  }
}
