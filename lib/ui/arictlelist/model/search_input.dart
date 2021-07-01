
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guardian/ui/arictlelist/article_list_bloc.dart';

class SearchInput extends StatelessWidget {
    final searchInputController = TextEditingController();

    @override
    Widget build(BuildContext context) {
        return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
            child: TextField(
                controller: searchInputController,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                            BlocProvider.of<ArticleListBloc>(context)
                                .add(SearchArticlesEvent(searchInputController.text));
                        },
                        icon: Icon(Icons.search),
                    ),
                    border: InputBorder.none,
                    hintText: 'Search for news',
                ),
            ),
        );
    }
}