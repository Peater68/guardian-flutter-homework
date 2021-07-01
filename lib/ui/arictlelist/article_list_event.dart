part of 'article_list_bloc.dart';

@immutable
abstract class ArticleListEvent {}

class LoadArticlesEvent extends ArticleListEvent {
  static final LoadArticlesEvent _instance = LoadArticlesEvent._();

  factory LoadArticlesEvent() => _instance;

  LoadArticlesEvent._();
}

class RefreshArticlesEvent extends ArticleListEvent {
  static final RefreshArticlesEvent _instance = RefreshArticlesEvent._();

  factory RefreshArticlesEvent() => _instance;

  RefreshArticlesEvent._();
}

class SearchArticlesEvent extends ArticleListEvent {
  final String searchText;

  SearchArticlesEvent(this.searchText);
}
