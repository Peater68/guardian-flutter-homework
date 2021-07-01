import 'package:guardian/data/disk/dao/article_dao.dart';
import 'package:guardian/data/disk/guardian_database.dart';
import 'package:guardian/data/disk/model/moor_article.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'amoor_article_dao.g.dart';

@UseDao(tables: [MoorArticle])
class MoorArticleDao extends DatabaseAccessor<GuardianDatabase>
    with _$MoorArticleDaoMixin
    implements ArticleDao {
  MoorArticleDao(GuardianDatabase attachedDatabase) : super(attachedDatabase);

  @override
  Future<int> deleteAllArticles() => delete(moorArticle).go();

  @override
  Future<MoorArticleData?> getArticle(String id) {
    return (select(moorArticle)
          ..limit(1)
          ..where((article) => article.id.equals(id)))
        .getSingleOrNull();
  }

  @override
  Future<List<MoorArticleData>> getArticles() => select(moorArticle).get();

  @override
  Future<void> insertArticles(List<MoorArticleData> articles) async {
    await batch((batch) {
      batch.insertAll(
        moorArticle,
        articles
            .map((article) => MoorArticleCompanion.insert(
                  id: article.id,
                  apiUrl: article.apiUrl,
                  isHosted: article.isHosted,
                  pillarId: article.pillarId,
                  pillarName: article.pillarName,
                  sectionId: article.sectionId,
                  sectionName: article.sectionName,
                  type: article.type,
                  webPublicationDate: article.webPublicationDate,
                  webTitle: article.webTitle,
                  webUrl: article.webUrl,
                  thumbnail: article.thumbnail,
                  tags: article.tags,
                ))
            .toList(),
        mode: InsertMode.insertOrReplace,
      );
    });
  }
}
