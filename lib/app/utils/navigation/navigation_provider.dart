import 'package:flutter/material.dart';
import 'customer_route.dart';

class NavigationProvider extends InheritedWidget {
  final NavigationService navigationService;

  const NavigationProvider({
    super.key,
    required this.navigationService,
    required super.child,
  });

  static NavigationProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<NavigationProvider>();
  }

  @override
  bool updateShouldNotify(NavigationProvider oldWidget) {
    return navigationService != oldWidget.navigationService;
  }
}
