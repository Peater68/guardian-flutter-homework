
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guardian/main.dart';
import 'package:guardian/ui/arictlelist/model/article.dart';
import 'package:guardian/ui/common/article_image.dart';
import 'package:guardian/ui/common/article_tags.dart';

class ArticleListItem extends StatelessWidget {
    final Article article;

    const ArticleListItem(this.article);

    @override
    Widget build(BuildContext context) {
        return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
            elevation: 6.0,
            margin: EdgeInsets.all(12.0),
            child: InkWell(
                onTap: () =>
                {Navigator.pushNamed(context, DETAIL_PAGE, arguments: article.id)},
                child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Text(
                                article.title,
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 10.0),
                            Center(
                                child: ArticleImage(article.imageUrl),
                            ),
                            SizedBox(height: 6.0),
                            Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                            ),
                            ArticleTags(article.tags),
                        ],
                    ),
                ),
            ),
        );
    }
}