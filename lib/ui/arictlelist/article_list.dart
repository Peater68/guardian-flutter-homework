import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guardian/di/di_util.dart';
import 'package:guardian/ui/arictlelist/article_list_bloc.dart';
import 'package:guardian/ui/arictlelist/widget/article_list_content.dart';
import 'package:guardian/ui/common/util.dart';

class ArticleList extends StatelessWidget {
  late Completer _refreshCompleter;

  ArticleList({Key? key}) : super(key: key) {
    _refreshCompleter = Completer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Guardian app"),
      ),
      body: BlocProvider(
        create: (context) => injector<ArticleListBloc>(),
        child: BlocListener<ArticleListBloc, ArticleListState>(
          listener: (context, state) {
            if (!(state is Refreshing)) {
              _refreshCompleter.complete();
              _refreshCompleter = Completer();
            }
            if (state is Error) {
              context.showSnackBar(content: Text("Error"));
            }
          },
          child: BlocBuilder<ArticleListBloc, ArticleListState>(
            builder: (context, state) {
              if (state is Initial) {
                BlocProvider.of<ArticleListBloc>(context)
                    .add(LoadArticlesEvent());
                return Center(child: CircularProgressIndicator());
              } else if (state is Loading) {
                return Center(child: CircularProgressIndicator());
              } else if (state is ContentReady) {
                return ArticleListContent(state.articles, _refreshCompleter);
              } else if (state is Refreshing) {
                return ArticleListContent(state.articles, _refreshCompleter);
              } else {
                return Center(
                  child: Text(
                    "You are not supposed to be here",
                    style: TextStyle(fontSize: 32.0),
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
