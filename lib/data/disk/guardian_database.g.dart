// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guardian_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class MoorArticleData extends DataClass implements Insertable<MoorArticleData> {
  final String id;
  final String apiUrl;
  final bool isHosted;
  final String pillarId;
  final String pillarName;
  final String sectionId;
  final String sectionName;
  final String type;
  final String webPublicationDate;
  final String webTitle;
  final String webUrl;
  final String thumbnail;
  final String tags;
  MoorArticleData(
      {required this.id,
      required this.apiUrl,
      required this.isHosted,
      required this.pillarId,
      required this.pillarName,
      required this.sectionId,
      required this.sectionName,
      required this.type,
      required this.webPublicationDate,
      required this.webTitle,
      required this.webUrl,
      required this.thumbnail,
      required this.tags});
  factory MoorArticleData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return MoorArticleData(
      id: stringType.mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      apiUrl: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}api_url'])!,
      isHosted: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}is_hosted'])!,
      pillarId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}pillar_id'])!,
      pillarName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}pillar_name'])!,
      sectionId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}section_id'])!,
      sectionName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}section_name'])!,
      type: stringType.mapFromDatabaseResponse(data['${effectivePrefix}type'])!,
      webPublicationDate: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}web_publication_date'])!,
      webTitle: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}web_title'])!,
      webUrl: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}web_url'])!,
      thumbnail: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}thumbnail'])!,
      tags: stringType.mapFromDatabaseResponse(data['${effectivePrefix}tags'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['api_url'] = Variable<String>(apiUrl);
    map['is_hosted'] = Variable<bool>(isHosted);
    map['pillar_id'] = Variable<String>(pillarId);
    map['pillar_name'] = Variable<String>(pillarName);
    map['section_id'] = Variable<String>(sectionId);
    map['section_name'] = Variable<String>(sectionName);
    map['type'] = Variable<String>(type);
    map['web_publication_date'] = Variable<String>(webPublicationDate);
    map['web_title'] = Variable<String>(webTitle);
    map['web_url'] = Variable<String>(webUrl);
    map['thumbnail'] = Variable<String>(thumbnail);
    map['tags'] = Variable<String>(tags);
    return map;
  }

  MoorArticleCompanion toCompanion(bool nullToAbsent) {
    return MoorArticleCompanion(
      id: Value(id),
      apiUrl: Value(apiUrl),
      isHosted: Value(isHosted),
      pillarId: Value(pillarId),
      pillarName: Value(pillarName),
      sectionId: Value(sectionId),
      sectionName: Value(sectionName),
      type: Value(type),
      webPublicationDate: Value(webPublicationDate),
      webTitle: Value(webTitle),
      webUrl: Value(webUrl),
      thumbnail: Value(thumbnail),
      tags: Value(tags),
    );
  }

  factory MoorArticleData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MoorArticleData(
      id: serializer.fromJson<String>(json['id']),
      apiUrl: serializer.fromJson<String>(json['apiUrl']),
      isHosted: serializer.fromJson<bool>(json['isHosted']),
      pillarId: serializer.fromJson<String>(json['pillarId']),
      pillarName: serializer.fromJson<String>(json['pillarName']),
      sectionId: serializer.fromJson<String>(json['sectionId']),
      sectionName: serializer.fromJson<String>(json['sectionName']),
      type: serializer.fromJson<String>(json['type']),
      webPublicationDate:
          serializer.fromJson<String>(json['webPublicationDate']),
      webTitle: serializer.fromJson<String>(json['webTitle']),
      webUrl: serializer.fromJson<String>(json['webUrl']),
      thumbnail: serializer.fromJson<String>(json['thumbnail']),
      tags: serializer.fromJson<String>(json['tags']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'apiUrl': serializer.toJson<String>(apiUrl),
      'isHosted': serializer.toJson<bool>(isHosted),
      'pillarId': serializer.toJson<String>(pillarId),
      'pillarName': serializer.toJson<String>(pillarName),
      'sectionId': serializer.toJson<String>(sectionId),
      'sectionName': serializer.toJson<String>(sectionName),
      'type': serializer.toJson<String>(type),
      'webPublicationDate': serializer.toJson<String>(webPublicationDate),
      'webTitle': serializer.toJson<String>(webTitle),
      'webUrl': serializer.toJson<String>(webUrl),
      'thumbnail': serializer.toJson<String>(thumbnail),
      'tags': serializer.toJson<String>(tags),
    };
  }

  MoorArticleData copyWith(
          {String? id,
          String? apiUrl,
          bool? isHosted,
          String? pillarId,
          String? pillarName,
          String? sectionId,
          String? sectionName,
          String? type,
          String? webPublicationDate,
          String? webTitle,
          String? webUrl,
          String? thumbnail,
          String? tags}) =>
      MoorArticleData(
        id: id ?? this.id,
        apiUrl: apiUrl ?? this.apiUrl,
        isHosted: isHosted ?? this.isHosted,
        pillarId: pillarId ?? this.pillarId,
        pillarName: pillarName ?? this.pillarName,
        sectionId: sectionId ?? this.sectionId,
        sectionName: sectionName ?? this.sectionName,
        type: type ?? this.type,
        webPublicationDate: webPublicationDate ?? this.webPublicationDate,
        webTitle: webTitle ?? this.webTitle,
        webUrl: webUrl ?? this.webUrl,
        thumbnail: thumbnail ?? this.thumbnail,
        tags: tags ?? this.tags,
      );
  @override
  String toString() {
    return (StringBuffer('MoorArticleData(')
          ..write('id: $id, ')
          ..write('apiUrl: $apiUrl, ')
          ..write('isHosted: $isHosted, ')
          ..write('pillarId: $pillarId, ')
          ..write('pillarName: $pillarName, ')
          ..write('sectionId: $sectionId, ')
          ..write('sectionName: $sectionName, ')
          ..write('type: $type, ')
          ..write('webPublicationDate: $webPublicationDate, ')
          ..write('webTitle: $webTitle, ')
          ..write('webUrl: $webUrl, ')
          ..write('thumbnail: $thumbnail, ')
          ..write('tags: $tags')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          apiUrl.hashCode,
          $mrjc(
              isHosted.hashCode,
              $mrjc(
                  pillarId.hashCode,
                  $mrjc(
                      pillarName.hashCode,
                      $mrjc(
                          sectionId.hashCode,
                          $mrjc(
                              sectionName.hashCode,
                              $mrjc(
                                  type.hashCode,
                                  $mrjc(
                                      webPublicationDate.hashCode,
                                      $mrjc(
                                          webTitle.hashCode,
                                          $mrjc(
                                              webUrl.hashCode,
                                              $mrjc(thumbnail.hashCode,
                                                  tags.hashCode)))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is MoorArticleData &&
          other.id == this.id &&
          other.apiUrl == this.apiUrl &&
          other.isHosted == this.isHosted &&
          other.pillarId == this.pillarId &&
          other.pillarName == this.pillarName &&
          other.sectionId == this.sectionId &&
          other.sectionName == this.sectionName &&
          other.type == this.type &&
          other.webPublicationDate == this.webPublicationDate &&
          other.webTitle == this.webTitle &&
          other.webUrl == this.webUrl &&
          other.thumbnail == this.thumbnail &&
          other.tags == this.tags);
}

class MoorArticleCompanion extends UpdateCompanion<MoorArticleData> {
  final Value<String> id;
  final Value<String> apiUrl;
  final Value<bool> isHosted;
  final Value<String> pillarId;
  final Value<String> pillarName;
  final Value<String> sectionId;
  final Value<String> sectionName;
  final Value<String> type;
  final Value<String> webPublicationDate;
  final Value<String> webTitle;
  final Value<String> webUrl;
  final Value<String> thumbnail;
  final Value<String> tags;
  const MoorArticleCompanion({
    this.id = const Value.absent(),
    this.apiUrl = const Value.absent(),
    this.isHosted = const Value.absent(),
    this.pillarId = const Value.absent(),
    this.pillarName = const Value.absent(),
    this.sectionId = const Value.absent(),
    this.sectionName = const Value.absent(),
    this.type = const Value.absent(),
    this.webPublicationDate = const Value.absent(),
    this.webTitle = const Value.absent(),
    this.webUrl = const Value.absent(),
    this.thumbnail = const Value.absent(),
    this.tags = const Value.absent(),
  });
  MoorArticleCompanion.insert({
    required String id,
    required String apiUrl,
    required bool isHosted,
    required String pillarId,
    required String pillarName,
    required String sectionId,
    required String sectionName,
    required String type,
    required String webPublicationDate,
    required String webTitle,
    required String webUrl,
    required String thumbnail,
    required String tags,
  })  : id = Value(id),
        apiUrl = Value(apiUrl),
        isHosted = Value(isHosted),
        pillarId = Value(pillarId),
        pillarName = Value(pillarName),
        sectionId = Value(sectionId),
        sectionName = Value(sectionName),
        type = Value(type),
        webPublicationDate = Value(webPublicationDate),
        webTitle = Value(webTitle),
        webUrl = Value(webUrl),
        thumbnail = Value(thumbnail),
        tags = Value(tags);
  static Insertable<MoorArticleData> custom({
    Expression<String>? id,
    Expression<String>? apiUrl,
    Expression<bool>? isHosted,
    Expression<String>? pillarId,
    Expression<String>? pillarName,
    Expression<String>? sectionId,
    Expression<String>? sectionName,
    Expression<String>? type,
    Expression<String>? webPublicationDate,
    Expression<String>? webTitle,
    Expression<String>? webUrl,
    Expression<String>? thumbnail,
    Expression<String>? tags,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (apiUrl != null) 'api_url': apiUrl,
      if (isHosted != null) 'is_hosted': isHosted,
      if (pillarId != null) 'pillar_id': pillarId,
      if (pillarName != null) 'pillar_name': pillarName,
      if (sectionId != null) 'section_id': sectionId,
      if (sectionName != null) 'section_name': sectionName,
      if (type != null) 'type': type,
      if (webPublicationDate != null)
        'web_publication_date': webPublicationDate,
      if (webTitle != null) 'web_title': webTitle,
      if (webUrl != null) 'web_url': webUrl,
      if (thumbnail != null) 'thumbnail': thumbnail,
      if (tags != null) 'tags': tags,
    });
  }

  MoorArticleCompanion copyWith(
      {Value<String>? id,
      Value<String>? apiUrl,
      Value<bool>? isHosted,
      Value<String>? pillarId,
      Value<String>? pillarName,
      Value<String>? sectionId,
      Value<String>? sectionName,
      Value<String>? type,
      Value<String>? webPublicationDate,
      Value<String>? webTitle,
      Value<String>? webUrl,
      Value<String>? thumbnail,
      Value<String>? tags}) {
    return MoorArticleCompanion(
      id: id ?? this.id,
      apiUrl: apiUrl ?? this.apiUrl,
      isHosted: isHosted ?? this.isHosted,
      pillarId: pillarId ?? this.pillarId,
      pillarName: pillarName ?? this.pillarName,
      sectionId: sectionId ?? this.sectionId,
      sectionName: sectionName ?? this.sectionName,
      type: type ?? this.type,
      webPublicationDate: webPublicationDate ?? this.webPublicationDate,
      webTitle: webTitle ?? this.webTitle,
      webUrl: webUrl ?? this.webUrl,
      thumbnail: thumbnail ?? this.thumbnail,
      tags: tags ?? this.tags,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (apiUrl.present) {
      map['api_url'] = Variable<String>(apiUrl.value);
    }
    if (isHosted.present) {
      map['is_hosted'] = Variable<bool>(isHosted.value);
    }
    if (pillarId.present) {
      map['pillar_id'] = Variable<String>(pillarId.value);
    }
    if (pillarName.present) {
      map['pillar_name'] = Variable<String>(pillarName.value);
    }
    if (sectionId.present) {
      map['section_id'] = Variable<String>(sectionId.value);
    }
    if (sectionName.present) {
      map['section_name'] = Variable<String>(sectionName.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (webPublicationDate.present) {
      map['web_publication_date'] = Variable<String>(webPublicationDate.value);
    }
    if (webTitle.present) {
      map['web_title'] = Variable<String>(webTitle.value);
    }
    if (webUrl.present) {
      map['web_url'] = Variable<String>(webUrl.value);
    }
    if (thumbnail.present) {
      map['thumbnail'] = Variable<String>(thumbnail.value);
    }
    if (tags.present) {
      map['tags'] = Variable<String>(tags.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoorArticleCompanion(')
          ..write('id: $id, ')
          ..write('apiUrl: $apiUrl, ')
          ..write('isHosted: $isHosted, ')
          ..write('pillarId: $pillarId, ')
          ..write('pillarName: $pillarName, ')
          ..write('sectionId: $sectionId, ')
          ..write('sectionName: $sectionName, ')
          ..write('type: $type, ')
          ..write('webPublicationDate: $webPublicationDate, ')
          ..write('webTitle: $webTitle, ')
          ..write('webUrl: $webUrl, ')
          ..write('thumbnail: $thumbnail, ')
          ..write('tags: $tags')
          ..write(')'))
        .toString();
  }
}

class $MoorArticleTable extends MoorArticle
    with TableInfo<$MoorArticleTable, MoorArticleData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $MoorArticleTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedTextColumn id = _constructId();
  GeneratedTextColumn _constructId() {
    return GeneratedTextColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _apiUrlMeta = const VerificationMeta('apiUrl');
  @override
  late final GeneratedTextColumn apiUrl = _constructApiUrl();
  GeneratedTextColumn _constructApiUrl() {
    return GeneratedTextColumn(
      'api_url',
      $tableName,
      false,
    );
  }

  final VerificationMeta _isHostedMeta = const VerificationMeta('isHosted');
  @override
  late final GeneratedBoolColumn isHosted = _constructIsHosted();
  GeneratedBoolColumn _constructIsHosted() {
    return GeneratedBoolColumn(
      'is_hosted',
      $tableName,
      false,
    );
  }

  final VerificationMeta _pillarIdMeta = const VerificationMeta('pillarId');
  @override
  late final GeneratedTextColumn pillarId = _constructPillarId();
  GeneratedTextColumn _constructPillarId() {
    return GeneratedTextColumn(
      'pillar_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _pillarNameMeta = const VerificationMeta('pillarName');
  @override
  late final GeneratedTextColumn pillarName = _constructPillarName();
  GeneratedTextColumn _constructPillarName() {
    return GeneratedTextColumn(
      'pillar_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _sectionIdMeta = const VerificationMeta('sectionId');
  @override
  late final GeneratedTextColumn sectionId = _constructSectionId();
  GeneratedTextColumn _constructSectionId() {
    return GeneratedTextColumn(
      'section_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _sectionNameMeta =
      const VerificationMeta('sectionName');
  @override
  late final GeneratedTextColumn sectionName = _constructSectionName();
  GeneratedTextColumn _constructSectionName() {
    return GeneratedTextColumn(
      'section_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedTextColumn type = _constructType();
  GeneratedTextColumn _constructType() {
    return GeneratedTextColumn(
      'type',
      $tableName,
      false,
    );
  }

  final VerificationMeta _webPublicationDateMeta =
      const VerificationMeta('webPublicationDate');
  @override
  late final GeneratedTextColumn webPublicationDate =
      _constructWebPublicationDate();
  GeneratedTextColumn _constructWebPublicationDate() {
    return GeneratedTextColumn(
      'web_publication_date',
      $tableName,
      false,
    );
  }

  final VerificationMeta _webTitleMeta = const VerificationMeta('webTitle');
  @override
  late final GeneratedTextColumn webTitle = _constructWebTitle();
  GeneratedTextColumn _constructWebTitle() {
    return GeneratedTextColumn(
      'web_title',
      $tableName,
      false,
    );
  }

  final VerificationMeta _webUrlMeta = const VerificationMeta('webUrl');
  @override
  late final GeneratedTextColumn webUrl = _constructWebUrl();
  GeneratedTextColumn _constructWebUrl() {
    return GeneratedTextColumn(
      'web_url',
      $tableName,
      false,
    );
  }

  final VerificationMeta _thumbnailMeta = const VerificationMeta('thumbnail');
  @override
  late final GeneratedTextColumn thumbnail = _constructThumbnail();
  GeneratedTextColumn _constructThumbnail() {
    return GeneratedTextColumn(
      'thumbnail',
      $tableName,
      false,
    );
  }

  final VerificationMeta _tagsMeta = const VerificationMeta('tags');
  @override
  late final GeneratedTextColumn tags = _constructTags();
  GeneratedTextColumn _constructTags() {
    return GeneratedTextColumn(
      'tags',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        apiUrl,
        isHosted,
        pillarId,
        pillarName,
        sectionId,
        sectionName,
        type,
        webPublicationDate,
        webTitle,
        webUrl,
        thumbnail,
        tags
      ];
  @override
  $MoorArticleTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'moor_article';
  @override
  final String actualTableName = 'moor_article';
  @override
  VerificationContext validateIntegrity(Insertable<MoorArticleData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('api_url')) {
      context.handle(_apiUrlMeta,
          apiUrl.isAcceptableOrUnknown(data['api_url']!, _apiUrlMeta));
    } else if (isInserting) {
      context.missing(_apiUrlMeta);
    }
    if (data.containsKey('is_hosted')) {
      context.handle(_isHostedMeta,
          isHosted.isAcceptableOrUnknown(data['is_hosted']!, _isHostedMeta));
    } else if (isInserting) {
      context.missing(_isHostedMeta);
    }
    if (data.containsKey('pillar_id')) {
      context.handle(_pillarIdMeta,
          pillarId.isAcceptableOrUnknown(data['pillar_id']!, _pillarIdMeta));
    } else if (isInserting) {
      context.missing(_pillarIdMeta);
    }
    if (data.containsKey('pillar_name')) {
      context.handle(
          _pillarNameMeta,
          pillarName.isAcceptableOrUnknown(
              data['pillar_name']!, _pillarNameMeta));
    } else if (isInserting) {
      context.missing(_pillarNameMeta);
    }
    if (data.containsKey('section_id')) {
      context.handle(_sectionIdMeta,
          sectionId.isAcceptableOrUnknown(data['section_id']!, _sectionIdMeta));
    } else if (isInserting) {
      context.missing(_sectionIdMeta);
    }
    if (data.containsKey('section_name')) {
      context.handle(
          _sectionNameMeta,
          sectionName.isAcceptableOrUnknown(
              data['section_name']!, _sectionNameMeta));
    } else if (isInserting) {
      context.missing(_sectionNameMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('web_publication_date')) {
      context.handle(
          _webPublicationDateMeta,
          webPublicationDate.isAcceptableOrUnknown(
              data['web_publication_date']!, _webPublicationDateMeta));
    } else if (isInserting) {
      context.missing(_webPublicationDateMeta);
    }
    if (data.containsKey('web_title')) {
      context.handle(_webTitleMeta,
          webTitle.isAcceptableOrUnknown(data['web_title']!, _webTitleMeta));
    } else if (isInserting) {
      context.missing(_webTitleMeta);
    }
    if (data.containsKey('web_url')) {
      context.handle(_webUrlMeta,
          webUrl.isAcceptableOrUnknown(data['web_url']!, _webUrlMeta));
    } else if (isInserting) {
      context.missing(_webUrlMeta);
    }
    if (data.containsKey('thumbnail')) {
      context.handle(_thumbnailMeta,
          thumbnail.isAcceptableOrUnknown(data['thumbnail']!, _thumbnailMeta));
    } else if (isInserting) {
      context.missing(_thumbnailMeta);
    }
    if (data.containsKey('tags')) {
      context.handle(
          _tagsMeta, tags.isAcceptableOrUnknown(data['tags']!, _tagsMeta));
    } else if (isInserting) {
      context.missing(_tagsMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MoorArticleData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MoorArticleData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $MoorArticleTable createAlias(String alias) {
    return $MoorArticleTable(_db, alias);
  }
}

abstract class _$GuardianDatabase extends GeneratedDatabase {
  _$GuardianDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $MoorArticleTable moorArticle = $MoorArticleTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [moorArticle];
}
