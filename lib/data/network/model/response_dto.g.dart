// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseDto _$ResponseDtoFromJson(Map<String, dynamic> json) {
  return ResponseDto(
    json['currentPage'] as int,
    json['orderBy'] as String,
    json['pageSize'] as int,
    json['pages'] as int,
    (json['results'] as List<dynamic>)
        .map((e) => ArticleDto.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['startIndex'] as int,
    json['status'] as String,
    json['total'] as int,
    json['userTier'] as String,
  );
}

Map<String, dynamic> _$ResponseDtoToJson(ResponseDto instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'orderBy': instance.orderBy,
      'pageSize': instance.pageSize,
      'pages': instance.pages,
      'results': instance.results,
      'startIndex': instance.startIndex,
      'status': instance.status,
      'total': instance.total,
      'userTier': instance.userTier,
    };
