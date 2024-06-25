import 'package:companies_assets/app/utils/navigation/navigation_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../auto_router/names_routes.dart';

class CompanyCard extends StatelessWidget {
  final String title;
  const CompanyCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(24.sp),
      child: ListTile(
        minVerticalPadding: 34.sp,
        onTap: () {
          Get.toNamed(ASSETS, arguments: title);
          //context.navigator.navigateTo('$ASSETS/$title');
        },
        leading: const Icon(Icons.web_asset_sharp),
        title: Text('$title Unit'),
      ),
    );
  }
}
