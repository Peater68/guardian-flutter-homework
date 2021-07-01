import 'package:json_annotation/json_annotation.dart';

part 'tag_dto.g.dart';

@JsonSerializable()
class TagDto {
  final String? description;
  final String id;
  final String type;
  final String webTitle;

  TagDto(
    this.description,
    this.id,
    this.type,
    this.webTitle,
  );

  static const fromJsonFactory = _$TagDtoFromJson;

  factory TagDto.fromJson(Map<String, dynamic> json) => _$TagDtoFromJson(json);

  Map<String, dynamic> toJson() => _$TagDtoToJson(this);
}
