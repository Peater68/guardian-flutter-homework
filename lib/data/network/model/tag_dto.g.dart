// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TagDto _$TagDtoFromJson(Map<String, dynamic> json) {
  return TagDto(
    json['description'] as String?,
    json['id'] as String,
    json['type'] as String,
    json['webTitle'] as String,
  );
}

Map<String, dynamic> _$TagDtoToJson(TagDto instance) => <String, dynamic>{
      'description': instance.description,
      'id': instance.id,
      'type': instance.type,
      'webTitle': instance.webTitle,
    };
