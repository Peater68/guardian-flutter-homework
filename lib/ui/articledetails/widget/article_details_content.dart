import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:guardian/ui/articledetails/model/article_details.dart';
import 'package:guardian/ui/common/article_image.dart';
import 'package:guardian/ui/common/article_tags.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticleDetailsContent extends StatelessWidget {
  final ArticleDetails _articleDetails;

  const ArticleDetailsContent(this._articleDetails);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              _articleDetails.section,
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20.0),
            ),
            SizedBox(height: 4.0),
            Text(
              _articleDetails.title,
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20.0),
            ArticleImage(_articleDetails.thumbnail),
            SizedBox(height: 12.0),
            ArticleTags(_articleDetails.tags),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () async {
                final url = _articleDetails.webUrl;
                if (await canLaunch(url)) {
                  await launch(url, forceWebView: true);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Could not launch $url"),
                    ),
                  );
                }
              },
              child: Text(
                "Read more",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
