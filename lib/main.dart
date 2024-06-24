import 'package:companies_assets/my_app.dart';
import 'package:flutter/material.dart';

import 'app/di/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}
