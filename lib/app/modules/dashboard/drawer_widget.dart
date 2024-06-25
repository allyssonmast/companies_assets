import 'package:companies_assets/app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  int selectedIndex = 0;
  int grup = 0;
  late String language;

  @override
  void initState() {
    super.initState();
    _oninit();
  }

  _oninit() {
    var locale = Get.locale ?? Get.deviceLocale;

    switch (locale.toString()) {
      case 'pt_BR':
        grup = 1;
        language = 'Português';
        break;

      default:
        grup = 0;
        language = 'English';
    }
  }

  _changeLocale(int? onchange) {
    late Locale locale;
    switch (onchange) {
      case 1:
        locale = const Locale('pt_BR');
        break;

      default:
        locale = const Locale('en_US');
    }

    Get.updateLocale(locale);
    _oninit();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: context.theme.primaryColor),
              accountName: const Text("Tractian"),
              accountEmail: const Text("contato@tractian.com.br"),
              currentAccountPicture: CircleAvatar(
                onBackgroundImageError: (_, __) {
                  Image.asset('images/icon.jpeg');
                },
                backgroundImage: const AssetImage('assets/logo.png'),
              ),
            ),
            SwitchListTile(
              value: context.isDarkMode,
              secondary: const Icon(Icons.dark_mode),
              title: Text('darkmode'.tr),
              onChanged: (onChanged) {
                Get.changeTheme(onChanged ? darkTheme : lightTheme);
              },
            ),
            ExpansionTile(
              title: Text('idioma'.tr),
              subtitle: Text(language),
              leading: const CircleAvatar(
                child: Icon(Icons.language_outlined),
              ),
              children: [
                RadioListTile(
                  title: const Text('English'),
                  value: 0,
                  groupValue: grup,
                  onChanged: _changeLocale,
                ),
                RadioListTile(
                  title: const Text('Português'),
                  value: 1,
                  groupValue: grup,
                  onChanged: _changeLocale,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
