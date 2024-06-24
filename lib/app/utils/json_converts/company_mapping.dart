import 'package:isar/isar.dart';

part 'company_mapping.g.dart';
@Collection()
class CompanyMapping {

  Id? companyId = Isar.autoIncrement;

  String? companyName;

  // IDs das coleções de assets e locations
  int? assetsCollectionId;
  int? locationsCollectionId;

  CompanyMapping({
    this.companyId,
    this.companyName,
    this.assetsCollectionId,
    this.locationsCollectionId,
  });
}
