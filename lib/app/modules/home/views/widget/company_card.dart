import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../auto_router/names_routes.dart';

class CompanyCard extends StatelessWidget {
  final String title;
  const CompanyCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(24),
      child: ListTile(
        minVerticalPadding: 34,
        onTap: () {
          Get.toNamed(ASSETS, arguments: title);
        },
        leading: const Icon(Icons.web_asset_sharp),
        title: Text('$title Unit'),
      ),
    );
  }
}
