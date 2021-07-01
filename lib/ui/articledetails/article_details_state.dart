part of 'article_details_bloc.dart';

@immutable
abstract class ArticleDetailsState {}

class Loading extends ArticleDetailsState {
    static final Loading _instance = Loading._();

    factory Loading() => _instance;

    Loading._();
}

class Error extends ArticleDetailsState {
    static final Error _instance = Error._();

    factory Error() => _instance;

    Error._();
}

class Content extends ArticleDetailsState with EquatableMixin {
    final ArticleDetails articleDetails;

    Content({required this.articleDetails});

    @override
    List<Object> get props => [articleDetails];
}