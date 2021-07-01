import 'package:guardian/data/disk/model/moor_article.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'guardian_database.g.dart';

@UseMoor(tables: [MoorArticle])
class GuardianDatabase extends _$GuardianDatabase {
  GuardianDatabase()
      : super(FlutterQueryExecutor.inDatabaseFolder(
            path: "db.sqlite", logStatements: true));

  @override
  int get schemaVersion => 1;
}
