// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleDto _$ArticleDtoFromJson(Map<String, dynamic> json) {
  return ArticleDto(
    json['apiUrl'] as String,
    json['id'] as String,
    json['isHosted'] as bool,
    json['pillarId'] as String,
    json['pillarName'] as String,
    json['sectionId'] as String,
    json['sectionName'] as String,
    json['type'] as String,
    json['webPublicationDate'] as String,
    json['webTitle'] as String,
    json['webUrl'] as String,
    FieldsDto.fromJson(json['fields'] as Map<String, dynamic>),
    (json['tags'] as List<dynamic>)
        .map((e) => TagDto.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ArticleDtoToJson(ArticleDto instance) =>
    <String, dynamic>{
      'apiUrl': instance.apiUrl,
      'id': instance.id,
      'isHosted': instance.isHosted,
      'pillarId': instance.pillarId,
      'pillarName': instance.pillarName,
      'sectionId': instance.sectionId,
      'sectionName': instance.sectionName,
      'type': instance.type,
      'webPublicationDate': instance.webPublicationDate,
      'webTitle': instance.webTitle,
      'webUrl': instance.webUrl,
      'fields': instance.fields,
      'tags': instance.tags,
    };
