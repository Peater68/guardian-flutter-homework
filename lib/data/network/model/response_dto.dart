import 'package:guardian/data/network/model/article_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response_dto.g.dart';

@JsonSerializable()
class ResponseDto {
  final int currentPage;
  final String orderBy;
  final int pageSize;
  final int pages;
  final List<ArticleDto> results;
  final int startIndex;
  final String status;
  final int total;
  final String userTier;

  ResponseDto(
    this.currentPage,
    this.orderBy,
    this.pageSize,
    this.pages,
    this.results,
    this.startIndex,
    this.status,
    this.total,
    this.userTier,
  );

  static const fromJsonFactory = _$ResponseDtoFromJson;

  factory ResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseDtoToJson(this);
}
