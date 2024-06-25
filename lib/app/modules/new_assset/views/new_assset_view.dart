import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/new_assset_controller.dart';

@RoutePage()
class NewAsssetView extends GetView<NewAsssetController> {
  const NewAsssetView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'NewAsssetView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
