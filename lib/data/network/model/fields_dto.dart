import 'package:json_annotation/json_annotation.dart';

part 'fields_dto.g.dart';

@JsonSerializable()
class FieldsDto {
    final String thumbnail;

    FieldsDto(this.thumbnail);

    static const fromJsonFactory = _$FieldsDtoFromJson;

    factory FieldsDto.fromJson(Map<String, dynamic> json) =>
        _$FieldsDtoFromJson(json);

    Map<String, dynamic> toJson() => _$FieldsDtoToJson(this);
}