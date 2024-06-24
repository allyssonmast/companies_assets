// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_mapping.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCompanyMappingCollection on Isar {
  IsarCollection<CompanyMapping> get companyMappings => this.collection();
}

const CompanyMappingSchema = CollectionSchema(
  name: r'CompanyMapping',
  id: 5245893457723687621,
  properties: {
    r'assetsCollectionId': PropertySchema(
      id: 0,
      name: r'assetsCollectionId',
      type: IsarType.long,
    ),
    r'companyName': PropertySchema(
      id: 1,
      name: r'companyName',
      type: IsarType.string,
    ),
    r'locationsCollectionId': PropertySchema(
      id: 2,
      name: r'locationsCollectionId',
      type: IsarType.long,
    )
  },
  estimateSize: _companyMappingEstimateSize,
  serialize: _companyMappingSerialize,
  deserialize: _companyMappingDeserialize,
  deserializeProp: _companyMappingDeserializeProp,
  idName: r'companyId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _companyMappingGetId,
  getLinks: _companyMappingGetLinks,
  attach: _companyMappingAttach,
  version: '3.1.0+1',
);

int _companyMappingEstimateSize(
  CompanyMapping object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.companyName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _companyMappingSerialize(
  CompanyMapping object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.assetsCollectionId);
  writer.writeString(offsets[1], object.companyName);
  writer.writeLong(offsets[2], object.locationsCollectionId);
}

CompanyMapping _companyMappingDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CompanyMapping(
    assetsCollectionId: reader.readLongOrNull(offsets[0]),
    companyId: id,
    companyName: reader.readStringOrNull(offsets[1]),
    locationsCollectionId: reader.readLongOrNull(offsets[2]),
  );
  return object;
}

P _companyMappingDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _companyMappingGetId(CompanyMapping object) {
  return object.companyId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _companyMappingGetLinks(CompanyMapping object) {
  return [];
}

void _companyMappingAttach(
    IsarCollection<dynamic> col, Id id, CompanyMapping object) {
  object.companyId = id;
}

extension CompanyMappingQueryWhereSort
    on QueryBuilder<CompanyMapping, CompanyMapping, QWhere> {
  QueryBuilder<CompanyMapping, CompanyMapping, QAfterWhere> anyCompanyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CompanyMappingQueryWhere
    on QueryBuilder<CompanyMapping, CompanyMapping, QWhereClause> {
  QueryBuilder<CompanyMapping, CompanyMapping, QAfterWhereClause>
      companyIdEqualTo(Id companyId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: companyId,
        upper: companyId,
      ));
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterWhereClause>
      companyIdNotEqualTo(Id companyId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: companyId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: companyId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: companyId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: companyId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterWhereClause>
      companyIdGreaterThan(Id companyId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: companyId, includeLower: include),
      );
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterWhereClause>
      companyIdLessThan(Id companyId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: companyId, includeUpper: include),
      );
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterWhereClause>
      companyIdBetween(
    Id lowerCompanyId,
    Id upperCompanyId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerCompanyId,
        includeLower: includeLower,
        upper: upperCompanyId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CompanyMappingQueryFilter
    on QueryBuilder<CompanyMapping, CompanyMapping, QFilterCondition> {
  QueryBuilder<CompanyMapping, CompanyMapping, QAfterFilterCondition>
      assetsCollectionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'assetsCollectionId',
      ));
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterFilterCondition>
      assetsCollectionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'assetsCollectionId',
      ));
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterFilterCondition>
      assetsCollectionIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'assetsCollectionId',
        value: value,
      ));
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterFilterCondition>
      assetsCollectionIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'assetsCollectionId',
        value: value,
      ));
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterFilterCondition>
      assetsCollectionIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'assetsCollectionId',
        value: value,
      ));
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterFilterCondition>
      assetsCollectionIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'assetsCollectionId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterFilterCondition>
      companyIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'companyId',
      ));
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterFilterCondition>
      companyIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'companyId',
      ));
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterFilterCondition>
      companyIdEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'companyId',
        value: value,
      ));
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterFilterCondition>
      companyIdGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'companyId',
        value: value,
      ));
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterFilterCondition>
      companyIdLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'companyId',
        value: value,
      ));
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterFilterCondition>
      companyIdBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'companyId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterFilterCondition>
      companyNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'companyName',
      ));
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterFilterCondition>
      companyNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'companyName',
      ));
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterFilterCondition>
      companyNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'companyName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterFilterCondition>
      companyNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'companyName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterFilterCondition>
      companyNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'companyName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterFilterCondition>
      companyNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'companyName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterFilterCondition>
      companyNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'companyName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterFilterCondition>
      companyNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'companyName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterFilterCondition>
      companyNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'companyName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterFilterCondition>
      companyNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'companyName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterFilterCondition>
      companyNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'companyName',
        value: '',
      ));
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterFilterCondition>
      companyNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'companyName',
        value: '',
      ));
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterFilterCondition>
      locationsCollectionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'locationsCollectionId',
      ));
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterFilterCondition>
      locationsCollectionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'locationsCollectionId',
      ));
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterFilterCondition>
      locationsCollectionIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'locationsCollectionId',
        value: value,
      ));
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterFilterCondition>
      locationsCollectionIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'locationsCollectionId',
        value: value,
      ));
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterFilterCondition>
      locationsCollectionIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'locationsCollectionId',
        value: value,
      ));
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterFilterCondition>
      locationsCollectionIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'locationsCollectionId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CompanyMappingQueryObject
    on QueryBuilder<CompanyMapping, CompanyMapping, QFilterCondition> {}

extension CompanyMappingQueryLinks
    on QueryBuilder<CompanyMapping, CompanyMapping, QFilterCondition> {}

extension CompanyMappingQuerySortBy
    on QueryBuilder<CompanyMapping, CompanyMapping, QSortBy> {
  QueryBuilder<CompanyMapping, CompanyMapping, QAfterSortBy>
      sortByAssetsCollectionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assetsCollectionId', Sort.asc);
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterSortBy>
      sortByAssetsCollectionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assetsCollectionId', Sort.desc);
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterSortBy>
      sortByCompanyName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyName', Sort.asc);
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterSortBy>
      sortByCompanyNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyName', Sort.desc);
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterSortBy>
      sortByLocationsCollectionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationsCollectionId', Sort.asc);
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterSortBy>
      sortByLocationsCollectionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationsCollectionId', Sort.desc);
    });
  }
}

extension CompanyMappingQuerySortThenBy
    on QueryBuilder<CompanyMapping, CompanyMapping, QSortThenBy> {
  QueryBuilder<CompanyMapping, CompanyMapping, QAfterSortBy>
      thenByAssetsCollectionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assetsCollectionId', Sort.asc);
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterSortBy>
      thenByAssetsCollectionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assetsCollectionId', Sort.desc);
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterSortBy> thenByCompanyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.asc);
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterSortBy>
      thenByCompanyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.desc);
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterSortBy>
      thenByCompanyName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyName', Sort.asc);
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterSortBy>
      thenByCompanyNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyName', Sort.desc);
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterSortBy>
      thenByLocationsCollectionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationsCollectionId', Sort.asc);
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QAfterSortBy>
      thenByLocationsCollectionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationsCollectionId', Sort.desc);
    });
  }
}

extension CompanyMappingQueryWhereDistinct
    on QueryBuilder<CompanyMapping, CompanyMapping, QDistinct> {
  QueryBuilder<CompanyMapping, CompanyMapping, QDistinct>
      distinctByAssetsCollectionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'assetsCollectionId');
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QDistinct> distinctByCompanyName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'companyName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CompanyMapping, CompanyMapping, QDistinct>
      distinctByLocationsCollectionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'locationsCollectionId');
    });
  }
}

extension CompanyMappingQueryProperty
    on QueryBuilder<CompanyMapping, CompanyMapping, QQueryProperty> {
  QueryBuilder<CompanyMapping, int, QQueryOperations> companyIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'companyId');
    });
  }

  QueryBuilder<CompanyMapping, int?, QQueryOperations>
      assetsCollectionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'assetsCollectionId');
    });
  }

  QueryBuilder<CompanyMapping, String?, QQueryOperations>
      companyNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'companyName');
    });
  }

  QueryBuilder<CompanyMapping, int?, QQueryOperations>
      locationsCollectionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'locationsCollectionId');
    });
  }
}
