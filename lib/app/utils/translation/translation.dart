import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslationService extends Translations {
  static const locale = Locale('en', 'US');

  static const fallbackLocale = Locale('pt', 'BR');

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'darkmode':'Dark Mode',
          'idioma':'language',
          'empresas':'Companies',
          'projetos':'Projects',
          'config':'Settings',
          'buscar':'Search for Assets or Location',
          'todos':'All',
          'sensores':'Energy Sensors',
          'critico':'Critical Status',
          'aplicacao':'Intuitive application with end-to-end support'
        },
        'pt_BR': {
          'idioma':'Idioma',
          'darkmode':'Modo Escuro',
          'empresas' :'Empresas',
          'projetos':'Projetos',
          'config':'Configurações',
          'buscar':'Buscar Ativos ou Local',
          'todos':'Todos',
          'sensores':'Sensores de Energia',
          'critico':'Estado Crítico',
          'aplicacao':'Aplicação intuitiva com suporte do começo ao fim'
        },
      };
}
