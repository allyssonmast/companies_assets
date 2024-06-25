import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import '../../../utils/json_converts/tree_data_service.dart';
import '../models/tree_node.dart';
import 'package:dartz/dartz.dart';

@injectable
class Repository {
  final TreeDataConvert convert;

  Repository(this.convert);

  Future<Either<String, List<NodeTree>>> getData(String companyName) async {
    try {
      final locationsJson =
          await rootBundle.loadString('assets/${companyName}_locations.json');
      final assetsJson =
          await rootBundle.loadString('assets/${companyName}_assets.json');

      final List<Map<String, dynamic>> locations =
          List<Map<String, dynamic>>.from(json.decode(locationsJson));
      final List<Map<String, dynamic>> assets =
          List<Map<String, dynamic>>.from(json.decode(assetsJson));

      return Right(convert.buildTree(locations, assets));
    } catch (e) {
      return Left(e.toString());
    }
  }
}
