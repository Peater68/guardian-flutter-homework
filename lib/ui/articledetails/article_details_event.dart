part of 'article_details_bloc.dart';

@immutable
abstract class ArticleDetailsEvent {}

class LoadArticleEvent extends ArticleDetailsEvent {
    final String id;

    LoadArticleEvent(this.id);
}