import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guardian/ui/arictlelist/article_list_bloc.dart';
import 'package:guardian/ui/arictlelist/model/article.dart';
import 'package:guardian/ui/arictlelist/model/article_list_item.dart';
import 'package:guardian/ui/arictlelist/model/search_input.dart';

class ArticleListContent extends StatelessWidget {
    final List<Article> _articles;
    final Completer _refreshCompleter;

    const ArticleListContent(this._articles, this._refreshCompleter);

    @override
    Widget build(BuildContext context) {
        return RefreshIndicator(
            onRefresh: () async {
                BlocProvider.of<ArticleListBloc>(context).add(RefreshArticlesEvent());
                return _refreshCompleter.future;
            },
            child: Container(
                width: double.infinity,
                child: ListView.builder(
                    itemCount: _articles.length + 1,
                    itemBuilder: (BuildContext context, int index) {
                        if (index == 0) {
                            return SearchInput();
                        } else {
                            return ArticleListItem(_articles[index - 1]);
                        }
                    }),
            ),
        );
    }
}