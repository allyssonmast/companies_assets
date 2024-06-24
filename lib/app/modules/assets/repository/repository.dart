import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import '../../../utils/json_converts/TreeDataService.dart';
import '../models/tree_node.dart';

@injectable
class Repository {
  final TreeDataConvert convert;

  Repository(this.convert);

  Future<List<NodeTree>> getData(String companyName) async {
    try {
      final locationsJson =
          await rootBundle.loadString('assets/${companyName}_locations.json');
      final assetsJson =
          await rootBundle.loadString('assets/${companyName}_assets.json');

      final List<Map<String, dynamic>> locations =
          List<Map<String, dynamic>>.from(json.decode(locationsJson));
      final List<Map<String, dynamic>> assets =
          List<Map<String, dynamic>>.from(json.decode(assetsJson));

      return convert.buildTree(locations, assets);
    } catch (e) {
      // Considerar adicionar um tratamento de erro mais específico
      print('Erro ao carregar ou decodificar os dados: $e');
      return [];
    }
  }
}
