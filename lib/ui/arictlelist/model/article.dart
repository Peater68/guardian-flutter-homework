import 'package:equatable/equatable.dart';
import 'package:guardian/domain/model/domain_article.dart';

class Article extends Equatable {
  final String id;
  final String title;
  final String imageUrl;
  final List<String> tags;

  Article({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.tags,
  });

  @override
  List<Object?> get props => [id, title, imageUrl, tags];
}

extension DomainToUIConversion on DomainArticle {
  Article toUIModel() {
    return Article(
      id: this.id,
      title: this.webTitle,
      imageUrl: this.thumbnail,
      tags: this.tags.take(3).toList(),
    );
  }
}
