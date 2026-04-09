// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_collections.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetParentIsarCollection on Isar {
  IsarCollection<ParentIsar> get parentIsars => this.collection();
}

final ParentIsarSchema = CollectionSchema(
  name: r'ParentIsar',
  id: int.parse('2939291709480641851'),
  properties: {
    r'apiId': PropertySchema(id: 0, name: r'apiId', type: IsarType.string),
    r'authId': PropertySchema(id: 1, name: r'authId', type: IsarType.string),
    r'deviceToken': PropertySchema(
      id: 2,
      name: r'deviceToken',
      type: IsarType.string,
    ),
    r'email': PropertySchema(id: 3, name: r'email', type: IsarType.string),
    r'languagePref': PropertySchema(
      id: 4,
      name: r'languagePref',
      type: IsarType.string,
    ),
    r'name': PropertySchema(id: 5, name: r'name', type: IsarType.string),
    r'phone': PropertySchema(id: 6, name: r'phone', type: IsarType.string),
    r'pinHash': PropertySchema(id: 7, name: r'pinHash', type: IsarType.string),
  },

  estimateSize: _parentIsarEstimateSize,
  serialize: _parentIsarSerialize,
  deserialize: _parentIsarDeserialize,
  deserializeProp: _parentIsarDeserializeProp,
  idName: r'id',
  indexes: {
    r'apiId': IndexSchema(
      id: int.parse('92618221247000178'),
      name: r'apiId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'apiId',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
  },
  links: {},
  embeddedSchemas: {},

  getId: _parentIsarGetId,
  getLinks: _parentIsarGetLinks,
  attach: _parentIsarAttach,
  version: '3.3.2',
);

int _parentIsarEstimateSize(
  ParentIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.apiId.length * 3;
  bytesCount += 3 + object.authId.length * 3;
  {
    final value = object.deviceToken;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.email.length * 3;
  bytesCount += 3 + object.languagePref.length * 3;
  bytesCount += 3 + object.name.length * 3;
  {
    final value = object.phone;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.pinHash;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _parentIsarSerialize(
  ParentIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.apiId);
  writer.writeString(offsets[1], object.authId);
  writer.writeString(offsets[2], object.deviceToken);
  writer.writeString(offsets[3], object.email);
  writer.writeString(offsets[4], object.languagePref);
  writer.writeString(offsets[5], object.name);
  writer.writeString(offsets[6], object.phone);
  writer.writeString(offsets[7], object.pinHash);
}

ParentIsar _parentIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ParentIsar();
  object.apiId = reader.readString(offsets[0]);
  object.authId = reader.readString(offsets[1]);
  object.deviceToken = reader.readStringOrNull(offsets[2]);
  object.email = reader.readString(offsets[3]);
  object.id = id;
  object.languagePref = reader.readString(offsets[4]);
  object.name = reader.readString(offsets[5]);
  object.phone = reader.readStringOrNull(offsets[6]);
  object.pinHash = reader.readStringOrNull(offsets[7]);
  return object;
}

P _parentIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _parentIsarGetId(ParentIsar object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _parentIsarGetLinks(ParentIsar object) {
  return [];
}

void _parentIsarAttach(IsarCollection<dynamic> col, Id id, ParentIsar object) {
  object.id = id;
}

extension ParentIsarByIndex on IsarCollection<ParentIsar> {
  Future<ParentIsar?> getByApiId(String apiId) {
    return getByIndex(r'apiId', [apiId]);
  }

  ParentIsar? getByApiIdSync(String apiId) {
    return getByIndexSync(r'apiId', [apiId]);
  }

  Future<bool> deleteByApiId(String apiId) {
    return deleteByIndex(r'apiId', [apiId]);
  }

  bool deleteByApiIdSync(String apiId) {
    return deleteByIndexSync(r'apiId', [apiId]);
  }

  Future<List<ParentIsar?>> getAllByApiId(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'apiId', values);
  }

  List<ParentIsar?> getAllByApiIdSync(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'apiId', values);
  }

  Future<int> deleteAllByApiId(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'apiId', values);
  }

  int deleteAllByApiIdSync(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'apiId', values);
  }

  Future<Id> putByApiId(ParentIsar object) {
    return putByIndex(r'apiId', object);
  }

  Id putByApiIdSync(ParentIsar object, {bool saveLinks = true}) {
    return putByIndexSync(r'apiId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByApiId(List<ParentIsar> objects) {
    return putAllByIndex(r'apiId', objects);
  }

  List<Id> putAllByApiIdSync(
    List<ParentIsar> objects, {
    bool saveLinks = true,
  }) {
    return putAllByIndexSync(r'apiId', objects, saveLinks: saveLinks);
  }
}

extension ParentIsarQueryWhereSort
    on QueryBuilder<ParentIsar, ParentIsar, QWhere> {
  QueryBuilder<ParentIsar, ParentIsar, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ParentIsarQueryWhere
    on QueryBuilder<ParentIsar, ParentIsar, QWhereClause> {
  QueryBuilder<ParentIsar, ParentIsar, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterWhereClause> idGreaterThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterWhereClause> idLessThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerId,
          includeLower: includeLower,
          upper: upperId,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterWhereClause> apiIdEqualTo(
    String apiId,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'apiId', value: [apiId]),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterWhereClause> apiIdNotEqualTo(
    String apiId,
  ) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [],
                upper: [apiId],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [apiId],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [apiId],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [],
                upper: [apiId],
                includeUpper: false,
              ),
            );
      }
    });
  }
}

extension ParentIsarQueryFilter
    on QueryBuilder<ParentIsar, ParentIsar, QFilterCondition> {
  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> apiIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> apiIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> apiIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> apiIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'apiId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> apiIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> apiIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> apiIdContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> apiIdMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'apiId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> apiIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'apiId', value: ''),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition>
  apiIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'apiId', value: ''),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> authIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'authId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> authIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'authId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> authIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'authId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> authIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'authId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> authIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'authId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> authIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'authId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> authIdContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'authId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> authIdMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'authId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> authIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'authId', value: ''),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition>
  authIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'authId', value: ''),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition>
  deviceTokenIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'deviceToken'),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition>
  deviceTokenIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'deviceToken'),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition>
  deviceTokenEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'deviceToken',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition>
  deviceTokenGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'deviceToken',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition>
  deviceTokenLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'deviceToken',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition>
  deviceTokenBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'deviceToken',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition>
  deviceTokenStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'deviceToken',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition>
  deviceTokenEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'deviceToken',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition>
  deviceTokenContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'deviceToken',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition>
  deviceTokenMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'deviceToken',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition>
  deviceTokenIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'deviceToken', value: ''),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition>
  deviceTokenIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'deviceToken', value: ''),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> emailEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'email',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> emailGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'email',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> emailLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'email',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> emailBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'email',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'email',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'email',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> emailContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'email',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> emailMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'email',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'email', value: ''),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition>
  emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'email', value: ''),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> idEqualTo(
    Id value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'id',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition>
  languagePrefEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'languagePref',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition>
  languagePrefGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'languagePref',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition>
  languagePrefLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'languagePref',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition>
  languagePrefBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'languagePref',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition>
  languagePrefStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'languagePref',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition>
  languagePrefEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'languagePref',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition>
  languagePrefContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'languagePref',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition>
  languagePrefMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'languagePref',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition>
  languagePrefIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'languagePref', value: ''),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition>
  languagePrefIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'languagePref', value: ''),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'name',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> nameContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> nameMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'name',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'name', value: ''),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'name', value: ''),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> phoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'phone'),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> phoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'phone'),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> phoneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'phone',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> phoneGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'phone',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> phoneLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'phone',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> phoneBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'phone',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> phoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'phone',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> phoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'phone',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> phoneContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'phone',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> phoneMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'phone',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> phoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'phone', value: ''),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition>
  phoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'phone', value: ''),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> pinHashIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'pinHash'),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition>
  pinHashIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'pinHash'),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> pinHashEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'pinHash',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition>
  pinHashGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'pinHash',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> pinHashLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'pinHash',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> pinHashBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'pinHash',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> pinHashStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'pinHash',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> pinHashEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'pinHash',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> pinHashContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'pinHash',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> pinHashMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'pinHash',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition> pinHashIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'pinHash', value: ''),
      );
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterFilterCondition>
  pinHashIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'pinHash', value: ''),
      );
    });
  }
}

extension ParentIsarQueryObject
    on QueryBuilder<ParentIsar, ParentIsar, QFilterCondition> {}

extension ParentIsarQueryLinks
    on QueryBuilder<ParentIsar, ParentIsar, QFilterCondition> {}

extension ParentIsarQuerySortBy
    on QueryBuilder<ParentIsar, ParentIsar, QSortBy> {
  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> sortByApiId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.asc);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> sortByApiIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.desc);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> sortByAuthId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'authId', Sort.asc);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> sortByAuthIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'authId', Sort.desc);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> sortByDeviceToken() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deviceToken', Sort.asc);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> sortByDeviceTokenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deviceToken', Sort.desc);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> sortByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> sortByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> sortByLanguagePref() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'languagePref', Sort.asc);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> sortByLanguagePrefDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'languagePref', Sort.desc);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> sortByPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.asc);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> sortByPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.desc);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> sortByPinHash() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pinHash', Sort.asc);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> sortByPinHashDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pinHash', Sort.desc);
    });
  }
}

extension ParentIsarQuerySortThenBy
    on QueryBuilder<ParentIsar, ParentIsar, QSortThenBy> {
  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> thenByApiId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.asc);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> thenByApiIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.desc);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> thenByAuthId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'authId', Sort.asc);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> thenByAuthIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'authId', Sort.desc);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> thenByDeviceToken() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deviceToken', Sort.asc);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> thenByDeviceTokenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deviceToken', Sort.desc);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> thenByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> thenByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> thenByLanguagePref() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'languagePref', Sort.asc);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> thenByLanguagePrefDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'languagePref', Sort.desc);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> thenByPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.asc);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> thenByPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.desc);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> thenByPinHash() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pinHash', Sort.asc);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QAfterSortBy> thenByPinHashDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pinHash', Sort.desc);
    });
  }
}

extension ParentIsarQueryWhereDistinct
    on QueryBuilder<ParentIsar, ParentIsar, QDistinct> {
  QueryBuilder<ParentIsar, ParentIsar, QDistinct> distinctByApiId({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'apiId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QDistinct> distinctByAuthId({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'authId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QDistinct> distinctByDeviceToken({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deviceToken', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QDistinct> distinctByEmail({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'email', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QDistinct> distinctByLanguagePref({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'languagePref', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QDistinct> distinctByName({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QDistinct> distinctByPhone({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phone', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ParentIsar, ParentIsar, QDistinct> distinctByPinHash({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pinHash', caseSensitive: caseSensitive);
    });
  }
}

extension ParentIsarQueryProperty
    on QueryBuilder<ParentIsar, ParentIsar, QQueryProperty> {
  QueryBuilder<ParentIsar, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ParentIsar, String, QQueryOperations> apiIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'apiId');
    });
  }

  QueryBuilder<ParentIsar, String, QQueryOperations> authIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'authId');
    });
  }

  QueryBuilder<ParentIsar, String?, QQueryOperations> deviceTokenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deviceToken');
    });
  }

  QueryBuilder<ParentIsar, String, QQueryOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'email');
    });
  }

  QueryBuilder<ParentIsar, String, QQueryOperations> languagePrefProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'languagePref');
    });
  }

  QueryBuilder<ParentIsar, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<ParentIsar, String?, QQueryOperations> phoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phone');
    });
  }

  QueryBuilder<ParentIsar, String?, QQueryOperations> pinHashProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pinHash');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetStudentIsarCollection on Isar {
  IsarCollection<StudentIsar> get studentIsars => this.collection();
}

final StudentIsarSchema = CollectionSchema(
  name: r'StudentIsar',
  id: int.parse('-606335334415671381'),
  properties: {
    r'apiId': PropertySchema(id: 0, name: r'apiId', type: IsarType.string),
    r'email': PropertySchema(id: 1, name: r'email', type: IsarType.string),
    r'examDate': PropertySchema(
      id: 2,
      name: r'examDate',
      type: IsarType.dateTime,
    ),
    r'examLevel': PropertySchema(
      id: 3,
      name: r'examLevel',
      type: IsarType.string,
    ),
    r'name': PropertySchema(id: 4, name: r'name', type: IsarType.string),
    r'stream': PropertySchema(id: 5, name: r'stream', type: IsarType.string),
  },

  estimateSize: _studentIsarEstimateSize,
  serialize: _studentIsarSerialize,
  deserialize: _studentIsarDeserialize,
  deserializeProp: _studentIsarDeserializeProp,
  idName: r'id',
  indexes: {
    r'apiId': IndexSchema(
      id: int.parse('92618221247000178'),
      name: r'apiId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'apiId',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
  },
  links: {},
  embeddedSchemas: {},

  getId: _studentIsarGetId,
  getLinks: _studentIsarGetLinks,
  attach: _studentIsarAttach,
  version: '3.3.2',
);

int _studentIsarEstimateSize(
  StudentIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.apiId.length * 3;
  bytesCount += 3 + object.email.length * 3;
  {
    final value = object.examLevel;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.name.length * 3;
  {
    final value = object.stream;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _studentIsarSerialize(
  StudentIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.apiId);
  writer.writeString(offsets[1], object.email);
  writer.writeDateTime(offsets[2], object.examDate);
  writer.writeString(offsets[3], object.examLevel);
  writer.writeString(offsets[4], object.name);
  writer.writeString(offsets[5], object.stream);
}

StudentIsar _studentIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = StudentIsar();
  object.apiId = reader.readString(offsets[0]);
  object.email = reader.readString(offsets[1]);
  object.examDate = reader.readDateTimeOrNull(offsets[2]);
  object.examLevel = reader.readStringOrNull(offsets[3]);
  object.id = id;
  object.name = reader.readString(offsets[4]);
  object.stream = reader.readStringOrNull(offsets[5]);
  return object;
}

P _studentIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _studentIsarGetId(StudentIsar object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _studentIsarGetLinks(StudentIsar object) {
  return [];
}

void _studentIsarAttach(
  IsarCollection<dynamic> col,
  Id id,
  StudentIsar object,
) {
  object.id = id;
}

extension StudentIsarByIndex on IsarCollection<StudentIsar> {
  Future<StudentIsar?> getByApiId(String apiId) {
    return getByIndex(r'apiId', [apiId]);
  }

  StudentIsar? getByApiIdSync(String apiId) {
    return getByIndexSync(r'apiId', [apiId]);
  }

  Future<bool> deleteByApiId(String apiId) {
    return deleteByIndex(r'apiId', [apiId]);
  }

  bool deleteByApiIdSync(String apiId) {
    return deleteByIndexSync(r'apiId', [apiId]);
  }

  Future<List<StudentIsar?>> getAllByApiId(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'apiId', values);
  }

  List<StudentIsar?> getAllByApiIdSync(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'apiId', values);
  }

  Future<int> deleteAllByApiId(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'apiId', values);
  }

  int deleteAllByApiIdSync(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'apiId', values);
  }

  Future<Id> putByApiId(StudentIsar object) {
    return putByIndex(r'apiId', object);
  }

  Id putByApiIdSync(StudentIsar object, {bool saveLinks = true}) {
    return putByIndexSync(r'apiId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByApiId(List<StudentIsar> objects) {
    return putAllByIndex(r'apiId', objects);
  }

  List<Id> putAllByApiIdSync(
    List<StudentIsar> objects, {
    bool saveLinks = true,
  }) {
    return putAllByIndexSync(r'apiId', objects, saveLinks: saveLinks);
  }
}

extension StudentIsarQueryWhereSort
    on QueryBuilder<StudentIsar, StudentIsar, QWhere> {
  QueryBuilder<StudentIsar, StudentIsar, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension StudentIsarQueryWhere
    on QueryBuilder<StudentIsar, StudentIsar, QWhereClause> {
  QueryBuilder<StudentIsar, StudentIsar, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterWhereClause> idNotEqualTo(
    Id id,
  ) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterWhereClause> idGreaterThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterWhereClause> idLessThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerId,
          includeLower: includeLower,
          upper: upperId,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterWhereClause> apiIdEqualTo(
    String apiId,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'apiId', value: [apiId]),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterWhereClause> apiIdNotEqualTo(
    String apiId,
  ) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [],
                upper: [apiId],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [apiId],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [apiId],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [],
                upper: [apiId],
                includeUpper: false,
              ),
            );
      }
    });
  }
}

extension StudentIsarQueryFilter
    on QueryBuilder<StudentIsar, StudentIsar, QFilterCondition> {
  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> apiIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition>
  apiIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> apiIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> apiIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'apiId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> apiIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> apiIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> apiIdContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> apiIdMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'apiId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> apiIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'apiId', value: ''),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition>
  apiIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'apiId', value: ''),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> emailEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'email',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition>
  emailGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'email',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> emailLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'email',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> emailBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'email',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'email',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'email',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> emailContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'email',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> emailMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'email',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'email', value: ''),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition>
  emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'email', value: ''),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition>
  examDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'examDate'),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition>
  examDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'examDate'),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> examDateEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'examDate', value: value),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition>
  examDateGreaterThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'examDate',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition>
  examDateLessThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'examDate',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> examDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'examDate',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition>
  examLevelIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'examLevel'),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition>
  examLevelIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'examLevel'),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition>
  examLevelEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'examLevel',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition>
  examLevelGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'examLevel',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition>
  examLevelLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'examLevel',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition>
  examLevelBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'examLevel',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition>
  examLevelStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'examLevel',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition>
  examLevelEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'examLevel',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition>
  examLevelContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'examLevel',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition>
  examLevelMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'examLevel',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition>
  examLevelIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'examLevel', value: ''),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition>
  examLevelIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'examLevel', value: ''),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> idEqualTo(
    Id value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'id',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'name',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> nameContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> nameMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'name',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'name', value: ''),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition>
  nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'name', value: ''),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> streamIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'stream'),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition>
  streamIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'stream'),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> streamEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'stream',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition>
  streamGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'stream',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> streamLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'stream',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> streamBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'stream',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition>
  streamStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'stream',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> streamEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'stream',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> streamContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'stream',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition> streamMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'stream',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition>
  streamIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'stream', value: ''),
      );
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterFilterCondition>
  streamIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'stream', value: ''),
      );
    });
  }
}

extension StudentIsarQueryObject
    on QueryBuilder<StudentIsar, StudentIsar, QFilterCondition> {}

extension StudentIsarQueryLinks
    on QueryBuilder<StudentIsar, StudentIsar, QFilterCondition> {}

extension StudentIsarQuerySortBy
    on QueryBuilder<StudentIsar, StudentIsar, QSortBy> {
  QueryBuilder<StudentIsar, StudentIsar, QAfterSortBy> sortByApiId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.asc);
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterSortBy> sortByApiIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.desc);
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterSortBy> sortByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterSortBy> sortByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterSortBy> sortByExamDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'examDate', Sort.asc);
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterSortBy> sortByExamDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'examDate', Sort.desc);
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterSortBy> sortByExamLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'examLevel', Sort.asc);
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterSortBy> sortByExamLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'examLevel', Sort.desc);
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterSortBy> sortByStream() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stream', Sort.asc);
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterSortBy> sortByStreamDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stream', Sort.desc);
    });
  }
}

extension StudentIsarQuerySortThenBy
    on QueryBuilder<StudentIsar, StudentIsar, QSortThenBy> {
  QueryBuilder<StudentIsar, StudentIsar, QAfterSortBy> thenByApiId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.asc);
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterSortBy> thenByApiIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.desc);
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterSortBy> thenByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterSortBy> thenByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterSortBy> thenByExamDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'examDate', Sort.asc);
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterSortBy> thenByExamDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'examDate', Sort.desc);
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterSortBy> thenByExamLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'examLevel', Sort.asc);
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterSortBy> thenByExamLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'examLevel', Sort.desc);
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterSortBy> thenByStream() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stream', Sort.asc);
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QAfterSortBy> thenByStreamDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stream', Sort.desc);
    });
  }
}

extension StudentIsarQueryWhereDistinct
    on QueryBuilder<StudentIsar, StudentIsar, QDistinct> {
  QueryBuilder<StudentIsar, StudentIsar, QDistinct> distinctByApiId({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'apiId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QDistinct> distinctByEmail({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'email', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QDistinct> distinctByExamDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'examDate');
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QDistinct> distinctByExamLevel({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'examLevel', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QDistinct> distinctByName({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StudentIsar, StudentIsar, QDistinct> distinctByStream({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stream', caseSensitive: caseSensitive);
    });
  }
}

extension StudentIsarQueryProperty
    on QueryBuilder<StudentIsar, StudentIsar, QQueryProperty> {
  QueryBuilder<StudentIsar, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<StudentIsar, String, QQueryOperations> apiIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'apiId');
    });
  }

  QueryBuilder<StudentIsar, String, QQueryOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'email');
    });
  }

  QueryBuilder<StudentIsar, DateTime?, QQueryOperations> examDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'examDate');
    });
  }

  QueryBuilder<StudentIsar, String?, QQueryOperations> examLevelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'examLevel');
    });
  }

  QueryBuilder<StudentIsar, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<StudentIsar, String?, QQueryOperations> streamProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stream');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetParentStudentLinkIsarCollection on Isar {
  IsarCollection<ParentStudentLinkIsar> get parentStudentLinkIsars =>
      this.collection();
}

final ParentStudentLinkIsarSchema = CollectionSchema(
  name: r'ParentStudentLinkIsar',
  id: int.parse('8981613349853464434'),
  properties: {
    r'apiId': PropertySchema(id: 0, name: r'apiId', type: IsarType.string),
    r'parentId': PropertySchema(
      id: 1,
      name: r'parentId',
      type: IsarType.string,
    ),
    r'relationship': PropertySchema(
      id: 2,
      name: r'relationship',
      type: IsarType.string,
    ),
    r'studentId': PropertySchema(
      id: 3,
      name: r'studentId',
      type: IsarType.string,
    ),
    r'verified': PropertySchema(id: 4, name: r'verified', type: IsarType.bool),
  },

  estimateSize: _parentStudentLinkIsarEstimateSize,
  serialize: _parentStudentLinkIsarSerialize,
  deserialize: _parentStudentLinkIsarDeserialize,
  deserializeProp: _parentStudentLinkIsarDeserializeProp,
  idName: r'id',
  indexes: {
    r'apiId': IndexSchema(
      id: int.parse('92618221247000178'),
      name: r'apiId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'apiId',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
  },
  links: {},
  embeddedSchemas: {},

  getId: _parentStudentLinkIsarGetId,
  getLinks: _parentStudentLinkIsarGetLinks,
  attach: _parentStudentLinkIsarAttach,
  version: '3.3.2',
);

int _parentStudentLinkIsarEstimateSize(
  ParentStudentLinkIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.apiId.length * 3;
  bytesCount += 3 + object.parentId.length * 3;
  bytesCount += 3 + object.relationship.length * 3;
  bytesCount += 3 + object.studentId.length * 3;
  return bytesCount;
}

void _parentStudentLinkIsarSerialize(
  ParentStudentLinkIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.apiId);
  writer.writeString(offsets[1], object.parentId);
  writer.writeString(offsets[2], object.relationship);
  writer.writeString(offsets[3], object.studentId);
  writer.writeBool(offsets[4], object.verified);
}

ParentStudentLinkIsar _parentStudentLinkIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ParentStudentLinkIsar();
  object.apiId = reader.readString(offsets[0]);
  object.id = id;
  object.parentId = reader.readString(offsets[1]);
  object.relationship = reader.readString(offsets[2]);
  object.studentId = reader.readString(offsets[3]);
  object.verified = reader.readBool(offsets[4]);
  return object;
}

P _parentStudentLinkIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _parentStudentLinkIsarGetId(ParentStudentLinkIsar object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _parentStudentLinkIsarGetLinks(
  ParentStudentLinkIsar object,
) {
  return [];
}

void _parentStudentLinkIsarAttach(
  IsarCollection<dynamic> col,
  Id id,
  ParentStudentLinkIsar object,
) {
  object.id = id;
}

extension ParentStudentLinkIsarByIndex
    on IsarCollection<ParentStudentLinkIsar> {
  Future<ParentStudentLinkIsar?> getByApiId(String apiId) {
    return getByIndex(r'apiId', [apiId]);
  }

  ParentStudentLinkIsar? getByApiIdSync(String apiId) {
    return getByIndexSync(r'apiId', [apiId]);
  }

  Future<bool> deleteByApiId(String apiId) {
    return deleteByIndex(r'apiId', [apiId]);
  }

  bool deleteByApiIdSync(String apiId) {
    return deleteByIndexSync(r'apiId', [apiId]);
  }

  Future<List<ParentStudentLinkIsar?>> getAllByApiId(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'apiId', values);
  }

  List<ParentStudentLinkIsar?> getAllByApiIdSync(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'apiId', values);
  }

  Future<int> deleteAllByApiId(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'apiId', values);
  }

  int deleteAllByApiIdSync(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'apiId', values);
  }

  Future<Id> putByApiId(ParentStudentLinkIsar object) {
    return putByIndex(r'apiId', object);
  }

  Id putByApiIdSync(ParentStudentLinkIsar object, {bool saveLinks = true}) {
    return putByIndexSync(r'apiId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByApiId(List<ParentStudentLinkIsar> objects) {
    return putAllByIndex(r'apiId', objects);
  }

  List<Id> putAllByApiIdSync(
    List<ParentStudentLinkIsar> objects, {
    bool saveLinks = true,
  }) {
    return putAllByIndexSync(r'apiId', objects, saveLinks: saveLinks);
  }
}

extension ParentStudentLinkIsarQueryWhereSort
    on QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QWhere> {
  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QAfterWhere>
  anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ParentStudentLinkIsarQueryWhere
    on
        QueryBuilder<
          ParentStudentLinkIsar,
          ParentStudentLinkIsar,
          QWhereClause
        > {
  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QAfterWhereClause>
  idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QAfterWhereClause>
  idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QAfterWhereClause>
  idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QAfterWhereClause>
  idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QAfterWhereClause>
  idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerId,
          includeLower: includeLower,
          upper: upperId,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QAfterWhereClause>
  apiIdEqualTo(String apiId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'apiId', value: [apiId]),
      );
    });
  }

  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QAfterWhereClause>
  apiIdNotEqualTo(String apiId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [],
                upper: [apiId],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [apiId],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [apiId],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [],
                upper: [apiId],
                includeUpper: false,
              ),
            );
      }
    });
  }
}

extension ParentStudentLinkIsarQueryFilter
    on
        QueryBuilder<
          ParentStudentLinkIsar,
          ParentStudentLinkIsar,
          QFilterCondition
        > {
  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  apiIdEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  apiIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  apiIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  apiIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'apiId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  apiIdStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  apiIdEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  apiIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  apiIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'apiId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  apiIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'apiId', value: ''),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  apiIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'apiId', value: ''),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  idGreaterThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  idLessThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'id',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  parentIdEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'parentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  parentIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'parentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  parentIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'parentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  parentIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'parentId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  parentIdStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'parentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  parentIdEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'parentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  parentIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'parentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  parentIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'parentId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  parentIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'parentId', value: ''),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  parentIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'parentId', value: ''),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  relationshipEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'relationship',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  relationshipGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'relationship',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  relationshipLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'relationship',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  relationshipBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'relationship',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  relationshipStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'relationship',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  relationshipEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'relationship',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  relationshipContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'relationship',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  relationshipMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'relationship',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  relationshipIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'relationship', value: ''),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  relationshipIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'relationship', value: ''),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  studentIdEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  studentIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  studentIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  studentIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'studentId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  studentIdStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  studentIdEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  studentIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  studentIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'studentId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  studentIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'studentId', value: ''),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  studentIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'studentId', value: ''),
      );
    });
  }

  QueryBuilder<
    ParentStudentLinkIsar,
    ParentStudentLinkIsar,
    QAfterFilterCondition
  >
  verifiedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'verified', value: value),
      );
    });
  }
}

extension ParentStudentLinkIsarQueryObject
    on
        QueryBuilder<
          ParentStudentLinkIsar,
          ParentStudentLinkIsar,
          QFilterCondition
        > {}

extension ParentStudentLinkIsarQueryLinks
    on
        QueryBuilder<
          ParentStudentLinkIsar,
          ParentStudentLinkIsar,
          QFilterCondition
        > {}

extension ParentStudentLinkIsarQuerySortBy
    on QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QSortBy> {
  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QAfterSortBy>
  sortByApiId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.asc);
    });
  }

  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QAfterSortBy>
  sortByApiIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.desc);
    });
  }

  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QAfterSortBy>
  sortByParentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentId', Sort.asc);
    });
  }

  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QAfterSortBy>
  sortByParentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentId', Sort.desc);
    });
  }

  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QAfterSortBy>
  sortByRelationship() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relationship', Sort.asc);
    });
  }

  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QAfterSortBy>
  sortByRelationshipDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relationship', Sort.desc);
    });
  }

  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QAfterSortBy>
  sortByStudentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.asc);
    });
  }

  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QAfterSortBy>
  sortByStudentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.desc);
    });
  }

  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QAfterSortBy>
  sortByVerified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'verified', Sort.asc);
    });
  }

  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QAfterSortBy>
  sortByVerifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'verified', Sort.desc);
    });
  }
}

extension ParentStudentLinkIsarQuerySortThenBy
    on QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QSortThenBy> {
  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QAfterSortBy>
  thenByApiId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.asc);
    });
  }

  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QAfterSortBy>
  thenByApiIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.desc);
    });
  }

  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QAfterSortBy>
  thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QAfterSortBy>
  thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QAfterSortBy>
  thenByParentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentId', Sort.asc);
    });
  }

  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QAfterSortBy>
  thenByParentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentId', Sort.desc);
    });
  }

  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QAfterSortBy>
  thenByRelationship() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relationship', Sort.asc);
    });
  }

  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QAfterSortBy>
  thenByRelationshipDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relationship', Sort.desc);
    });
  }

  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QAfterSortBy>
  thenByStudentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.asc);
    });
  }

  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QAfterSortBy>
  thenByStudentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.desc);
    });
  }

  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QAfterSortBy>
  thenByVerified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'verified', Sort.asc);
    });
  }

  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QAfterSortBy>
  thenByVerifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'verified', Sort.desc);
    });
  }
}

extension ParentStudentLinkIsarQueryWhereDistinct
    on QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QDistinct> {
  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QDistinct>
  distinctByApiId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'apiId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QDistinct>
  distinctByParentId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'parentId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QDistinct>
  distinctByRelationship({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'relationship', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QDistinct>
  distinctByStudentId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'studentId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ParentStudentLinkIsar, ParentStudentLinkIsar, QDistinct>
  distinctByVerified() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'verified');
    });
  }
}

extension ParentStudentLinkIsarQueryProperty
    on
        QueryBuilder<
          ParentStudentLinkIsar,
          ParentStudentLinkIsar,
          QQueryProperty
        > {
  QueryBuilder<ParentStudentLinkIsar, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ParentStudentLinkIsar, String, QQueryOperations>
  apiIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'apiId');
    });
  }

  QueryBuilder<ParentStudentLinkIsar, String, QQueryOperations>
  parentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'parentId');
    });
  }

  QueryBuilder<ParentStudentLinkIsar, String, QQueryOperations>
  relationshipProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'relationship');
    });
  }

  QueryBuilder<ParentStudentLinkIsar, String, QQueryOperations>
  studentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'studentId');
    });
  }

  QueryBuilder<ParentStudentLinkIsar, bool, QQueryOperations>
  verifiedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'verified');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetExamSessionIsarCollection on Isar {
  IsarCollection<ExamSessionIsar> get examSessionIsars => this.collection();
}

final ExamSessionIsarSchema = CollectionSchema(
  name: r'ExamSessionIsar',
  id: int.parse('7096573672281027314'),
  properties: {
    r'answeredCount': PropertySchema(
      id: 0,
      name: r'answeredCount',
      type: IsarType.long,
    ),
    r'apiId': PropertySchema(id: 1, name: r'apiId', type: IsarType.string),
    r'endedAt': PropertySchema(
      id: 2,
      name: r'endedAt',
      type: IsarType.dateTime,
    ),
    r'examType': PropertySchema(
      id: 3,
      name: r'examType',
      type: IsarType.string,
    ),
    r'kioskLocked': PropertySchema(
      id: 4,
      name: r'kioskLocked',
      type: IsarType.bool,
    ),
    r'parentPinVerified': PropertySchema(
      id: 5,
      name: r'parentPinVerified',
      type: IsarType.bool,
    ),
    r'startedAt': PropertySchema(
      id: 6,
      name: r'startedAt',
      type: IsarType.dateTime,
    ),
    r'status': PropertySchema(id: 7, name: r'status', type: IsarType.string),
    r'studentId': PropertySchema(
      id: 8,
      name: r'studentId',
      type: IsarType.string,
    ),
    r'totalQuestions': PropertySchema(
      id: 9,
      name: r'totalQuestions',
      type: IsarType.long,
    ),
  },

  estimateSize: _examSessionIsarEstimateSize,
  serialize: _examSessionIsarSerialize,
  deserialize: _examSessionIsarDeserialize,
  deserializeProp: _examSessionIsarDeserializeProp,
  idName: r'id',
  indexes: {
    r'apiId': IndexSchema(
      id: int.parse('92618221247000178'),
      name: r'apiId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'apiId',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
  },
  links: {},
  embeddedSchemas: {},

  getId: _examSessionIsarGetId,
  getLinks: _examSessionIsarGetLinks,
  attach: _examSessionIsarAttach,
  version: '3.3.2',
);

int _examSessionIsarEstimateSize(
  ExamSessionIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.apiId.length * 3;
  bytesCount += 3 + object.examType.length * 3;
  bytesCount += 3 + object.status.length * 3;
  bytesCount += 3 + object.studentId.length * 3;
  return bytesCount;
}

void _examSessionIsarSerialize(
  ExamSessionIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.answeredCount);
  writer.writeString(offsets[1], object.apiId);
  writer.writeDateTime(offsets[2], object.endedAt);
  writer.writeString(offsets[3], object.examType);
  writer.writeBool(offsets[4], object.kioskLocked);
  writer.writeBool(offsets[5], object.parentPinVerified);
  writer.writeDateTime(offsets[6], object.startedAt);
  writer.writeString(offsets[7], object.status);
  writer.writeString(offsets[8], object.studentId);
  writer.writeLong(offsets[9], object.totalQuestions);
}

ExamSessionIsar _examSessionIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ExamSessionIsar();
  object.answeredCount = reader.readLongOrNull(offsets[0]);
  object.apiId = reader.readString(offsets[1]);
  object.endedAt = reader.readDateTimeOrNull(offsets[2]);
  object.examType = reader.readString(offsets[3]);
  object.id = id;
  object.kioskLocked = reader.readBool(offsets[4]);
  object.parentPinVerified = reader.readBool(offsets[5]);
  object.startedAt = reader.readDateTimeOrNull(offsets[6]);
  object.status = reader.readString(offsets[7]);
  object.studentId = reader.readString(offsets[8]);
  object.totalQuestions = reader.readLongOrNull(offsets[9]);
  return object;
}

P _examSessionIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _examSessionIsarGetId(ExamSessionIsar object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _examSessionIsarGetLinks(ExamSessionIsar object) {
  return [];
}

void _examSessionIsarAttach(
  IsarCollection<dynamic> col,
  Id id,
  ExamSessionIsar object,
) {
  object.id = id;
}

extension ExamSessionIsarByIndex on IsarCollection<ExamSessionIsar> {
  Future<ExamSessionIsar?> getByApiId(String apiId) {
    return getByIndex(r'apiId', [apiId]);
  }

  ExamSessionIsar? getByApiIdSync(String apiId) {
    return getByIndexSync(r'apiId', [apiId]);
  }

  Future<bool> deleteByApiId(String apiId) {
    return deleteByIndex(r'apiId', [apiId]);
  }

  bool deleteByApiIdSync(String apiId) {
    return deleteByIndexSync(r'apiId', [apiId]);
  }

  Future<List<ExamSessionIsar?>> getAllByApiId(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'apiId', values);
  }

  List<ExamSessionIsar?> getAllByApiIdSync(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'apiId', values);
  }

  Future<int> deleteAllByApiId(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'apiId', values);
  }

  int deleteAllByApiIdSync(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'apiId', values);
  }

  Future<Id> putByApiId(ExamSessionIsar object) {
    return putByIndex(r'apiId', object);
  }

  Id putByApiIdSync(ExamSessionIsar object, {bool saveLinks = true}) {
    return putByIndexSync(r'apiId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByApiId(List<ExamSessionIsar> objects) {
    return putAllByIndex(r'apiId', objects);
  }

  List<Id> putAllByApiIdSync(
    List<ExamSessionIsar> objects, {
    bool saveLinks = true,
  }) {
    return putAllByIndexSync(r'apiId', objects, saveLinks: saveLinks);
  }
}

extension ExamSessionIsarQueryWhereSort
    on QueryBuilder<ExamSessionIsar, ExamSessionIsar, QWhere> {
  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ExamSessionIsarQueryWhere
    on QueryBuilder<ExamSessionIsar, ExamSessionIsar, QWhereClause> {
  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterWhereClause> idEqualTo(
    Id id,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterWhereClause>
  idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterWhereClause>
  idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterWhereClause> idLessThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerId,
          includeLower: includeLower,
          upper: upperId,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterWhereClause>
  apiIdEqualTo(String apiId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'apiId', value: [apiId]),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterWhereClause>
  apiIdNotEqualTo(String apiId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [],
                upper: [apiId],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [apiId],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [apiId],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [],
                upper: [apiId],
                includeUpper: false,
              ),
            );
      }
    });
  }
}

extension ExamSessionIsarQueryFilter
    on QueryBuilder<ExamSessionIsar, ExamSessionIsar, QFilterCondition> {
  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  answeredCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'answeredCount'),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  answeredCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'answeredCount'),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  answeredCountEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'answeredCount', value: value),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  answeredCountGreaterThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'answeredCount',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  answeredCountLessThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'answeredCount',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  answeredCountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'answeredCount',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  apiIdEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  apiIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  apiIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  apiIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'apiId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  apiIdStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  apiIdEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  apiIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  apiIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'apiId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  apiIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'apiId', value: ''),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  apiIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'apiId', value: ''),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  endedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'endedAt'),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  endedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'endedAt'),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  endedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'endedAt', value: value),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  endedAtGreaterThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'endedAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  endedAtLessThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'endedAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  endedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'endedAt',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  examTypeEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'examType',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  examTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'examType',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  examTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'examType',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  examTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'examType',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  examTypeStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'examType',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  examTypeEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'examType',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  examTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'examType',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  examTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'examType',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  examTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'examType', value: ''),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  examTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'examType', value: ''),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  idGreaterThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  idLessThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'id',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  kioskLockedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'kioskLocked', value: value),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  parentPinVerifiedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'parentPinVerified', value: value),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  startedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'startedAt'),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  startedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'startedAt'),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  startedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'startedAt', value: value),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  startedAtGreaterThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'startedAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  startedAtLessThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'startedAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  startedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'startedAt',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  statusEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'status',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  statusGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'status',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  statusLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'status',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  statusBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'status',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  statusStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'status',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  statusEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'status',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  statusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'status',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  statusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'status',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'status', value: ''),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'status', value: ''),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  studentIdEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  studentIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  studentIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  studentIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'studentId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  studentIdStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  studentIdEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  studentIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  studentIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'studentId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  studentIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'studentId', value: ''),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  studentIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'studentId', value: ''),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  totalQuestionsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'totalQuestions'),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  totalQuestionsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'totalQuestions'),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  totalQuestionsEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'totalQuestions', value: value),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  totalQuestionsGreaterThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'totalQuestions',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  totalQuestionsLessThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'totalQuestions',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterFilterCondition>
  totalQuestionsBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'totalQuestions',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }
}

extension ExamSessionIsarQueryObject
    on QueryBuilder<ExamSessionIsar, ExamSessionIsar, QFilterCondition> {}

extension ExamSessionIsarQueryLinks
    on QueryBuilder<ExamSessionIsar, ExamSessionIsar, QFilterCondition> {}

extension ExamSessionIsarQuerySortBy
    on QueryBuilder<ExamSessionIsar, ExamSessionIsar, QSortBy> {
  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  sortByAnsweredCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answeredCount', Sort.asc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  sortByAnsweredCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answeredCount', Sort.desc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy> sortByApiId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.asc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  sortByApiIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.desc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy> sortByEndedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endedAt', Sort.asc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  sortByEndedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endedAt', Sort.desc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  sortByExamType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'examType', Sort.asc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  sortByExamTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'examType', Sort.desc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  sortByKioskLocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kioskLocked', Sort.asc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  sortByKioskLockedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kioskLocked', Sort.desc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  sortByParentPinVerified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentPinVerified', Sort.asc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  sortByParentPinVerifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentPinVerified', Sort.desc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  sortByStartedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedAt', Sort.asc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  sortByStartedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedAt', Sort.desc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  sortByStudentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.asc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  sortByStudentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.desc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  sortByTotalQuestions() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalQuestions', Sort.asc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  sortByTotalQuestionsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalQuestions', Sort.desc);
    });
  }
}

extension ExamSessionIsarQuerySortThenBy
    on QueryBuilder<ExamSessionIsar, ExamSessionIsar, QSortThenBy> {
  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  thenByAnsweredCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answeredCount', Sort.asc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  thenByAnsweredCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answeredCount', Sort.desc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy> thenByApiId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.asc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  thenByApiIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.desc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy> thenByEndedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endedAt', Sort.asc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  thenByEndedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endedAt', Sort.desc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  thenByExamType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'examType', Sort.asc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  thenByExamTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'examType', Sort.desc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  thenByKioskLocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kioskLocked', Sort.asc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  thenByKioskLockedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kioskLocked', Sort.desc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  thenByParentPinVerified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentPinVerified', Sort.asc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  thenByParentPinVerifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentPinVerified', Sort.desc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  thenByStartedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedAt', Sort.asc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  thenByStartedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedAt', Sort.desc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  thenByStudentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.asc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  thenByStudentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.desc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  thenByTotalQuestions() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalQuestions', Sort.asc);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QAfterSortBy>
  thenByTotalQuestionsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalQuestions', Sort.desc);
    });
  }
}

extension ExamSessionIsarQueryWhereDistinct
    on QueryBuilder<ExamSessionIsar, ExamSessionIsar, QDistinct> {
  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QDistinct>
  distinctByAnsweredCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'answeredCount');
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QDistinct> distinctByApiId({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'apiId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QDistinct>
  distinctByEndedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'endedAt');
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QDistinct> distinctByExamType({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'examType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QDistinct>
  distinctByKioskLocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'kioskLocked');
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QDistinct>
  distinctByParentPinVerified() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'parentPinVerified');
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QDistinct>
  distinctByStartedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'startedAt');
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QDistinct> distinctByStatus({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QDistinct>
  distinctByStudentId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'studentId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ExamSessionIsar, ExamSessionIsar, QDistinct>
  distinctByTotalQuestions() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalQuestions');
    });
  }
}

extension ExamSessionIsarQueryProperty
    on QueryBuilder<ExamSessionIsar, ExamSessionIsar, QQueryProperty> {
  QueryBuilder<ExamSessionIsar, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ExamSessionIsar, int?, QQueryOperations>
  answeredCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'answeredCount');
    });
  }

  QueryBuilder<ExamSessionIsar, String, QQueryOperations> apiIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'apiId');
    });
  }

  QueryBuilder<ExamSessionIsar, DateTime?, QQueryOperations> endedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'endedAt');
    });
  }

  QueryBuilder<ExamSessionIsar, String, QQueryOperations> examTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'examType');
    });
  }

  QueryBuilder<ExamSessionIsar, bool, QQueryOperations> kioskLockedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'kioskLocked');
    });
  }

  QueryBuilder<ExamSessionIsar, bool, QQueryOperations>
  parentPinVerifiedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'parentPinVerified');
    });
  }

  QueryBuilder<ExamSessionIsar, DateTime?, QQueryOperations>
  startedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'startedAt');
    });
  }

  QueryBuilder<ExamSessionIsar, String, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<ExamSessionIsar, String, QQueryOperations> studentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'studentId');
    });
  }

  QueryBuilder<ExamSessionIsar, int?, QQueryOperations>
  totalQuestionsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalQuestions');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetStudyActivityIsarCollection on Isar {
  IsarCollection<StudyActivityIsar> get studyActivityIsars => this.collection();
}

final StudyActivityIsarSchema = CollectionSchema(
  name: r'StudyActivityIsar',
  id: int.parse('-3232176875318342491'),
  properties: {
    r'activityDate': PropertySchema(
      id: 0,
      name: r'activityDate',
      type: IsarType.dateTime,
    ),
    r'activityType': PropertySchema(
      id: 1,
      name: r'activityType',
      type: IsarType.string,
    ),
    r'apiId': PropertySchema(id: 2, name: r'apiId', type: IsarType.string),
    r'chapterId': PropertySchema(
      id: 3,
      name: r'chapterId',
      type: IsarType.string,
    ),
    r'conceptId': PropertySchema(
      id: 4,
      name: r'conceptId',
      type: IsarType.string,
    ),
    r'durationMinutes': PropertySchema(
      id: 5,
      name: r'durationMinutes',
      type: IsarType.long,
    ),
    r'studentId': PropertySchema(
      id: 6,
      name: r'studentId',
      type: IsarType.string,
    ),
  },

  estimateSize: _studyActivityIsarEstimateSize,
  serialize: _studyActivityIsarSerialize,
  deserialize: _studyActivityIsarDeserialize,
  deserializeProp: _studyActivityIsarDeserializeProp,
  idName: r'id',
  indexes: {
    r'apiId': IndexSchema(
      id: int.parse('92618221247000178'),
      name: r'apiId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'apiId',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
  },
  links: {},
  embeddedSchemas: {},

  getId: _studyActivityIsarGetId,
  getLinks: _studyActivityIsarGetLinks,
  attach: _studyActivityIsarAttach,
  version: '3.3.2',
);

int _studyActivityIsarEstimateSize(
  StudyActivityIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.activityType.length * 3;
  bytesCount += 3 + object.apiId.length * 3;
  {
    final value = object.chapterId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.conceptId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.studentId.length * 3;
  return bytesCount;
}

void _studyActivityIsarSerialize(
  StudyActivityIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.activityDate);
  writer.writeString(offsets[1], object.activityType);
  writer.writeString(offsets[2], object.apiId);
  writer.writeString(offsets[3], object.chapterId);
  writer.writeString(offsets[4], object.conceptId);
  writer.writeLong(offsets[5], object.durationMinutes);
  writer.writeString(offsets[6], object.studentId);
}

StudyActivityIsar _studyActivityIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = StudyActivityIsar();
  object.activityDate = reader.readDateTime(offsets[0]);
  object.activityType = reader.readString(offsets[1]);
  object.apiId = reader.readString(offsets[2]);
  object.chapterId = reader.readStringOrNull(offsets[3]);
  object.conceptId = reader.readStringOrNull(offsets[4]);
  object.durationMinutes = reader.readLongOrNull(offsets[5]);
  object.id = id;
  object.studentId = reader.readString(offsets[6]);
  return object;
}

P _studyActivityIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _studyActivityIsarGetId(StudyActivityIsar object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _studyActivityIsarGetLinks(
  StudyActivityIsar object,
) {
  return [];
}

void _studyActivityIsarAttach(
  IsarCollection<dynamic> col,
  Id id,
  StudyActivityIsar object,
) {
  object.id = id;
}

extension StudyActivityIsarByIndex on IsarCollection<StudyActivityIsar> {
  Future<StudyActivityIsar?> getByApiId(String apiId) {
    return getByIndex(r'apiId', [apiId]);
  }

  StudyActivityIsar? getByApiIdSync(String apiId) {
    return getByIndexSync(r'apiId', [apiId]);
  }

  Future<bool> deleteByApiId(String apiId) {
    return deleteByIndex(r'apiId', [apiId]);
  }

  bool deleteByApiIdSync(String apiId) {
    return deleteByIndexSync(r'apiId', [apiId]);
  }

  Future<List<StudyActivityIsar?>> getAllByApiId(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'apiId', values);
  }

  List<StudyActivityIsar?> getAllByApiIdSync(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'apiId', values);
  }

  Future<int> deleteAllByApiId(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'apiId', values);
  }

  int deleteAllByApiIdSync(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'apiId', values);
  }

  Future<Id> putByApiId(StudyActivityIsar object) {
    return putByIndex(r'apiId', object);
  }

  Id putByApiIdSync(StudyActivityIsar object, {bool saveLinks = true}) {
    return putByIndexSync(r'apiId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByApiId(List<StudyActivityIsar> objects) {
    return putAllByIndex(r'apiId', objects);
  }

  List<Id> putAllByApiIdSync(
    List<StudyActivityIsar> objects, {
    bool saveLinks = true,
  }) {
    return putAllByIndexSync(r'apiId', objects, saveLinks: saveLinks);
  }
}

extension StudyActivityIsarQueryWhereSort
    on QueryBuilder<StudyActivityIsar, StudyActivityIsar, QWhere> {
  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension StudyActivityIsarQueryWhere
    on QueryBuilder<StudyActivityIsar, StudyActivityIsar, QWhereClause> {
  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterWhereClause>
  idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterWhereClause>
  idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterWhereClause>
  idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterWhereClause>
  idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterWhereClause>
  idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerId,
          includeLower: includeLower,
          upper: upperId,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterWhereClause>
  apiIdEqualTo(String apiId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'apiId', value: [apiId]),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterWhereClause>
  apiIdNotEqualTo(String apiId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [],
                upper: [apiId],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [apiId],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [apiId],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [],
                upper: [apiId],
                includeUpper: false,
              ),
            );
      }
    });
  }
}

extension StudyActivityIsarQueryFilter
    on QueryBuilder<StudyActivityIsar, StudyActivityIsar, QFilterCondition> {
  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  activityDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'activityDate', value: value),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  activityDateGreaterThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'activityDate',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  activityDateLessThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'activityDate',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  activityDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'activityDate',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  activityTypeEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'activityType',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  activityTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'activityType',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  activityTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'activityType',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  activityTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'activityType',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  activityTypeStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'activityType',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  activityTypeEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'activityType',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  activityTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'activityType',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  activityTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'activityType',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  activityTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'activityType', value: ''),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  activityTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'activityType', value: ''),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  apiIdEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  apiIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  apiIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  apiIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'apiId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  apiIdStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  apiIdEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  apiIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  apiIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'apiId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  apiIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'apiId', value: ''),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  apiIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'apiId', value: ''),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  chapterIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'chapterId'),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  chapterIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'chapterId'),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  chapterIdEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'chapterId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  chapterIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'chapterId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  chapterIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'chapterId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  chapterIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'chapterId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  chapterIdStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'chapterId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  chapterIdEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'chapterId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  chapterIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'chapterId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  chapterIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'chapterId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  chapterIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'chapterId', value: ''),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  chapterIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'chapterId', value: ''),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  conceptIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'conceptId'),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  conceptIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'conceptId'),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  conceptIdEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'conceptId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  conceptIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'conceptId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  conceptIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'conceptId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  conceptIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'conceptId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  conceptIdStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'conceptId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  conceptIdEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'conceptId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  conceptIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'conceptId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  conceptIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'conceptId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  conceptIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'conceptId', value: ''),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  conceptIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'conceptId', value: ''),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  durationMinutesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'durationMinutes'),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  durationMinutesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'durationMinutes'),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  durationMinutesEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'durationMinutes', value: value),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  durationMinutesGreaterThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'durationMinutes',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  durationMinutesLessThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'durationMinutes',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  durationMinutesBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'durationMinutes',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  idGreaterThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  idLessThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'id',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  studentIdEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  studentIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  studentIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  studentIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'studentId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  studentIdStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  studentIdEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  studentIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  studentIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'studentId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  studentIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'studentId', value: ''),
      );
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterFilterCondition>
  studentIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'studentId', value: ''),
      );
    });
  }
}

extension StudyActivityIsarQueryObject
    on QueryBuilder<StudyActivityIsar, StudyActivityIsar, QFilterCondition> {}

extension StudyActivityIsarQueryLinks
    on QueryBuilder<StudyActivityIsar, StudyActivityIsar, QFilterCondition> {}

extension StudyActivityIsarQuerySortBy
    on QueryBuilder<StudyActivityIsar, StudyActivityIsar, QSortBy> {
  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterSortBy>
  sortByActivityDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activityDate', Sort.asc);
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterSortBy>
  sortByActivityDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activityDate', Sort.desc);
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterSortBy>
  sortByActivityType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activityType', Sort.asc);
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterSortBy>
  sortByActivityTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activityType', Sort.desc);
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterSortBy>
  sortByApiId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.asc);
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterSortBy>
  sortByApiIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.desc);
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterSortBy>
  sortByChapterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chapterId', Sort.asc);
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterSortBy>
  sortByChapterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chapterId', Sort.desc);
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterSortBy>
  sortByConceptId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'conceptId', Sort.asc);
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterSortBy>
  sortByConceptIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'conceptId', Sort.desc);
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterSortBy>
  sortByDurationMinutes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationMinutes', Sort.asc);
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterSortBy>
  sortByDurationMinutesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationMinutes', Sort.desc);
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterSortBy>
  sortByStudentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.asc);
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterSortBy>
  sortByStudentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.desc);
    });
  }
}

extension StudyActivityIsarQuerySortThenBy
    on QueryBuilder<StudyActivityIsar, StudyActivityIsar, QSortThenBy> {
  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterSortBy>
  thenByActivityDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activityDate', Sort.asc);
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterSortBy>
  thenByActivityDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activityDate', Sort.desc);
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterSortBy>
  thenByActivityType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activityType', Sort.asc);
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterSortBy>
  thenByActivityTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activityType', Sort.desc);
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterSortBy>
  thenByApiId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.asc);
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterSortBy>
  thenByApiIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.desc);
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterSortBy>
  thenByChapterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chapterId', Sort.asc);
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterSortBy>
  thenByChapterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chapterId', Sort.desc);
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterSortBy>
  thenByConceptId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'conceptId', Sort.asc);
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterSortBy>
  thenByConceptIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'conceptId', Sort.desc);
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterSortBy>
  thenByDurationMinutes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationMinutes', Sort.asc);
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterSortBy>
  thenByDurationMinutesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationMinutes', Sort.desc);
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterSortBy>
  thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterSortBy>
  thenByStudentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.asc);
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QAfterSortBy>
  thenByStudentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.desc);
    });
  }
}

extension StudyActivityIsarQueryWhereDistinct
    on QueryBuilder<StudyActivityIsar, StudyActivityIsar, QDistinct> {
  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QDistinct>
  distinctByActivityDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'activityDate');
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QDistinct>
  distinctByActivityType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'activityType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QDistinct>
  distinctByApiId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'apiId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QDistinct>
  distinctByChapterId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'chapterId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QDistinct>
  distinctByConceptId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'conceptId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QDistinct>
  distinctByDurationMinutes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'durationMinutes');
    });
  }

  QueryBuilder<StudyActivityIsar, StudyActivityIsar, QDistinct>
  distinctByStudentId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'studentId', caseSensitive: caseSensitive);
    });
  }
}

extension StudyActivityIsarQueryProperty
    on QueryBuilder<StudyActivityIsar, StudyActivityIsar, QQueryProperty> {
  QueryBuilder<StudyActivityIsar, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<StudyActivityIsar, DateTime, QQueryOperations>
  activityDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'activityDate');
    });
  }

  QueryBuilder<StudyActivityIsar, String, QQueryOperations>
  activityTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'activityType');
    });
  }

  QueryBuilder<StudyActivityIsar, String, QQueryOperations> apiIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'apiId');
    });
  }

  QueryBuilder<StudyActivityIsar, String?, QQueryOperations>
  chapterIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'chapterId');
    });
  }

  QueryBuilder<StudyActivityIsar, String?, QQueryOperations>
  conceptIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'conceptId');
    });
  }

  QueryBuilder<StudyActivityIsar, int?, QQueryOperations>
  durationMinutesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'durationMinutes');
    });
  }

  QueryBuilder<StudyActivityIsar, String, QQueryOperations>
  studentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'studentId');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetQuizScoreIsarCollection on Isar {
  IsarCollection<QuizScoreIsar> get quizScoreIsars => this.collection();
}

final QuizScoreIsarSchema = CollectionSchema(
  name: r'QuizScoreIsar',
  id: int.parse('-9029260213645423997'),
  properties: {
    r'apiId': PropertySchema(id: 0, name: r'apiId', type: IsarType.string),
    r'chapter': PropertySchema(id: 1, name: r'chapter', type: IsarType.string),
    r'createdAt': PropertySchema(
      id: 2,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'score': PropertySchema(id: 3, name: r'score', type: IsarType.long),
    r'studentId': PropertySchema(
      id: 4,
      name: r'studentId',
      type: IsarType.string,
    ),
    r'total': PropertySchema(id: 5, name: r'total', type: IsarType.long),
  },

  estimateSize: _quizScoreIsarEstimateSize,
  serialize: _quizScoreIsarSerialize,
  deserialize: _quizScoreIsarDeserialize,
  deserializeProp: _quizScoreIsarDeserializeProp,
  idName: r'id',
  indexes: {
    r'apiId': IndexSchema(
      id: int.parse('92618221247000178'),
      name: r'apiId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'apiId',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
  },
  links: {},
  embeddedSchemas: {},

  getId: _quizScoreIsarGetId,
  getLinks: _quizScoreIsarGetLinks,
  attach: _quizScoreIsarAttach,
  version: '3.3.2',
);

int _quizScoreIsarEstimateSize(
  QuizScoreIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.apiId.length * 3;
  {
    final value = object.chapter;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.studentId.length * 3;
  return bytesCount;
}

void _quizScoreIsarSerialize(
  QuizScoreIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.apiId);
  writer.writeString(offsets[1], object.chapter);
  writer.writeDateTime(offsets[2], object.createdAt);
  writer.writeLong(offsets[3], object.score);
  writer.writeString(offsets[4], object.studentId);
  writer.writeLong(offsets[5], object.total);
}

QuizScoreIsar _quizScoreIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = QuizScoreIsar();
  object.apiId = reader.readString(offsets[0]);
  object.chapter = reader.readStringOrNull(offsets[1]);
  object.createdAt = reader.readDateTimeOrNull(offsets[2]);
  object.id = id;
  object.score = reader.readLongOrNull(offsets[3]);
  object.studentId = reader.readString(offsets[4]);
  object.total = reader.readLongOrNull(offsets[5]);
  return object;
}

P _quizScoreIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _quizScoreIsarGetId(QuizScoreIsar object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _quizScoreIsarGetLinks(QuizScoreIsar object) {
  return [];
}

void _quizScoreIsarAttach(
  IsarCollection<dynamic> col,
  Id id,
  QuizScoreIsar object,
) {
  object.id = id;
}

extension QuizScoreIsarByIndex on IsarCollection<QuizScoreIsar> {
  Future<QuizScoreIsar?> getByApiId(String apiId) {
    return getByIndex(r'apiId', [apiId]);
  }

  QuizScoreIsar? getByApiIdSync(String apiId) {
    return getByIndexSync(r'apiId', [apiId]);
  }

  Future<bool> deleteByApiId(String apiId) {
    return deleteByIndex(r'apiId', [apiId]);
  }

  bool deleteByApiIdSync(String apiId) {
    return deleteByIndexSync(r'apiId', [apiId]);
  }

  Future<List<QuizScoreIsar?>> getAllByApiId(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'apiId', values);
  }

  List<QuizScoreIsar?> getAllByApiIdSync(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'apiId', values);
  }

  Future<int> deleteAllByApiId(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'apiId', values);
  }

  int deleteAllByApiIdSync(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'apiId', values);
  }

  Future<Id> putByApiId(QuizScoreIsar object) {
    return putByIndex(r'apiId', object);
  }

  Id putByApiIdSync(QuizScoreIsar object, {bool saveLinks = true}) {
    return putByIndexSync(r'apiId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByApiId(List<QuizScoreIsar> objects) {
    return putAllByIndex(r'apiId', objects);
  }

  List<Id> putAllByApiIdSync(
    List<QuizScoreIsar> objects, {
    bool saveLinks = true,
  }) {
    return putAllByIndexSync(r'apiId', objects, saveLinks: saveLinks);
  }
}

extension QuizScoreIsarQueryWhereSort
    on QueryBuilder<QuizScoreIsar, QuizScoreIsar, QWhere> {
  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension QuizScoreIsarQueryWhere
    on QueryBuilder<QuizScoreIsar, QuizScoreIsar, QWhereClause> {
  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterWhereClause> idEqualTo(
    Id id,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterWhereClause> idNotEqualTo(
    Id id,
  ) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterWhereClause> idGreaterThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterWhereClause> idLessThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerId,
          includeLower: includeLower,
          upper: upperId,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterWhereClause> apiIdEqualTo(
    String apiId,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'apiId', value: [apiId]),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterWhereClause> apiIdNotEqualTo(
    String apiId,
  ) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [],
                upper: [apiId],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [apiId],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [apiId],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [],
                upper: [apiId],
                includeUpper: false,
              ),
            );
      }
    });
  }
}

extension QuizScoreIsarQueryFilter
    on QueryBuilder<QuizScoreIsar, QuizScoreIsar, QFilterCondition> {
  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  apiIdEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  apiIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  apiIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  apiIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'apiId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  apiIdStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  apiIdEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  apiIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  apiIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'apiId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  apiIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'apiId', value: ''),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  apiIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'apiId', value: ''),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  chapterIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'chapter'),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  chapterIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'chapter'),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  chapterEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'chapter',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  chapterGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'chapter',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  chapterLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'chapter',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  chapterBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'chapter',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  chapterStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'chapter',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  chapterEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'chapter',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  chapterContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'chapter',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  chapterMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'chapter',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  chapterIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'chapter', value: ''),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  chapterIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'chapter', value: ''),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'createdAt'),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'createdAt'),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'createdAt', value: value),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  createdAtGreaterThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'createdAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  createdAtLessThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'createdAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  createdAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'createdAt',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition> idEqualTo(
    Id value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  idGreaterThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'id',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  scoreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'score'),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  scoreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'score'),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  scoreEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'score', value: value),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  scoreGreaterThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'score',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  scoreLessThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'score',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  scoreBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'score',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  studentIdEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  studentIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  studentIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  studentIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'studentId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  studentIdStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  studentIdEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  studentIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  studentIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'studentId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  studentIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'studentId', value: ''),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  studentIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'studentId', value: ''),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  totalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'total'),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  totalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'total'),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  totalEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'total', value: value),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  totalGreaterThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'total',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  totalLessThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'total',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterFilterCondition>
  totalBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'total',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }
}

extension QuizScoreIsarQueryObject
    on QueryBuilder<QuizScoreIsar, QuizScoreIsar, QFilterCondition> {}

extension QuizScoreIsarQueryLinks
    on QueryBuilder<QuizScoreIsar, QuizScoreIsar, QFilterCondition> {}

extension QuizScoreIsarQuerySortBy
    on QueryBuilder<QuizScoreIsar, QuizScoreIsar, QSortBy> {
  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterSortBy> sortByApiId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.asc);
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterSortBy> sortByApiIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.desc);
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterSortBy> sortByChapter() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chapter', Sort.asc);
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterSortBy> sortByChapterDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chapter', Sort.desc);
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterSortBy>
  sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterSortBy> sortByScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'score', Sort.asc);
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterSortBy> sortByScoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'score', Sort.desc);
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterSortBy> sortByStudentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.asc);
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterSortBy>
  sortByStudentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.desc);
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterSortBy> sortByTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'total', Sort.asc);
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterSortBy> sortByTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'total', Sort.desc);
    });
  }
}

extension QuizScoreIsarQuerySortThenBy
    on QueryBuilder<QuizScoreIsar, QuizScoreIsar, QSortThenBy> {
  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterSortBy> thenByApiId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.asc);
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterSortBy> thenByApiIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.desc);
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterSortBy> thenByChapter() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chapter', Sort.asc);
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterSortBy> thenByChapterDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chapter', Sort.desc);
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterSortBy>
  thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterSortBy> thenByScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'score', Sort.asc);
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterSortBy> thenByScoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'score', Sort.desc);
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterSortBy> thenByStudentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.asc);
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterSortBy>
  thenByStudentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.desc);
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterSortBy> thenByTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'total', Sort.asc);
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QAfterSortBy> thenByTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'total', Sort.desc);
    });
  }
}

extension QuizScoreIsarQueryWhereDistinct
    on QueryBuilder<QuizScoreIsar, QuizScoreIsar, QDistinct> {
  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QDistinct> distinctByApiId({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'apiId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QDistinct> distinctByChapter({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'chapter', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QDistinct> distinctByScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'score');
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QDistinct> distinctByStudentId({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'studentId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<QuizScoreIsar, QuizScoreIsar, QDistinct> distinctByTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'total');
    });
  }
}

extension QuizScoreIsarQueryProperty
    on QueryBuilder<QuizScoreIsar, QuizScoreIsar, QQueryProperty> {
  QueryBuilder<QuizScoreIsar, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<QuizScoreIsar, String, QQueryOperations> apiIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'apiId');
    });
  }

  QueryBuilder<QuizScoreIsar, String?, QQueryOperations> chapterProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'chapter');
    });
  }

  QueryBuilder<QuizScoreIsar, DateTime?, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<QuizScoreIsar, int?, QQueryOperations> scoreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'score');
    });
  }

  QueryBuilder<QuizScoreIsar, String, QQueryOperations> studentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'studentId');
    });
  }

  QueryBuilder<QuizScoreIsar, int?, QQueryOperations> totalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'total');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetConceptProgressIsarCollection on Isar {
  IsarCollection<ConceptProgressIsar> get conceptProgressIsars =>
      this.collection();
}

final ConceptProgressIsarSchema = CollectionSchema(
  name: r'ConceptProgressIsar',
  id: int.parse('-8111109329095607993'),
  properties: {
    r'apiId': PropertySchema(id: 0, name: r'apiId', type: IsarType.string),
    r'conceptName': PropertySchema(
      id: 1,
      name: r'conceptName',
      type: IsarType.string,
    ),
    r'progressPercent': PropertySchema(
      id: 2,
      name: r'progressPercent',
      type: IsarType.double,
    ),
    r'studentId': PropertySchema(
      id: 3,
      name: r'studentId',
      type: IsarType.string,
    ),
  },

  estimateSize: _conceptProgressIsarEstimateSize,
  serialize: _conceptProgressIsarSerialize,
  deserialize: _conceptProgressIsarDeserialize,
  deserializeProp: _conceptProgressIsarDeserializeProp,
  idName: r'id',
  indexes: {
    r'apiId': IndexSchema(
      id: int.parse('92618221247000178'),
      name: r'apiId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'apiId',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
  },
  links: {},
  embeddedSchemas: {},

  getId: _conceptProgressIsarGetId,
  getLinks: _conceptProgressIsarGetLinks,
  attach: _conceptProgressIsarAttach,
  version: '3.3.2',
);

int _conceptProgressIsarEstimateSize(
  ConceptProgressIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.apiId.length * 3;
  bytesCount += 3 + object.conceptName.length * 3;
  bytesCount += 3 + object.studentId.length * 3;
  return bytesCount;
}

void _conceptProgressIsarSerialize(
  ConceptProgressIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.apiId);
  writer.writeString(offsets[1], object.conceptName);
  writer.writeDouble(offsets[2], object.progressPercent);
  writer.writeString(offsets[3], object.studentId);
}

ConceptProgressIsar _conceptProgressIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ConceptProgressIsar();
  object.apiId = reader.readString(offsets[0]);
  object.conceptName = reader.readString(offsets[1]);
  object.id = id;
  object.progressPercent = reader.readDouble(offsets[2]);
  object.studentId = reader.readString(offsets[3]);
  return object;
}

P _conceptProgressIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readDouble(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _conceptProgressIsarGetId(ConceptProgressIsar object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _conceptProgressIsarGetLinks(
  ConceptProgressIsar object,
) {
  return [];
}

void _conceptProgressIsarAttach(
  IsarCollection<dynamic> col,
  Id id,
  ConceptProgressIsar object,
) {
  object.id = id;
}

extension ConceptProgressIsarByIndex on IsarCollection<ConceptProgressIsar> {
  Future<ConceptProgressIsar?> getByApiId(String apiId) {
    return getByIndex(r'apiId', [apiId]);
  }

  ConceptProgressIsar? getByApiIdSync(String apiId) {
    return getByIndexSync(r'apiId', [apiId]);
  }

  Future<bool> deleteByApiId(String apiId) {
    return deleteByIndex(r'apiId', [apiId]);
  }

  bool deleteByApiIdSync(String apiId) {
    return deleteByIndexSync(r'apiId', [apiId]);
  }

  Future<List<ConceptProgressIsar?>> getAllByApiId(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'apiId', values);
  }

  List<ConceptProgressIsar?> getAllByApiIdSync(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'apiId', values);
  }

  Future<int> deleteAllByApiId(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'apiId', values);
  }

  int deleteAllByApiIdSync(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'apiId', values);
  }

  Future<Id> putByApiId(ConceptProgressIsar object) {
    return putByIndex(r'apiId', object);
  }

  Id putByApiIdSync(ConceptProgressIsar object, {bool saveLinks = true}) {
    return putByIndexSync(r'apiId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByApiId(List<ConceptProgressIsar> objects) {
    return putAllByIndex(r'apiId', objects);
  }

  List<Id> putAllByApiIdSync(
    List<ConceptProgressIsar> objects, {
    bool saveLinks = true,
  }) {
    return putAllByIndexSync(r'apiId', objects, saveLinks: saveLinks);
  }
}

extension ConceptProgressIsarQueryWhereSort
    on QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QWhere> {
  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ConceptProgressIsarQueryWhere
    on QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QWhereClause> {
  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterWhereClause>
  idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterWhereClause>
  idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterWhereClause>
  idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterWhereClause>
  idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterWhereClause>
  idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerId,
          includeLower: includeLower,
          upper: upperId,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterWhereClause>
  apiIdEqualTo(String apiId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'apiId', value: [apiId]),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterWhereClause>
  apiIdNotEqualTo(String apiId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [],
                upper: [apiId],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [apiId],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [apiId],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [],
                upper: [apiId],
                includeUpper: false,
              ),
            );
      }
    });
  }
}

extension ConceptProgressIsarQueryFilter
    on
        QueryBuilder<
          ConceptProgressIsar,
          ConceptProgressIsar,
          QFilterCondition
        > {
  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  apiIdEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  apiIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  apiIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  apiIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'apiId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  apiIdStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  apiIdEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  apiIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  apiIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'apiId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  apiIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'apiId', value: ''),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  apiIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'apiId', value: ''),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  conceptNameEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'conceptName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  conceptNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'conceptName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  conceptNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'conceptName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  conceptNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'conceptName',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  conceptNameStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'conceptName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  conceptNameEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'conceptName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  conceptNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'conceptName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  conceptNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'conceptName',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  conceptNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'conceptName', value: ''),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  conceptNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'conceptName', value: ''),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  idGreaterThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  idLessThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'id',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  progressPercentEqualTo(double value, {double epsilon = Query.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'progressPercent',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  progressPercentGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'progressPercent',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  progressPercentLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'progressPercent',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  progressPercentBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'progressPercent',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  studentIdEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  studentIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  studentIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  studentIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'studentId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  studentIdStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  studentIdEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  studentIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  studentIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'studentId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  studentIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'studentId', value: ''),
      );
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterFilterCondition>
  studentIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'studentId', value: ''),
      );
    });
  }
}

extension ConceptProgressIsarQueryObject
    on
        QueryBuilder<
          ConceptProgressIsar,
          ConceptProgressIsar,
          QFilterCondition
        > {}

extension ConceptProgressIsarQueryLinks
    on
        QueryBuilder<
          ConceptProgressIsar,
          ConceptProgressIsar,
          QFilterCondition
        > {}

extension ConceptProgressIsarQuerySortBy
    on QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QSortBy> {
  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterSortBy>
  sortByApiId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.asc);
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterSortBy>
  sortByApiIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.desc);
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterSortBy>
  sortByConceptName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'conceptName', Sort.asc);
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterSortBy>
  sortByConceptNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'conceptName', Sort.desc);
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterSortBy>
  sortByProgressPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressPercent', Sort.asc);
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterSortBy>
  sortByProgressPercentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressPercent', Sort.desc);
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterSortBy>
  sortByStudentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.asc);
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterSortBy>
  sortByStudentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.desc);
    });
  }
}

extension ConceptProgressIsarQuerySortThenBy
    on QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QSortThenBy> {
  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterSortBy>
  thenByApiId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.asc);
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterSortBy>
  thenByApiIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.desc);
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterSortBy>
  thenByConceptName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'conceptName', Sort.asc);
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterSortBy>
  thenByConceptNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'conceptName', Sort.desc);
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterSortBy>
  thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterSortBy>
  thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterSortBy>
  thenByProgressPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressPercent', Sort.asc);
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterSortBy>
  thenByProgressPercentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressPercent', Sort.desc);
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterSortBy>
  thenByStudentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.asc);
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QAfterSortBy>
  thenByStudentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.desc);
    });
  }
}

extension ConceptProgressIsarQueryWhereDistinct
    on QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QDistinct> {
  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QDistinct>
  distinctByApiId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'apiId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QDistinct>
  distinctByConceptName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'conceptName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QDistinct>
  distinctByProgressPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'progressPercent');
    });
  }

  QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QDistinct>
  distinctByStudentId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'studentId', caseSensitive: caseSensitive);
    });
  }
}

extension ConceptProgressIsarQueryProperty
    on QueryBuilder<ConceptProgressIsar, ConceptProgressIsar, QQueryProperty> {
  QueryBuilder<ConceptProgressIsar, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ConceptProgressIsar, String, QQueryOperations> apiIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'apiId');
    });
  }

  QueryBuilder<ConceptProgressIsar, String, QQueryOperations>
  conceptNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'conceptName');
    });
  }

  QueryBuilder<ConceptProgressIsar, double, QQueryOperations>
  progressPercentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'progressPercent');
    });
  }

  QueryBuilder<ConceptProgressIsar, String, QQueryOperations>
  studentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'studentId');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetStreakIsarCollection on Isar {
  IsarCollection<StreakIsar> get streakIsars => this.collection();
}

final StreakIsarSchema = CollectionSchema(
  name: r'StreakIsar',
  id: int.parse('1950774003816431419'),
  properties: {
    r'apiId': PropertySchema(id: 0, name: r'apiId', type: IsarType.string),
    r'currentStreak': PropertySchema(
      id: 1,
      name: r'currentStreak',
      type: IsarType.long,
    ),
    r'maxStreak': PropertySchema(
      id: 2,
      name: r'maxStreak',
      type: IsarType.long,
    ),
    r'studentId': PropertySchema(
      id: 3,
      name: r'studentId',
      type: IsarType.string,
    ),
  },

  estimateSize: _streakIsarEstimateSize,
  serialize: _streakIsarSerialize,
  deserialize: _streakIsarDeserialize,
  deserializeProp: _streakIsarDeserializeProp,
  idName: r'id',
  indexes: {
    r'apiId': IndexSchema(
      id: int.parse('92618221247000178'),
      name: r'apiId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'apiId',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
  },
  links: {},
  embeddedSchemas: {},

  getId: _streakIsarGetId,
  getLinks: _streakIsarGetLinks,
  attach: _streakIsarAttach,
  version: '3.3.2',
);

int _streakIsarEstimateSize(
  StreakIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.apiId.length * 3;
  bytesCount += 3 + object.studentId.length * 3;
  return bytesCount;
}

void _streakIsarSerialize(
  StreakIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.apiId);
  writer.writeLong(offsets[1], object.currentStreak);
  writer.writeLong(offsets[2], object.maxStreak);
  writer.writeString(offsets[3], object.studentId);
}

StreakIsar _streakIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = StreakIsar();
  object.apiId = reader.readString(offsets[0]);
  object.currentStreak = reader.readLong(offsets[1]);
  object.id = id;
  object.maxStreak = reader.readLong(offsets[2]);
  object.studentId = reader.readString(offsets[3]);
  return object;
}

P _streakIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _streakIsarGetId(StreakIsar object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _streakIsarGetLinks(StreakIsar object) {
  return [];
}

void _streakIsarAttach(IsarCollection<dynamic> col, Id id, StreakIsar object) {
  object.id = id;
}

extension StreakIsarByIndex on IsarCollection<StreakIsar> {
  Future<StreakIsar?> getByApiId(String apiId) {
    return getByIndex(r'apiId', [apiId]);
  }

  StreakIsar? getByApiIdSync(String apiId) {
    return getByIndexSync(r'apiId', [apiId]);
  }

  Future<bool> deleteByApiId(String apiId) {
    return deleteByIndex(r'apiId', [apiId]);
  }

  bool deleteByApiIdSync(String apiId) {
    return deleteByIndexSync(r'apiId', [apiId]);
  }

  Future<List<StreakIsar?>> getAllByApiId(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'apiId', values);
  }

  List<StreakIsar?> getAllByApiIdSync(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'apiId', values);
  }

  Future<int> deleteAllByApiId(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'apiId', values);
  }

  int deleteAllByApiIdSync(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'apiId', values);
  }

  Future<Id> putByApiId(StreakIsar object) {
    return putByIndex(r'apiId', object);
  }

  Id putByApiIdSync(StreakIsar object, {bool saveLinks = true}) {
    return putByIndexSync(r'apiId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByApiId(List<StreakIsar> objects) {
    return putAllByIndex(r'apiId', objects);
  }

  List<Id> putAllByApiIdSync(
    List<StreakIsar> objects, {
    bool saveLinks = true,
  }) {
    return putAllByIndexSync(r'apiId', objects, saveLinks: saveLinks);
  }
}

extension StreakIsarQueryWhereSort
    on QueryBuilder<StreakIsar, StreakIsar, QWhere> {
  QueryBuilder<StreakIsar, StreakIsar, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension StreakIsarQueryWhere
    on QueryBuilder<StreakIsar, StreakIsar, QWhereClause> {
  QueryBuilder<StreakIsar, StreakIsar, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterWhereClause> idGreaterThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterWhereClause> idLessThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerId,
          includeLower: includeLower,
          upper: upperId,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterWhereClause> apiIdEqualTo(
    String apiId,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'apiId', value: [apiId]),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterWhereClause> apiIdNotEqualTo(
    String apiId,
  ) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [],
                upper: [apiId],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [apiId],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [apiId],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [],
                upper: [apiId],
                includeUpper: false,
              ),
            );
      }
    });
  }
}

extension StreakIsarQueryFilter
    on QueryBuilder<StreakIsar, StreakIsar, QFilterCondition> {
  QueryBuilder<StreakIsar, StreakIsar, QAfterFilterCondition> apiIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterFilterCondition> apiIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterFilterCondition> apiIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterFilterCondition> apiIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'apiId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterFilterCondition> apiIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterFilterCondition> apiIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterFilterCondition> apiIdContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterFilterCondition> apiIdMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'apiId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterFilterCondition> apiIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'apiId', value: ''),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterFilterCondition>
  apiIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'apiId', value: ''),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterFilterCondition>
  currentStreakEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'currentStreak', value: value),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterFilterCondition>
  currentStreakGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'currentStreak',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterFilterCondition>
  currentStreakLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'currentStreak',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterFilterCondition>
  currentStreakBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'currentStreak',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterFilterCondition> idEqualTo(
    Id value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'id',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterFilterCondition> maxStreakEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'maxStreak', value: value),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterFilterCondition>
  maxStreakGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'maxStreak',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterFilterCondition> maxStreakLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'maxStreak',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterFilterCondition> maxStreakBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'maxStreak',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterFilterCondition> studentIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterFilterCondition>
  studentIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterFilterCondition> studentIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterFilterCondition> studentIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'studentId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterFilterCondition>
  studentIdStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterFilterCondition> studentIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterFilterCondition> studentIdContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterFilterCondition> studentIdMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'studentId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterFilterCondition>
  studentIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'studentId', value: ''),
      );
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterFilterCondition>
  studentIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'studentId', value: ''),
      );
    });
  }
}

extension StreakIsarQueryObject
    on QueryBuilder<StreakIsar, StreakIsar, QFilterCondition> {}

extension StreakIsarQueryLinks
    on QueryBuilder<StreakIsar, StreakIsar, QFilterCondition> {}

extension StreakIsarQuerySortBy
    on QueryBuilder<StreakIsar, StreakIsar, QSortBy> {
  QueryBuilder<StreakIsar, StreakIsar, QAfterSortBy> sortByApiId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.asc);
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterSortBy> sortByApiIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.desc);
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterSortBy> sortByCurrentStreak() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentStreak', Sort.asc);
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterSortBy> sortByCurrentStreakDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentStreak', Sort.desc);
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterSortBy> sortByMaxStreak() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxStreak', Sort.asc);
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterSortBy> sortByMaxStreakDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxStreak', Sort.desc);
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterSortBy> sortByStudentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.asc);
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterSortBy> sortByStudentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.desc);
    });
  }
}

extension StreakIsarQuerySortThenBy
    on QueryBuilder<StreakIsar, StreakIsar, QSortThenBy> {
  QueryBuilder<StreakIsar, StreakIsar, QAfterSortBy> thenByApiId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.asc);
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterSortBy> thenByApiIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.desc);
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterSortBy> thenByCurrentStreak() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentStreak', Sort.asc);
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterSortBy> thenByCurrentStreakDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentStreak', Sort.desc);
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterSortBy> thenByMaxStreak() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxStreak', Sort.asc);
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterSortBy> thenByMaxStreakDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxStreak', Sort.desc);
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterSortBy> thenByStudentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.asc);
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QAfterSortBy> thenByStudentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.desc);
    });
  }
}

extension StreakIsarQueryWhereDistinct
    on QueryBuilder<StreakIsar, StreakIsar, QDistinct> {
  QueryBuilder<StreakIsar, StreakIsar, QDistinct> distinctByApiId({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'apiId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QDistinct> distinctByCurrentStreak() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currentStreak');
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QDistinct> distinctByMaxStreak() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxStreak');
    });
  }

  QueryBuilder<StreakIsar, StreakIsar, QDistinct> distinctByStudentId({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'studentId', caseSensitive: caseSensitive);
    });
  }
}

extension StreakIsarQueryProperty
    on QueryBuilder<StreakIsar, StreakIsar, QQueryProperty> {
  QueryBuilder<StreakIsar, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<StreakIsar, String, QQueryOperations> apiIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'apiId');
    });
  }

  QueryBuilder<StreakIsar, int, QQueryOperations> currentStreakProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currentStreak');
    });
  }

  QueryBuilder<StreakIsar, int, QQueryOperations> maxStreakProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxStreak');
    });
  }

  QueryBuilder<StreakIsar, String, QQueryOperations> studentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'studentId');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetNudgeIsarCollection on Isar {
  IsarCollection<NudgeIsar> get nudgeIsars => this.collection();
}

final NudgeIsarSchema = CollectionSchema(
  name: r'NudgeIsar',
  id: int.parse('-4102425911484688357'),
  properties: {
    r'apiId': PropertySchema(id: 0, name: r'apiId', type: IsarType.string),
    r'body': PropertySchema(id: 1, name: r'body', type: IsarType.string),
    r'createdAt': PropertySchema(
      id: 2,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'isRead': PropertySchema(id: 3, name: r'isRead', type: IsarType.bool),
    r'nudgeType': PropertySchema(
      id: 4,
      name: r'nudgeType',
      type: IsarType.string,
    ),
    r'parentId': PropertySchema(
      id: 5,
      name: r'parentId',
      type: IsarType.string,
    ),
    r'priority': PropertySchema(
      id: 6,
      name: r'priority',
      type: IsarType.string,
    ),
    r'studentId': PropertySchema(
      id: 7,
      name: r'studentId',
      type: IsarType.string,
    ),
    r'title': PropertySchema(id: 8, name: r'title', type: IsarType.string),
  },

  estimateSize: _nudgeIsarEstimateSize,
  serialize: _nudgeIsarSerialize,
  deserialize: _nudgeIsarDeserialize,
  deserializeProp: _nudgeIsarDeserializeProp,
  idName: r'id',
  indexes: {
    r'apiId': IndexSchema(
      id: int.parse('92618221247000178'),
      name: r'apiId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'apiId',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
  },
  links: {},
  embeddedSchemas: {},

  getId: _nudgeIsarGetId,
  getLinks: _nudgeIsarGetLinks,
  attach: _nudgeIsarAttach,
  version: '3.3.2',
);

int _nudgeIsarEstimateSize(
  NudgeIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.apiId.length * 3;
  bytesCount += 3 + object.body.length * 3;
  bytesCount += 3 + object.nudgeType.length * 3;
  bytesCount += 3 + object.parentId.length * 3;
  bytesCount += 3 + object.priority.length * 3;
  bytesCount += 3 + object.studentId.length * 3;
  bytesCount += 3 + object.title.length * 3;
  return bytesCount;
}

void _nudgeIsarSerialize(
  NudgeIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.apiId);
  writer.writeString(offsets[1], object.body);
  writer.writeDateTime(offsets[2], object.createdAt);
  writer.writeBool(offsets[3], object.isRead);
  writer.writeString(offsets[4], object.nudgeType);
  writer.writeString(offsets[5], object.parentId);
  writer.writeString(offsets[6], object.priority);
  writer.writeString(offsets[7], object.studentId);
  writer.writeString(offsets[8], object.title);
}

NudgeIsar _nudgeIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = NudgeIsar();
  object.apiId = reader.readString(offsets[0]);
  object.body = reader.readString(offsets[1]);
  object.createdAt = reader.readDateTimeOrNull(offsets[2]);
  object.id = id;
  object.isRead = reader.readBool(offsets[3]);
  object.nudgeType = reader.readString(offsets[4]);
  object.parentId = reader.readString(offsets[5]);
  object.priority = reader.readString(offsets[6]);
  object.studentId = reader.readString(offsets[7]);
  object.title = reader.readString(offsets[8]);
  return object;
}

P _nudgeIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _nudgeIsarGetId(NudgeIsar object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _nudgeIsarGetLinks(NudgeIsar object) {
  return [];
}

void _nudgeIsarAttach(IsarCollection<dynamic> col, Id id, NudgeIsar object) {
  object.id = id;
}

extension NudgeIsarByIndex on IsarCollection<NudgeIsar> {
  Future<NudgeIsar?> getByApiId(String apiId) {
    return getByIndex(r'apiId', [apiId]);
  }

  NudgeIsar? getByApiIdSync(String apiId) {
    return getByIndexSync(r'apiId', [apiId]);
  }

  Future<bool> deleteByApiId(String apiId) {
    return deleteByIndex(r'apiId', [apiId]);
  }

  bool deleteByApiIdSync(String apiId) {
    return deleteByIndexSync(r'apiId', [apiId]);
  }

  Future<List<NudgeIsar?>> getAllByApiId(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'apiId', values);
  }

  List<NudgeIsar?> getAllByApiIdSync(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'apiId', values);
  }

  Future<int> deleteAllByApiId(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'apiId', values);
  }

  int deleteAllByApiIdSync(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'apiId', values);
  }

  Future<Id> putByApiId(NudgeIsar object) {
    return putByIndex(r'apiId', object);
  }

  Id putByApiIdSync(NudgeIsar object, {bool saveLinks = true}) {
    return putByIndexSync(r'apiId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByApiId(List<NudgeIsar> objects) {
    return putAllByIndex(r'apiId', objects);
  }

  List<Id> putAllByApiIdSync(List<NudgeIsar> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'apiId', objects, saveLinks: saveLinks);
  }
}

extension NudgeIsarQueryWhereSort
    on QueryBuilder<NudgeIsar, NudgeIsar, QWhere> {
  QueryBuilder<NudgeIsar, NudgeIsar, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension NudgeIsarQueryWhere
    on QueryBuilder<NudgeIsar, NudgeIsar, QWhereClause> {
  QueryBuilder<NudgeIsar, NudgeIsar, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterWhereClause> idGreaterThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterWhereClause> idLessThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerId,
          includeLower: includeLower,
          upper: upperId,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterWhereClause> apiIdEqualTo(
    String apiId,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'apiId', value: [apiId]),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterWhereClause> apiIdNotEqualTo(
    String apiId,
  ) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [],
                upper: [apiId],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [apiId],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [apiId],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [],
                upper: [apiId],
                includeUpper: false,
              ),
            );
      }
    });
  }
}

extension NudgeIsarQueryFilter
    on QueryBuilder<NudgeIsar, NudgeIsar, QFilterCondition> {
  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> apiIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> apiIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> apiIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> apiIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'apiId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> apiIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> apiIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> apiIdContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> apiIdMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'apiId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> apiIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'apiId', value: ''),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> apiIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'apiId', value: ''),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> bodyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'body',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> bodyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'body',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> bodyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'body',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> bodyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'body',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> bodyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'body',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> bodyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'body',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> bodyContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'body',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> bodyMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'body',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> bodyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'body', value: ''),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> bodyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'body', value: ''),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'createdAt'),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition>
  createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'createdAt'),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> createdAtEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'createdAt', value: value),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition>
  createdAtGreaterThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'createdAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> createdAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'createdAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> createdAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'createdAt',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> idEqualTo(
    Id value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'id',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> isReadEqualTo(
    bool value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'isRead', value: value),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> nudgeTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'nudgeType',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition>
  nudgeTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'nudgeType',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> nudgeTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'nudgeType',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> nudgeTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'nudgeType',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> nudgeTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'nudgeType',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> nudgeTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'nudgeType',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> nudgeTypeContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'nudgeType',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> nudgeTypeMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'nudgeType',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> nudgeTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'nudgeType', value: ''),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition>
  nudgeTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'nudgeType', value: ''),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> parentIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'parentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> parentIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'parentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> parentIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'parentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> parentIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'parentId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> parentIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'parentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> parentIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'parentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> parentIdContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'parentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> parentIdMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'parentId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> parentIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'parentId', value: ''),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition>
  parentIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'parentId', value: ''),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> priorityEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'priority',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> priorityGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'priority',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> priorityLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'priority',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> priorityBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'priority',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> priorityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'priority',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> priorityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'priority',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> priorityContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'priority',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> priorityMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'priority',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> priorityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'priority', value: ''),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition>
  priorityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'priority', value: ''),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> studentIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition>
  studentIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> studentIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> studentIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'studentId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> studentIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> studentIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> studentIdContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> studentIdMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'studentId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> studentIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'studentId', value: ''),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition>
  studentIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'studentId', value: ''),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'title',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'title',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'title',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'title',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'title',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'title',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> titleContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'title',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> titleMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'title',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'title', value: ''),
      );
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'title', value: ''),
      );
    });
  }
}

extension NudgeIsarQueryObject
    on QueryBuilder<NudgeIsar, NudgeIsar, QFilterCondition> {}

extension NudgeIsarQueryLinks
    on QueryBuilder<NudgeIsar, NudgeIsar, QFilterCondition> {}

extension NudgeIsarQuerySortBy on QueryBuilder<NudgeIsar, NudgeIsar, QSortBy> {
  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> sortByApiId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.asc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> sortByApiIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.desc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> sortByBody() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'body', Sort.asc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> sortByBodyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'body', Sort.desc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> sortByIsRead() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRead', Sort.asc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> sortByIsReadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRead', Sort.desc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> sortByNudgeType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nudgeType', Sort.asc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> sortByNudgeTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nudgeType', Sort.desc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> sortByParentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentId', Sort.asc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> sortByParentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentId', Sort.desc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> sortByPriority() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priority', Sort.asc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> sortByPriorityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priority', Sort.desc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> sortByStudentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.asc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> sortByStudentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.desc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension NudgeIsarQuerySortThenBy
    on QueryBuilder<NudgeIsar, NudgeIsar, QSortThenBy> {
  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> thenByApiId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.asc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> thenByApiIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.desc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> thenByBody() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'body', Sort.asc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> thenByBodyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'body', Sort.desc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> thenByIsRead() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRead', Sort.asc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> thenByIsReadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRead', Sort.desc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> thenByNudgeType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nudgeType', Sort.asc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> thenByNudgeTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nudgeType', Sort.desc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> thenByParentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentId', Sort.asc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> thenByParentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentId', Sort.desc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> thenByPriority() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priority', Sort.asc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> thenByPriorityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priority', Sort.desc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> thenByStudentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.asc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> thenByStudentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.desc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension NudgeIsarQueryWhereDistinct
    on QueryBuilder<NudgeIsar, NudgeIsar, QDistinct> {
  QueryBuilder<NudgeIsar, NudgeIsar, QDistinct> distinctByApiId({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'apiId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QDistinct> distinctByBody({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'body', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QDistinct> distinctByIsRead() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isRead');
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QDistinct> distinctByNudgeType({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nudgeType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QDistinct> distinctByParentId({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'parentId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QDistinct> distinctByPriority({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'priority', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QDistinct> distinctByStudentId({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'studentId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NudgeIsar, NudgeIsar, QDistinct> distinctByTitle({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }
}

extension NudgeIsarQueryProperty
    on QueryBuilder<NudgeIsar, NudgeIsar, QQueryProperty> {
  QueryBuilder<NudgeIsar, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<NudgeIsar, String, QQueryOperations> apiIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'apiId');
    });
  }

  QueryBuilder<NudgeIsar, String, QQueryOperations> bodyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'body');
    });
  }

  QueryBuilder<NudgeIsar, DateTime?, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<NudgeIsar, bool, QQueryOperations> isReadProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isRead');
    });
  }

  QueryBuilder<NudgeIsar, String, QQueryOperations> nudgeTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nudgeType');
    });
  }

  QueryBuilder<NudgeIsar, String, QQueryOperations> parentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'parentId');
    });
  }

  QueryBuilder<NudgeIsar, String, QQueryOperations> priorityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'priority');
    });
  }

  QueryBuilder<NudgeIsar, String, QQueryOperations> studentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'studentId');
    });
  }

  QueryBuilder<NudgeIsar, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAnomalyIsarCollection on Isar {
  IsarCollection<AnomalyIsar> get anomalyIsars => this.collection();
}

final AnomalyIsarSchema = CollectionSchema(
  name: r'AnomalyIsar',
  id: int.parse('8608083217762312451'),
  properties: {
    r'anomalyType': PropertySchema(
      id: 0,
      name: r'anomalyType',
      type: IsarType.string,
    ),
    r'apiId': PropertySchema(id: 1, name: r'apiId', type: IsarType.string),
    r'createdAt': PropertySchema(
      id: 2,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'details': PropertySchema(id: 3, name: r'details', type: IsarType.string),
    r'examSessionId': PropertySchema(
      id: 4,
      name: r'examSessionId',
      type: IsarType.string,
    ),
    r'severity': PropertySchema(
      id: 5,
      name: r'severity',
      type: IsarType.string,
    ),
    r'studentId': PropertySchema(
      id: 6,
      name: r'studentId',
      type: IsarType.string,
    ),
  },

  estimateSize: _anomalyIsarEstimateSize,
  serialize: _anomalyIsarSerialize,
  deserialize: _anomalyIsarDeserialize,
  deserializeProp: _anomalyIsarDeserializeProp,
  idName: r'id',
  indexes: {
    r'apiId': IndexSchema(
      id: int.parse('92618221247000178'),
      name: r'apiId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'apiId',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
  },
  links: {},
  embeddedSchemas: {},

  getId: _anomalyIsarGetId,
  getLinks: _anomalyIsarGetLinks,
  attach: _anomalyIsarAttach,
  version: '3.3.2',
);

int _anomalyIsarEstimateSize(
  AnomalyIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.anomalyType.length * 3;
  bytesCount += 3 + object.apiId.length * 3;
  {
    final value = object.details;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.examSessionId.length * 3;
  bytesCount += 3 + object.severity.length * 3;
  bytesCount += 3 + object.studentId.length * 3;
  return bytesCount;
}

void _anomalyIsarSerialize(
  AnomalyIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.anomalyType);
  writer.writeString(offsets[1], object.apiId);
  writer.writeDateTime(offsets[2], object.createdAt);
  writer.writeString(offsets[3], object.details);
  writer.writeString(offsets[4], object.examSessionId);
  writer.writeString(offsets[5], object.severity);
  writer.writeString(offsets[6], object.studentId);
}

AnomalyIsar _anomalyIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AnomalyIsar();
  object.anomalyType = reader.readString(offsets[0]);
  object.apiId = reader.readString(offsets[1]);
  object.createdAt = reader.readDateTimeOrNull(offsets[2]);
  object.details = reader.readStringOrNull(offsets[3]);
  object.examSessionId = reader.readString(offsets[4]);
  object.id = id;
  object.severity = reader.readString(offsets[5]);
  object.studentId = reader.readString(offsets[6]);
  return object;
}

P _anomalyIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _anomalyIsarGetId(AnomalyIsar object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _anomalyIsarGetLinks(AnomalyIsar object) {
  return [];
}

void _anomalyIsarAttach(
  IsarCollection<dynamic> col,
  Id id,
  AnomalyIsar object,
) {
  object.id = id;
}

extension AnomalyIsarByIndex on IsarCollection<AnomalyIsar> {
  Future<AnomalyIsar?> getByApiId(String apiId) {
    return getByIndex(r'apiId', [apiId]);
  }

  AnomalyIsar? getByApiIdSync(String apiId) {
    return getByIndexSync(r'apiId', [apiId]);
  }

  Future<bool> deleteByApiId(String apiId) {
    return deleteByIndex(r'apiId', [apiId]);
  }

  bool deleteByApiIdSync(String apiId) {
    return deleteByIndexSync(r'apiId', [apiId]);
  }

  Future<List<AnomalyIsar?>> getAllByApiId(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'apiId', values);
  }

  List<AnomalyIsar?> getAllByApiIdSync(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'apiId', values);
  }

  Future<int> deleteAllByApiId(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'apiId', values);
  }

  int deleteAllByApiIdSync(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'apiId', values);
  }

  Future<Id> putByApiId(AnomalyIsar object) {
    return putByIndex(r'apiId', object);
  }

  Id putByApiIdSync(AnomalyIsar object, {bool saveLinks = true}) {
    return putByIndexSync(r'apiId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByApiId(List<AnomalyIsar> objects) {
    return putAllByIndex(r'apiId', objects);
  }

  List<Id> putAllByApiIdSync(
    List<AnomalyIsar> objects, {
    bool saveLinks = true,
  }) {
    return putAllByIndexSync(r'apiId', objects, saveLinks: saveLinks);
  }
}

extension AnomalyIsarQueryWhereSort
    on QueryBuilder<AnomalyIsar, AnomalyIsar, QWhere> {
  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AnomalyIsarQueryWhere
    on QueryBuilder<AnomalyIsar, AnomalyIsar, QWhereClause> {
  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterWhereClause> idNotEqualTo(
    Id id,
  ) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterWhereClause> idGreaterThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterWhereClause> idLessThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerId,
          includeLower: includeLower,
          upper: upperId,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterWhereClause> apiIdEqualTo(
    String apiId,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'apiId', value: [apiId]),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterWhereClause> apiIdNotEqualTo(
    String apiId,
  ) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [],
                upper: [apiId],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [apiId],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [apiId],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [],
                upper: [apiId],
                includeUpper: false,
              ),
            );
      }
    });
  }
}

extension AnomalyIsarQueryFilter
    on QueryBuilder<AnomalyIsar, AnomalyIsar, QFilterCondition> {
  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  anomalyTypeEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'anomalyType',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  anomalyTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'anomalyType',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  anomalyTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'anomalyType',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  anomalyTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'anomalyType',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  anomalyTypeStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'anomalyType',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  anomalyTypeEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'anomalyType',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  anomalyTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'anomalyType',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  anomalyTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'anomalyType',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  anomalyTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'anomalyType', value: ''),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  anomalyTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'anomalyType', value: ''),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition> apiIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  apiIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition> apiIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition> apiIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'apiId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition> apiIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition> apiIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition> apiIdContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition> apiIdMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'apiId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition> apiIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'apiId', value: ''),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  apiIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'apiId', value: ''),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'createdAt'),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'createdAt'),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'createdAt', value: value),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  createdAtGreaterThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'createdAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  createdAtLessThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'createdAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  createdAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'createdAt',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  detailsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'details'),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  detailsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'details'),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition> detailsEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'details',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  detailsGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'details',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition> detailsLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'details',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition> detailsBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'details',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  detailsStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'details',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition> detailsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'details',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition> detailsContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'details',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition> detailsMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'details',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  detailsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'details', value: ''),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  detailsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'details', value: ''),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  examSessionIdEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'examSessionId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  examSessionIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'examSessionId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  examSessionIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'examSessionId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  examSessionIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'examSessionId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  examSessionIdStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'examSessionId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  examSessionIdEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'examSessionId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  examSessionIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'examSessionId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  examSessionIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'examSessionId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  examSessionIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'examSessionId', value: ''),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  examSessionIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'examSessionId', value: ''),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition> idEqualTo(
    Id value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'id',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition> severityEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'severity',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  severityGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'severity',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  severityLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'severity',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition> severityBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'severity',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  severityStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'severity',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  severityEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'severity',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  severityContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'severity',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition> severityMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'severity',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  severityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'severity', value: ''),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  severityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'severity', value: ''),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  studentIdEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  studentIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  studentIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  studentIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'studentId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  studentIdStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  studentIdEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  studentIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  studentIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'studentId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  studentIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'studentId', value: ''),
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterFilterCondition>
  studentIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'studentId', value: ''),
      );
    });
  }
}

extension AnomalyIsarQueryObject
    on QueryBuilder<AnomalyIsar, AnomalyIsar, QFilterCondition> {}

extension AnomalyIsarQueryLinks
    on QueryBuilder<AnomalyIsar, AnomalyIsar, QFilterCondition> {}

extension AnomalyIsarQuerySortBy
    on QueryBuilder<AnomalyIsar, AnomalyIsar, QSortBy> {
  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterSortBy> sortByAnomalyType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'anomalyType', Sort.asc);
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterSortBy> sortByAnomalyTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'anomalyType', Sort.desc);
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterSortBy> sortByApiId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.asc);
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterSortBy> sortByApiIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.desc);
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterSortBy> sortByDetails() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'details', Sort.asc);
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterSortBy> sortByDetailsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'details', Sort.desc);
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterSortBy> sortByExamSessionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'examSessionId', Sort.asc);
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterSortBy>
  sortByExamSessionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'examSessionId', Sort.desc);
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterSortBy> sortBySeverity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'severity', Sort.asc);
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterSortBy> sortBySeverityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'severity', Sort.desc);
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterSortBy> sortByStudentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.asc);
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterSortBy> sortByStudentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.desc);
    });
  }
}

extension AnomalyIsarQuerySortThenBy
    on QueryBuilder<AnomalyIsar, AnomalyIsar, QSortThenBy> {
  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterSortBy> thenByAnomalyType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'anomalyType', Sort.asc);
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterSortBy> thenByAnomalyTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'anomalyType', Sort.desc);
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterSortBy> thenByApiId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.asc);
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterSortBy> thenByApiIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.desc);
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterSortBy> thenByDetails() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'details', Sort.asc);
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterSortBy> thenByDetailsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'details', Sort.desc);
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterSortBy> thenByExamSessionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'examSessionId', Sort.asc);
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterSortBy>
  thenByExamSessionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'examSessionId', Sort.desc);
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterSortBy> thenBySeverity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'severity', Sort.asc);
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterSortBy> thenBySeverityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'severity', Sort.desc);
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterSortBy> thenByStudentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.asc);
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QAfterSortBy> thenByStudentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.desc);
    });
  }
}

extension AnomalyIsarQueryWhereDistinct
    on QueryBuilder<AnomalyIsar, AnomalyIsar, QDistinct> {
  QueryBuilder<AnomalyIsar, AnomalyIsar, QDistinct> distinctByAnomalyType({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'anomalyType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QDistinct> distinctByApiId({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'apiId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QDistinct> distinctByDetails({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'details', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QDistinct> distinctByExamSessionId({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(
        r'examSessionId',
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QDistinct> distinctBySeverity({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'severity', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AnomalyIsar, AnomalyIsar, QDistinct> distinctByStudentId({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'studentId', caseSensitive: caseSensitive);
    });
  }
}

extension AnomalyIsarQueryProperty
    on QueryBuilder<AnomalyIsar, AnomalyIsar, QQueryProperty> {
  QueryBuilder<AnomalyIsar, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AnomalyIsar, String, QQueryOperations> anomalyTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'anomalyType');
    });
  }

  QueryBuilder<AnomalyIsar, String, QQueryOperations> apiIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'apiId');
    });
  }

  QueryBuilder<AnomalyIsar, DateTime?, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<AnomalyIsar, String?, QQueryOperations> detailsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'details');
    });
  }

  QueryBuilder<AnomalyIsar, String, QQueryOperations> examSessionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'examSessionId');
    });
  }

  QueryBuilder<AnomalyIsar, String, QQueryOperations> severityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'severity');
    });
  }

  QueryBuilder<AnomalyIsar, String, QQueryOperations> studentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'studentId');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetHealthRecordIsarCollection on Isar {
  IsarCollection<HealthRecordIsar> get healthRecordIsars => this.collection();
}

final HealthRecordIsarSchema = CollectionSchema(
  name: r'HealthRecordIsar',
  id: int.parse('-8833675558909441122'),
  properties: {
    r'apiId': PropertySchema(id: 0, name: r'apiId', type: IsarType.string),
    r'bmi': PropertySchema(id: 1, name: r'bmi', type: IsarType.double),
    r'ferritin': PropertySchema(
      id: 2,
      name: r'ferritin',
      type: IsarType.double,
    ),
    r'heightCm': PropertySchema(
      id: 3,
      name: r'heightCm',
      type: IsarType.double,
    ),
    r'hemoglobin': PropertySchema(
      id: 4,
      name: r'hemoglobin',
      type: IsarType.double,
    ),
    r'ironLevel': PropertySchema(
      id: 5,
      name: r'ironLevel',
      type: IsarType.double,
    ),
    r'recordDate': PropertySchema(
      id: 6,
      name: r'recordDate',
      type: IsarType.dateTime,
    ),
    r'recordType': PropertySchema(
      id: 7,
      name: r'recordType',
      type: IsarType.string,
    ),
    r'studentId': PropertySchema(
      id: 8,
      name: r'studentId',
      type: IsarType.string,
    ),
    r'vitaminB12': PropertySchema(
      id: 9,
      name: r'vitaminB12',
      type: IsarType.double,
    ),
    r'vitaminD3': PropertySchema(
      id: 10,
      name: r'vitaminD3',
      type: IsarType.double,
    ),
    r'weightKg': PropertySchema(
      id: 11,
      name: r'weightKg',
      type: IsarType.double,
    ),
  },

  estimateSize: _healthRecordIsarEstimateSize,
  serialize: _healthRecordIsarSerialize,
  deserialize: _healthRecordIsarDeserialize,
  deserializeProp: _healthRecordIsarDeserializeProp,
  idName: r'id',
  indexes: {
    r'apiId': IndexSchema(
      id: int.parse('92618221247000178'),
      name: r'apiId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'apiId',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
  },
  links: {},
  embeddedSchemas: {},

  getId: _healthRecordIsarGetId,
  getLinks: _healthRecordIsarGetLinks,
  attach: _healthRecordIsarAttach,
  version: '3.3.2',
);

int _healthRecordIsarEstimateSize(
  HealthRecordIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.apiId.length * 3;
  bytesCount += 3 + object.recordType.length * 3;
  bytesCount += 3 + object.studentId.length * 3;
  return bytesCount;
}

void _healthRecordIsarSerialize(
  HealthRecordIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.apiId);
  writer.writeDouble(offsets[1], object.bmi);
  writer.writeDouble(offsets[2], object.ferritin);
  writer.writeDouble(offsets[3], object.heightCm);
  writer.writeDouble(offsets[4], object.hemoglobin);
  writer.writeDouble(offsets[5], object.ironLevel);
  writer.writeDateTime(offsets[6], object.recordDate);
  writer.writeString(offsets[7], object.recordType);
  writer.writeString(offsets[8], object.studentId);
  writer.writeDouble(offsets[9], object.vitaminB12);
  writer.writeDouble(offsets[10], object.vitaminD3);
  writer.writeDouble(offsets[11], object.weightKg);
}

HealthRecordIsar _healthRecordIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = HealthRecordIsar();
  object.apiId = reader.readString(offsets[0]);
  object.bmi = reader.readDoubleOrNull(offsets[1]);
  object.ferritin = reader.readDoubleOrNull(offsets[2]);
  object.heightCm = reader.readDoubleOrNull(offsets[3]);
  object.hemoglobin = reader.readDoubleOrNull(offsets[4]);
  object.id = id;
  object.ironLevel = reader.readDoubleOrNull(offsets[5]);
  object.recordDate = reader.readDateTimeOrNull(offsets[6]);
  object.recordType = reader.readString(offsets[7]);
  object.studentId = reader.readString(offsets[8]);
  object.vitaminB12 = reader.readDoubleOrNull(offsets[9]);
  object.vitaminD3 = reader.readDoubleOrNull(offsets[10]);
  object.weightKg = reader.readDoubleOrNull(offsets[11]);
  return object;
}

P _healthRecordIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readDoubleOrNull(offset)) as P;
    case 3:
      return (reader.readDoubleOrNull(offset)) as P;
    case 4:
      return (reader.readDoubleOrNull(offset)) as P;
    case 5:
      return (reader.readDoubleOrNull(offset)) as P;
    case 6:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readDoubleOrNull(offset)) as P;
    case 10:
      return (reader.readDoubleOrNull(offset)) as P;
    case 11:
      return (reader.readDoubleOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _healthRecordIsarGetId(HealthRecordIsar object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _healthRecordIsarGetLinks(HealthRecordIsar object) {
  return [];
}

void _healthRecordIsarAttach(
  IsarCollection<dynamic> col,
  Id id,
  HealthRecordIsar object,
) {
  object.id = id;
}

extension HealthRecordIsarByIndex on IsarCollection<HealthRecordIsar> {
  Future<HealthRecordIsar?> getByApiId(String apiId) {
    return getByIndex(r'apiId', [apiId]);
  }

  HealthRecordIsar? getByApiIdSync(String apiId) {
    return getByIndexSync(r'apiId', [apiId]);
  }

  Future<bool> deleteByApiId(String apiId) {
    return deleteByIndex(r'apiId', [apiId]);
  }

  bool deleteByApiIdSync(String apiId) {
    return deleteByIndexSync(r'apiId', [apiId]);
  }

  Future<List<HealthRecordIsar?>> getAllByApiId(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'apiId', values);
  }

  List<HealthRecordIsar?> getAllByApiIdSync(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'apiId', values);
  }

  Future<int> deleteAllByApiId(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'apiId', values);
  }

  int deleteAllByApiIdSync(List<String> apiIdValues) {
    final values = apiIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'apiId', values);
  }

  Future<Id> putByApiId(HealthRecordIsar object) {
    return putByIndex(r'apiId', object);
  }

  Id putByApiIdSync(HealthRecordIsar object, {bool saveLinks = true}) {
    return putByIndexSync(r'apiId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByApiId(List<HealthRecordIsar> objects) {
    return putAllByIndex(r'apiId', objects);
  }

  List<Id> putAllByApiIdSync(
    List<HealthRecordIsar> objects, {
    bool saveLinks = true,
  }) {
    return putAllByIndexSync(r'apiId', objects, saveLinks: saveLinks);
  }
}

extension HealthRecordIsarQueryWhereSort
    on QueryBuilder<HealthRecordIsar, HealthRecordIsar, QWhere> {
  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension HealthRecordIsarQueryWhere
    on QueryBuilder<HealthRecordIsar, HealthRecordIsar, QWhereClause> {
  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterWhereClause> idEqualTo(
    Id id,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterWhereClause>
  idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterWhereClause>
  idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterWhereClause>
  idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerId,
          includeLower: includeLower,
          upper: upperId,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterWhereClause>
  apiIdEqualTo(String apiId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'apiId', value: [apiId]),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterWhereClause>
  apiIdNotEqualTo(String apiId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [],
                upper: [apiId],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [apiId],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [apiId],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'apiId',
                lower: [],
                upper: [apiId],
                includeUpper: false,
              ),
            );
      }
    });
  }
}

extension HealthRecordIsarQueryFilter
    on QueryBuilder<HealthRecordIsar, HealthRecordIsar, QFilterCondition> {
  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  apiIdEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  apiIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  apiIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  apiIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'apiId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  apiIdStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  apiIdEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  apiIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  apiIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'apiId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  apiIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'apiId', value: ''),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  apiIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'apiId', value: ''),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  bmiIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'bmi'),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  bmiIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'bmi'),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  bmiEqualTo(double? value, {double epsilon = Query.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'bmi',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  bmiGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'bmi',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  bmiLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'bmi',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  bmiBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'bmi',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  ferritinIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'ferritin'),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  ferritinIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'ferritin'),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  ferritinEqualTo(double? value, {double epsilon = Query.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'ferritin',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  ferritinGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'ferritin',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  ferritinLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'ferritin',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  ferritinBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'ferritin',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  heightCmIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'heightCm'),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  heightCmIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'heightCm'),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  heightCmEqualTo(double? value, {double epsilon = Query.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'heightCm',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  heightCmGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'heightCm',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  heightCmLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'heightCm',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  heightCmBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'heightCm',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  hemoglobinIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'hemoglobin'),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  hemoglobinIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'hemoglobin'),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  hemoglobinEqualTo(double? value, {double epsilon = Query.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'hemoglobin',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  hemoglobinGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'hemoglobin',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  hemoglobinLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'hemoglobin',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  hemoglobinBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'hemoglobin',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  idGreaterThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  idLessThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'id',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  ironLevelIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'ironLevel'),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  ironLevelIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'ironLevel'),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  ironLevelEqualTo(double? value, {double epsilon = Query.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'ironLevel',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  ironLevelGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'ironLevel',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  ironLevelLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'ironLevel',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  ironLevelBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'ironLevel',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  recordDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'recordDate'),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  recordDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'recordDate'),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  recordDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'recordDate', value: value),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  recordDateGreaterThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'recordDate',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  recordDateLessThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'recordDate',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  recordDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'recordDate',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  recordTypeEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'recordType',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  recordTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'recordType',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  recordTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'recordType',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  recordTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'recordType',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  recordTypeStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'recordType',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  recordTypeEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'recordType',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  recordTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'recordType',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  recordTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'recordType',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  recordTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'recordType', value: ''),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  recordTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'recordType', value: ''),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  studentIdEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  studentIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  studentIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  studentIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'studentId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  studentIdStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  studentIdEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  studentIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'studentId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  studentIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'studentId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  studentIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'studentId', value: ''),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  studentIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'studentId', value: ''),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  vitaminB12IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'vitaminB12'),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  vitaminB12IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'vitaminB12'),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  vitaminB12EqualTo(double? value, {double epsilon = Query.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'vitaminB12',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  vitaminB12GreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'vitaminB12',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  vitaminB12LessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'vitaminB12',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  vitaminB12Between(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'vitaminB12',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  vitaminD3IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'vitaminD3'),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  vitaminD3IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'vitaminD3'),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  vitaminD3EqualTo(double? value, {double epsilon = Query.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'vitaminD3',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  vitaminD3GreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'vitaminD3',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  vitaminD3LessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'vitaminD3',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  vitaminD3Between(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'vitaminD3',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  weightKgIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'weightKg'),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  weightKgIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'weightKg'),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  weightKgEqualTo(double? value, {double epsilon = Query.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'weightKg',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  weightKgGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'weightKg',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  weightKgLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'weightKg',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterFilterCondition>
  weightKgBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'weightKg',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,

          epsilon: epsilon,
        ),
      );
    });
  }
}

extension HealthRecordIsarQueryObject
    on QueryBuilder<HealthRecordIsar, HealthRecordIsar, QFilterCondition> {}

extension HealthRecordIsarQueryLinks
    on QueryBuilder<HealthRecordIsar, HealthRecordIsar, QFilterCondition> {}

extension HealthRecordIsarQuerySortBy
    on QueryBuilder<HealthRecordIsar, HealthRecordIsar, QSortBy> {
  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy> sortByApiId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.asc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  sortByApiIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.desc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy> sortByBmi() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bmi', Sort.asc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  sortByBmiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bmi', Sort.desc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  sortByFerritin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ferritin', Sort.asc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  sortByFerritinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ferritin', Sort.desc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  sortByHeightCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'heightCm', Sort.asc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  sortByHeightCmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'heightCm', Sort.desc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  sortByHemoglobin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hemoglobin', Sort.asc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  sortByHemoglobinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hemoglobin', Sort.desc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  sortByIronLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ironLevel', Sort.asc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  sortByIronLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ironLevel', Sort.desc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  sortByRecordDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recordDate', Sort.asc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  sortByRecordDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recordDate', Sort.desc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  sortByRecordType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recordType', Sort.asc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  sortByRecordTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recordType', Sort.desc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  sortByStudentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.asc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  sortByStudentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.desc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  sortByVitaminB12() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vitaminB12', Sort.asc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  sortByVitaminB12Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vitaminB12', Sort.desc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  sortByVitaminD3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vitaminD3', Sort.asc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  sortByVitaminD3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vitaminD3', Sort.desc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  sortByWeightKg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weightKg', Sort.asc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  sortByWeightKgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weightKg', Sort.desc);
    });
  }
}

extension HealthRecordIsarQuerySortThenBy
    on QueryBuilder<HealthRecordIsar, HealthRecordIsar, QSortThenBy> {
  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy> thenByApiId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.asc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  thenByApiIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.desc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy> thenByBmi() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bmi', Sort.asc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  thenByBmiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bmi', Sort.desc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  thenByFerritin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ferritin', Sort.asc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  thenByFerritinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ferritin', Sort.desc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  thenByHeightCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'heightCm', Sort.asc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  thenByHeightCmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'heightCm', Sort.desc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  thenByHemoglobin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hemoglobin', Sort.asc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  thenByHemoglobinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hemoglobin', Sort.desc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  thenByIronLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ironLevel', Sort.asc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  thenByIronLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ironLevel', Sort.desc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  thenByRecordDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recordDate', Sort.asc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  thenByRecordDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recordDate', Sort.desc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  thenByRecordType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recordType', Sort.asc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  thenByRecordTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recordType', Sort.desc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  thenByStudentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.asc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  thenByStudentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.desc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  thenByVitaminB12() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vitaminB12', Sort.asc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  thenByVitaminB12Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vitaminB12', Sort.desc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  thenByVitaminD3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vitaminD3', Sort.asc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  thenByVitaminD3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vitaminD3', Sort.desc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  thenByWeightKg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weightKg', Sort.asc);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QAfterSortBy>
  thenByWeightKgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weightKg', Sort.desc);
    });
  }
}

extension HealthRecordIsarQueryWhereDistinct
    on QueryBuilder<HealthRecordIsar, HealthRecordIsar, QDistinct> {
  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QDistinct> distinctByApiId({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'apiId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QDistinct> distinctByBmi() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bmi');
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QDistinct>
  distinctByFerritin() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ferritin');
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QDistinct>
  distinctByHeightCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'heightCm');
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QDistinct>
  distinctByHemoglobin() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hemoglobin');
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QDistinct>
  distinctByIronLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ironLevel');
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QDistinct>
  distinctByRecordDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'recordDate');
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QDistinct>
  distinctByRecordType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'recordType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QDistinct>
  distinctByStudentId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'studentId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QDistinct>
  distinctByVitaminB12() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'vitaminB12');
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QDistinct>
  distinctByVitaminD3() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'vitaminD3');
    });
  }

  QueryBuilder<HealthRecordIsar, HealthRecordIsar, QDistinct>
  distinctByWeightKg() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weightKg');
    });
  }
}

extension HealthRecordIsarQueryProperty
    on QueryBuilder<HealthRecordIsar, HealthRecordIsar, QQueryProperty> {
  QueryBuilder<HealthRecordIsar, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<HealthRecordIsar, String, QQueryOperations> apiIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'apiId');
    });
  }

  QueryBuilder<HealthRecordIsar, double?, QQueryOperations> bmiProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bmi');
    });
  }

  QueryBuilder<HealthRecordIsar, double?, QQueryOperations> ferritinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ferritin');
    });
  }

  QueryBuilder<HealthRecordIsar, double?, QQueryOperations> heightCmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'heightCm');
    });
  }

  QueryBuilder<HealthRecordIsar, double?, QQueryOperations>
  hemoglobinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hemoglobin');
    });
  }

  QueryBuilder<HealthRecordIsar, double?, QQueryOperations>
  ironLevelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ironLevel');
    });
  }

  QueryBuilder<HealthRecordIsar, DateTime?, QQueryOperations>
  recordDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'recordDate');
    });
  }

  QueryBuilder<HealthRecordIsar, String, QQueryOperations>
  recordTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'recordType');
    });
  }

  QueryBuilder<HealthRecordIsar, String, QQueryOperations> studentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'studentId');
    });
  }

  QueryBuilder<HealthRecordIsar, double?, QQueryOperations>
  vitaminB12Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'vitaminB12');
    });
  }

  QueryBuilder<HealthRecordIsar, double?, QQueryOperations>
  vitaminD3Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'vitaminD3');
    });
  }

  QueryBuilder<HealthRecordIsar, double?, QQueryOperations> weightKgProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weightKg');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSyncItemIsarCollection on Isar {
  IsarCollection<SyncItemIsar> get syncItemIsars => this.collection();
}

final SyncItemIsarSchema = CollectionSchema(
  name: r'SyncItemIsar',
  id: int.parse('1539459788564606932'),
  properties: {
    r'createdAt': PropertySchema(
      id: 0,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'operation': PropertySchema(
      id: 1,
      name: r'operation',
      type: IsarType.string,
    ),
    r'payloadJson': PropertySchema(
      id: 2,
      name: r'payloadJson',
      type: IsarType.string,
    ),
    r'retryCount': PropertySchema(
      id: 3,
      name: r'retryCount',
      type: IsarType.long,
    ),
    r'synced': PropertySchema(id: 4, name: r'synced', type: IsarType.bool),
    r'tableName': PropertySchema(
      id: 5,
      name: r'tableName',
      type: IsarType.string,
    ),
  },

  estimateSize: _syncItemIsarEstimateSize,
  serialize: _syncItemIsarSerialize,
  deserialize: _syncItemIsarDeserialize,
  deserializeProp: _syncItemIsarDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},

  getId: _syncItemIsarGetId,
  getLinks: _syncItemIsarGetLinks,
  attach: _syncItemIsarAttach,
  version: '3.3.2',
);

int _syncItemIsarEstimateSize(
  SyncItemIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.operation.length * 3;
  bytesCount += 3 + object.payloadJson.length * 3;
  bytesCount += 3 + object.tableName.length * 3;
  return bytesCount;
}

void _syncItemIsarSerialize(
  SyncItemIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdAt);
  writer.writeString(offsets[1], object.operation);
  writer.writeString(offsets[2], object.payloadJson);
  writer.writeLong(offsets[3], object.retryCount);
  writer.writeBool(offsets[4], object.synced);
  writer.writeString(offsets[5], object.tableName);
}

SyncItemIsar _syncItemIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SyncItemIsar();
  object.createdAt = reader.readDateTimeOrNull(offsets[0]);
  object.id = id;
  object.operation = reader.readString(offsets[1]);
  object.payloadJson = reader.readString(offsets[2]);
  object.retryCount = reader.readLong(offsets[3]);
  object.synced = reader.readBool(offsets[4]);
  object.tableName = reader.readString(offsets[5]);
  return object;
}

P _syncItemIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _syncItemIsarGetId(SyncItemIsar object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _syncItemIsarGetLinks(SyncItemIsar object) {
  return [];
}

void _syncItemIsarAttach(
  IsarCollection<dynamic> col,
  Id id,
  SyncItemIsar object,
) {
  object.id = id;
}

extension SyncItemIsarQueryWhereSort
    on QueryBuilder<SyncItemIsar, SyncItemIsar, QWhere> {
  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SyncItemIsarQueryWhere
    on QueryBuilder<SyncItemIsar, SyncItemIsar, QWhereClause> {
  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterWhereClause> idNotEqualTo(
    Id id,
  ) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterWhereClause> idGreaterThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterWhereClause> idLessThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerId,
          includeLower: includeLower,
          upper: upperId,
          includeUpper: includeUpper,
        ),
      );
    });
  }
}

extension SyncItemIsarQueryFilter
    on QueryBuilder<SyncItemIsar, SyncItemIsar, QFilterCondition> {
  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'createdAt'),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'createdAt'),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'createdAt', value: value),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  createdAtGreaterThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'createdAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  createdAtLessThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'createdAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  createdAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'createdAt',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition> idEqualTo(
    Id value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'id',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  operationEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'operation',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  operationGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'operation',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  operationLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'operation',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  operationBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'operation',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  operationStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'operation',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  operationEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'operation',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  operationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'operation',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  operationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'operation',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  operationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'operation', value: ''),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  operationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'operation', value: ''),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  payloadJsonEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'payloadJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  payloadJsonGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'payloadJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  payloadJsonLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'payloadJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  payloadJsonBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'payloadJson',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  payloadJsonStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'payloadJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  payloadJsonEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'payloadJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  payloadJsonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'payloadJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  payloadJsonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'payloadJson',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  payloadJsonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'payloadJson', value: ''),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  payloadJsonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'payloadJson', value: ''),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  retryCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'retryCount', value: value),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  retryCountGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'retryCount',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  retryCountLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'retryCount',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  retryCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'retryCount',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition> syncedEqualTo(
    bool value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'synced', value: value),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  tableNameEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'tableName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  tableNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'tableName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  tableNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'tableName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  tableNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'tableName',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  tableNameStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'tableName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  tableNameEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'tableName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  tableNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'tableName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  tableNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'tableName',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  tableNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'tableName', value: ''),
      );
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterFilterCondition>
  tableNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'tableName', value: ''),
      );
    });
  }
}

extension SyncItemIsarQueryObject
    on QueryBuilder<SyncItemIsar, SyncItemIsar, QFilterCondition> {}

extension SyncItemIsarQueryLinks
    on QueryBuilder<SyncItemIsar, SyncItemIsar, QFilterCondition> {}

extension SyncItemIsarQuerySortBy
    on QueryBuilder<SyncItemIsar, SyncItemIsar, QSortBy> {
  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterSortBy> sortByOperation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'operation', Sort.asc);
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterSortBy> sortByOperationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'operation', Sort.desc);
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterSortBy> sortByPayloadJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payloadJson', Sort.asc);
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterSortBy>
  sortByPayloadJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payloadJson', Sort.desc);
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterSortBy> sortByRetryCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'retryCount', Sort.asc);
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterSortBy>
  sortByRetryCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'retryCount', Sort.desc);
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterSortBy> sortBySynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'synced', Sort.asc);
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterSortBy> sortBySyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'synced', Sort.desc);
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterSortBy> sortByTableName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tableName', Sort.asc);
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterSortBy> sortByTableNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tableName', Sort.desc);
    });
  }
}

extension SyncItemIsarQuerySortThenBy
    on QueryBuilder<SyncItemIsar, SyncItemIsar, QSortThenBy> {
  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterSortBy> thenByOperation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'operation', Sort.asc);
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterSortBy> thenByOperationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'operation', Sort.desc);
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterSortBy> thenByPayloadJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payloadJson', Sort.asc);
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterSortBy>
  thenByPayloadJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payloadJson', Sort.desc);
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterSortBy> thenByRetryCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'retryCount', Sort.asc);
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterSortBy>
  thenByRetryCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'retryCount', Sort.desc);
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterSortBy> thenBySynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'synced', Sort.asc);
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterSortBy> thenBySyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'synced', Sort.desc);
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterSortBy> thenByTableName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tableName', Sort.asc);
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QAfterSortBy> thenByTableNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tableName', Sort.desc);
    });
  }
}

extension SyncItemIsarQueryWhereDistinct
    on QueryBuilder<SyncItemIsar, SyncItemIsar, QDistinct> {
  QueryBuilder<SyncItemIsar, SyncItemIsar, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QDistinct> distinctByOperation({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'operation', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QDistinct> distinctByPayloadJson({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'payloadJson', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QDistinct> distinctByRetryCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'retryCount');
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QDistinct> distinctBySynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'synced');
    });
  }

  QueryBuilder<SyncItemIsar, SyncItemIsar, QDistinct> distinctByTableName({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tableName', caseSensitive: caseSensitive);
    });
  }
}

extension SyncItemIsarQueryProperty
    on QueryBuilder<SyncItemIsar, SyncItemIsar, QQueryProperty> {
  QueryBuilder<SyncItemIsar, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SyncItemIsar, DateTime?, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<SyncItemIsar, String, QQueryOperations> operationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'operation');
    });
  }

  QueryBuilder<SyncItemIsar, String, QQueryOperations> payloadJsonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'payloadJson');
    });
  }

  QueryBuilder<SyncItemIsar, int, QQueryOperations> retryCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'retryCount');
    });
  }

  QueryBuilder<SyncItemIsar, bool, QQueryOperations> syncedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'synced');
    });
  }

  QueryBuilder<SyncItemIsar, String, QQueryOperations> tableNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tableName');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSyncMetaIsarCollection on Isar {
  IsarCollection<SyncMetaIsar> get syncMetaIsars => this.collection();
}

final SyncMetaIsarSchema = CollectionSchema(
  name: r'SyncMetaIsar',
  id: int.parse('1996871143930634365'),
  properties: {
    r'lastSyncedAt': PropertySchema(
      id: 0,
      name: r'lastSyncedAt',
      type: IsarType.dateTime,
    ),
  },

  estimateSize: _syncMetaIsarEstimateSize,
  serialize: _syncMetaIsarSerialize,
  deserialize: _syncMetaIsarDeserialize,
  deserializeProp: _syncMetaIsarDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},

  getId: _syncMetaIsarGetId,
  getLinks: _syncMetaIsarGetLinks,
  attach: _syncMetaIsarAttach,
  version: '3.3.2',
);

int _syncMetaIsarEstimateSize(
  SyncMetaIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _syncMetaIsarSerialize(
  SyncMetaIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.lastSyncedAt);
}

SyncMetaIsar _syncMetaIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SyncMetaIsar();
  object.id = id;
  object.lastSyncedAt = reader.readDateTimeOrNull(offsets[0]);
  return object;
}

P _syncMetaIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _syncMetaIsarGetId(SyncMetaIsar object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _syncMetaIsarGetLinks(SyncMetaIsar object) {
  return [];
}

void _syncMetaIsarAttach(
  IsarCollection<dynamic> col,
  Id id,
  SyncMetaIsar object,
) {
  object.id = id;
}

extension SyncMetaIsarQueryWhereSort
    on QueryBuilder<SyncMetaIsar, SyncMetaIsar, QWhere> {
  QueryBuilder<SyncMetaIsar, SyncMetaIsar, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SyncMetaIsarQueryWhere
    on QueryBuilder<SyncMetaIsar, SyncMetaIsar, QWhereClause> {
  QueryBuilder<SyncMetaIsar, SyncMetaIsar, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<SyncMetaIsar, SyncMetaIsar, QAfterWhereClause> idNotEqualTo(
    Id id,
  ) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<SyncMetaIsar, SyncMetaIsar, QAfterWhereClause> idGreaterThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SyncMetaIsar, SyncMetaIsar, QAfterWhereClause> idLessThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SyncMetaIsar, SyncMetaIsar, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerId,
          includeLower: includeLower,
          upper: upperId,
          includeUpper: includeUpper,
        ),
      );
    });
  }
}

extension SyncMetaIsarQueryFilter
    on QueryBuilder<SyncMetaIsar, SyncMetaIsar, QFilterCondition> {
  QueryBuilder<SyncMetaIsar, SyncMetaIsar, QAfterFilterCondition> idEqualTo(
    Id value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<SyncMetaIsar, SyncMetaIsar, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SyncMetaIsar, SyncMetaIsar, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SyncMetaIsar, SyncMetaIsar, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'id',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<SyncMetaIsar, SyncMetaIsar, QAfterFilterCondition>
  lastSyncedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'lastSyncedAt'),
      );
    });
  }

  QueryBuilder<SyncMetaIsar, SyncMetaIsar, QAfterFilterCondition>
  lastSyncedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'lastSyncedAt'),
      );
    });
  }

  QueryBuilder<SyncMetaIsar, SyncMetaIsar, QAfterFilterCondition>
  lastSyncedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'lastSyncedAt', value: value),
      );
    });
  }

  QueryBuilder<SyncMetaIsar, SyncMetaIsar, QAfterFilterCondition>
  lastSyncedAtGreaterThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'lastSyncedAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SyncMetaIsar, SyncMetaIsar, QAfterFilterCondition>
  lastSyncedAtLessThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'lastSyncedAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SyncMetaIsar, SyncMetaIsar, QAfterFilterCondition>
  lastSyncedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'lastSyncedAt',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }
}

extension SyncMetaIsarQueryObject
    on QueryBuilder<SyncMetaIsar, SyncMetaIsar, QFilterCondition> {}

extension SyncMetaIsarQueryLinks
    on QueryBuilder<SyncMetaIsar, SyncMetaIsar, QFilterCondition> {}

extension SyncMetaIsarQuerySortBy
    on QueryBuilder<SyncMetaIsar, SyncMetaIsar, QSortBy> {
  QueryBuilder<SyncMetaIsar, SyncMetaIsar, QAfterSortBy> sortByLastSyncedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastSyncedAt', Sort.asc);
    });
  }

  QueryBuilder<SyncMetaIsar, SyncMetaIsar, QAfterSortBy>
  sortByLastSyncedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastSyncedAt', Sort.desc);
    });
  }
}

extension SyncMetaIsarQuerySortThenBy
    on QueryBuilder<SyncMetaIsar, SyncMetaIsar, QSortThenBy> {
  QueryBuilder<SyncMetaIsar, SyncMetaIsar, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SyncMetaIsar, SyncMetaIsar, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SyncMetaIsar, SyncMetaIsar, QAfterSortBy> thenByLastSyncedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastSyncedAt', Sort.asc);
    });
  }

  QueryBuilder<SyncMetaIsar, SyncMetaIsar, QAfterSortBy>
  thenByLastSyncedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastSyncedAt', Sort.desc);
    });
  }
}

extension SyncMetaIsarQueryWhereDistinct
    on QueryBuilder<SyncMetaIsar, SyncMetaIsar, QDistinct> {
  QueryBuilder<SyncMetaIsar, SyncMetaIsar, QDistinct> distinctByLastSyncedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastSyncedAt');
    });
  }
}

extension SyncMetaIsarQueryProperty
    on QueryBuilder<SyncMetaIsar, SyncMetaIsar, QQueryProperty> {
  QueryBuilder<SyncMetaIsar, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SyncMetaIsar, DateTime?, QQueryOperations>
  lastSyncedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastSyncedAt');
    });
  }
}
