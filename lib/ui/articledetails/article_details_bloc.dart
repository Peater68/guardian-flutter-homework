import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:guardian/domain/article_interactor.dart';
import 'package:guardian/ui/articledetails/model/article_details.dart';
import 'package:meta/meta.dart';

part 'article_details_event.dart';

part 'article_details_state.dart';

class ArticleDetailsBloc
    extends Bloc<ArticleDetailsEvent, ArticleDetailsState> {
  final ArticleInteractor _articleInteractor;

  ArticleDetailsBloc(this._articleInteractor) : super(Loading());

  @override
  Stream<ArticleDetailsState> mapEventToState(
    ArticleDetailsEvent event,
  ) async* {
    if (event is LoadArticleEvent) {
      final article = await _articleInteractor.getArticleById(event.id);

      if (article == null) {
        yield Error();
      } else {
        yield Content(articleDetails: article.toUIDetailsModel());
      }
    }
  }
}
