part of 'article_list_bloc.dart';

@immutable
abstract class ArticleListState {
  const ArticleListState();
}

class Loading extends ArticleListState {
  static final Loading _instance = Loading._();

  factory Loading() => _instance;

  Loading._();
}

class Initial extends ArticleListState {
  static final Initial _instance = Initial._();

  factory Initial() => _instance;

  Initial._();
}

abstract class Content extends ArticleListState {
  final String filter;
  final List<Article> articles;

  Content({required this.articles, required this.filter});
}

class ContentReady extends Content with EquatableMixin {
  ContentReady({required List<Article> articles, String filter = ""}) : super(articles: articles, filter: filter);

  @override
  List<Object> get props => [articles];
}

class Refreshing extends Content with EquatableMixin {
  Refreshing({required List<Article> articles, String filter = ""}) : super(articles: articles, filter: filter);

  @override
  List<Object> get props => [articles];
}

class Error extends Content with EquatableMixin {
  Error({required List<Article> articles, String filter = ""}) : super(articles: articles, filter: filter);

  @override
  List<Object> get props => [articles];
}

class Empty extends ArticleListState with EquatableMixin {
  final String? message;

  Empty({this.message});

  @override
  List<Object?> get props => [message];
}
