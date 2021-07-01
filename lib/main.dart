import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guardian/di/di_util.dart';
import 'package:guardian/ui/arictlelist/article_list.dart';
import 'package:guardian/ui/articledetails/article_details.dart';

const LIST_PAGE = "/articles";
const DETAIL_PAGE = "/details";

void main() {
  initDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GuardianApp());
}

class GuardianApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guardian articles',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ArticleList(),
      onGenerateRoute: (settings) {
        final name = settings.name ?? "";
        if (name.startsWith(DETAIL_PAGE)) {
          return MaterialPageRoute(
            builder: (context) {
              return ArticleDetails(settings.arguments as String);
            },
          );
        }
        return null;
      },
    );
  }
}
