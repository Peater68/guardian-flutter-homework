import 'package:equatable/equatable.dart';
import 'package:guardian/domain/model/domain_article.dart';

class ArticleDetails extends Equatable {
  final String title;
  final String thumbnail;
  final List<String> tags;
  final String webUrl;
  final String section;

  ArticleDetails({
    required this.title,
    required this.thumbnail,
    required this.tags,
    required this.webUrl,
    required this.section,
  });

  @override
  List<Object?> get props => [
        title,
        thumbnail,
        tags,
        webUrl,
        section,
      ];
}

extension DomainToUIConversion on DomainArticle {
  ArticleDetails toUIDetailsModel() => ArticleDetails(
      title: this.webTitle,
      thumbnail: this.thumbnail,
      tags: this.tags,
      webUrl: this.webUrl,
      section: this.sectionName,
    );
}
