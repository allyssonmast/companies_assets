import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/config_controller.dart';
import 'widgets/custom_listview.dart';

@RoutePage()
class ConfigView extends GetView<ConfigController> {
  const ConfigView({super.key});

  @override
  Widget build(BuildContext context) {
    var listOdoo = [
      {
        'title': 'Lucas Pessamilio',
        'subTitle': 'lpessamilio@tractian.com'
      },
      {
        'title': 'Carolina Kato',
        'subTitle': 'ckato@tractian.com'
      },
      {'title': 'aplicacao'.tr}
    ];
    var listGithub = [
      {'title': 'allyssonmast'},
      {'title': 'allysson-m@hotmail.com'}
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomLisView(
                mainTitle: 'Tractian',
                list: listOdoo,
              ),
              CustomLisView(
                mainTitle: 'Allysson',
                list: listGithub,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
