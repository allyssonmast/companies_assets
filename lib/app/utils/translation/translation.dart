import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslationService extends Translations {
  static const locale = Locale('en', 'US');

  static const fallbackLocale = Locale('pt', 'BR');

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {},
        'de_DE': {},
        'pt_BR': {},
      };
}
