import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:guardian/domain/article_interactor.dart';
import 'package:guardian/ui/arictlelist/model/article.dart';
import 'package:meta/meta.dart';

part 'article_list_event.dart';

part 'article_list_state.dart';

class ArticleListBloc extends Bloc<ArticleListEvent, ArticleListState> {
  final ArticleInteractor _articleInteractor;

  ArticleListBloc(this._articleInteractor) : super(Initial());

  @override
  Stream<ArticleListState> mapEventToState(
    ArticleListEvent event,
  ) async* {
    if (event is LoadArticlesEvent) {
      var articles = await _articleInteractor.getArticles();
      if (articles.isEmpty) {
        await _articleInteractor.refreshArticles();
        articles = await _articleInteractor.getArticles();
      }
      yield ContentReady(articles: articles.map((e) => e.toUIModel()).toList());
    } else if (event is RefreshArticlesEvent) {
      final currentState = state;
      if (!(currentState is Refreshing)) {
        if (currentState is ContentReady) {
          yield Refreshing(articles: currentState.articles);

          try {
            _articleInteractor.refreshArticles(filter: currentState.filter);
          } catch (e) {
            yield Error(articles: currentState.articles);
          }
        }

        final articles = await _articleInteractor.getArticles();
        yield ContentReady(articles: articles.map((e) => e.toUIModel()).toList());
      }
      await _articleInteractor.refreshArticles();
      final articles = await _articleInteractor.getArticles();
      yield Refreshing(articles: articles.map((e) => e.toUIModel()).toList());
    } else if (event is SearchArticlesEvent) {
      yield Loading();
      await _articleInteractor.refreshArticles(filter: event.searchText);
      final articles = await _articleInteractor.getArticles();
      yield ContentReady(articles: articles.map((e) => e.toUIModel()).toList(), filter: event.searchText);
    }
  }
}
