import 'package:flutter/material.dart';
import 'customer_route.dart';
import 'navigation_provider.dart';

extension NavigationExtension on BuildContext {
  NavigationService get navigator =>
      NavigationProvider.of(this)!.navigationService;
}
