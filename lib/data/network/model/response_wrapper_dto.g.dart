// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_wrapper_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseWrapperDto _$ResponseWrapperDtoFromJson(Map<String, dynamic> json) {
  return ResponseWrapperDto(
    ResponseDto.fromJson(json['response'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ResponseWrapperDtoToJson(ResponseWrapperDto instance) =>
    <String, dynamic>{
      'response': instance.response,
    };
