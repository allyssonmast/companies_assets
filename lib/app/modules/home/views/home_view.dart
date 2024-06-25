import 'package:auto_route/auto_route.dart';
import 'package:companies_assets/app/modules/home/views/widget/company_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

@RoutePage()
class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    var list = ['Jaguar', 'Tobias', 'Apex'];
    return ListView.builder(
      itemCount: list.length,
      padding: EdgeInsets.all(8.sp),
      itemBuilder: (_, index) {
        return CompanyCard(title: list[index]);
      },
    );
  }
}
