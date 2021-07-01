import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guardian/di/di_util.dart';
import 'package:guardian/ui/articledetails/article_details_bloc.dart';
import 'package:guardian/ui/articledetails/widget/article_details_content.dart';

class ArticleDetails extends StatelessWidget {
  final String articleId;

  const ArticleDetails(this.articleId);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Guardian app"),
        ),
        body: BlocProvider(
          create: (context) => injector<ArticleDetailsBloc>(),
          child: BlocBuilder<ArticleDetailsBloc, ArticleDetailsState>(
            builder: (context, state) {
              if (state is Content) {
                return ArticleDetailsContent(state.articleDetails);
              } else if (state is Loading) {
                BlocProvider.of<ArticleDetailsBloc>(context)
                    .add(LoadArticleEvent(articleId));

                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return Center(
                  child: Text(
                    "ERROR",
                    style: TextStyle(fontSize: 44.0),
                  ),
                );
              }
            },
          ),
        ));
  }
}
