import 'package:auto_route/auto_route.dart';
import 'package:companies_assets/app/auto_router/routes_imports.gr.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'drawer_widget.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      animatePageTransition: false,
      physics: const NeverScrollableScrollPhysics(),
      routes: const [HomeViewRoute(), NewAsssetViewRoute(), ConfigViewRoute()],
      builder: (context, child, _) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
            drawer: const DrawerWidget(),
            appBar: AppBar(
              title: const Text('Tractian'),
              centerTitle: true,
            ),
            body: child,
            bottomNavigationBar: NavigationBar(
              selectedIndex: tabsRouter.activeIndex,
              onDestinationSelected: tabsRouter.setActiveIndex,
              destinations: [
                NavigationDestination(
                    label: 'empresas'.tr,
                    icon: const Icon(Icons.factory_outlined)),
                NavigationDestination(
                  label: 'projetos'.tr,
                  icon: const Icon(Icons.folder_copy),
                ),
                NavigationDestination(
                    label: 'config'.tr,
                    icon: const Icon(Icons.settings_rounded)),
              ],
            ));
      },
    );
  }
}
