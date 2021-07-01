import 'package:equatable/equatable.dart';
import 'package:guardian/data/disk/guardian_database.dart';
import 'package:guardian/data/network/model/article_dto.dart';

class DomainArticle extends Equatable {
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
  final String thumbnail;
  final List<String> tags;

  DomainArticle({
    required this.apiUrl,
    required this.id,
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
    required this.tags,
  });

  @override
  List<Object?> get props => [
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
        this.thumbnail,
        this.tags,
      ];
}

extension NetworkToDomainConversion on ArticleDto {
  DomainArticle toDomainModel() {
    return DomainArticle(
      apiUrl: this.apiUrl,
      id: this.id,
      isHosted: this.isHosted,
      pillarId: this.pillarId,
      pillarName: this.pillarName,
      sectionId: this.sectionId,
      sectionName: this.sectionName,
      type: this.type,
      webPublicationDate: this.webPublicationDate,
      webTitle: this.webTitle,
      webUrl: this.webUrl,
      thumbnail: this.fields.thumbnail,
      tags: this.tags.map((e) => e.webTitle).toList(),
    );
  }
}

String _tagsSeparator = ";";

extension DatabaseToDomainConversion on DomainArticle {
  MoorArticleData toMoorModel() => MoorArticleData(
        id: this.id,
        apiUrl: this.apiUrl,
        isHosted: this.isHosted,
        pillarId: this.pillarId,
        pillarName: this.pillarName,
        sectionId: this.sectionId,
        sectionName: this.sectionName,
        type: this.type,
        webPublicationDate: this.webPublicationDate,
        webTitle: this.webTitle,
        webUrl: this.webUrl,
        thumbnail: this.thumbnail,
        tags: this.tags.join(_tagsSeparator),
      );
}

extension DomainToDatabaseConversion on MoorArticleData {
  DomainArticle toDomainModel() => DomainArticle(
        apiUrl: this.apiUrl,
        id: this.id,
        isHosted: this.isHosted,
        pillarId: this.pillarId,
        pillarName: this.pillarName,
        sectionId: this.sectionId,
        sectionName: this.sectionName,
        type: this.type,
        webPublicationDate: this.webPublicationDate,
        webTitle: this.webTitle,
        webUrl: this.webUrl,
        thumbnail: this.thumbnail,
        tags: this.tags.split(_tagsSeparator),
      );
}
