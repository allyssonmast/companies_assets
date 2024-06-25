import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/utils/navigation/customer_route.dart';
import 'app/utils/navigation/navigation_provider.dart';
import 'app/utils/theme/theme.dart';
import 'app/utils/translation/translation.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final NavigationService _navigationService = NavigationService();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      splitScreenMode: true,
      builder: (context, child) {
        return NavigationProvider(
          navigationService: _navigationService,
          child: GetMaterialApp.router(
            title: "Companies Assets",
            //initialRoute: Routes.HOME,
            getPages: AppPages.routes,
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.system,
           routeInformationParser: _navigationService.router.defaultRouteParser(),
            routerDelegate: _navigationService.router.delegate(),
            theme: lightTheme,
            darkTheme: darkTheme,
            translations: TranslationService(),
            locale: TranslationService.locale,
            fallbackLocale: TranslationService.fallbackLocale,
            supportedLocales: const [
              TranslationService.locale,
              TranslationService.fallbackLocale,
              Locale('pt', 'BR'),
            ],
          ),
        );
      },
    );
  }
}
