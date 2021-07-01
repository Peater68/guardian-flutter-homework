import 'package:guardian/data/network/model/fields_dto.dart';
import 'package:guardian/data/network/model/tag_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'article_dto.g.dart';

@JsonSerializable()
class ArticleDto {
  final String apiUrl;
  final String id;
  final bool isHosted;
  final String pillarId;
  final String pillarName;
  final String sectionId;
  final String sectionName;
  final String type;
  final String webPublicationDate;
  final String webTitle;
  final String webUrl;
  final FieldsDto fields;
  final List<TagDto> tags;

  ArticleDto(
    this.apiUrl,
    this.id,
    this.isHosted,
    this.pillarId,
    this.pillarName,
    this.sectionId,
    this.sectionName,
    this.type,
    this.webPublicationDate,
    this.webTitle,
    this.webUrl,
    this.fields,
    this.tags,
  );

  static const fromJsonFactory = _$ArticleDtoFromJson;

  factory ArticleDto.fromJson(Map<String, dynamic> json) =>
      _$ArticleDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleDtoToJson(this);
}
