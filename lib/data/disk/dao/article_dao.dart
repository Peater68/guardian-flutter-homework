import 'package:guardian/data/disk/guardian_database.dart';

abstract class ArticleDao {
  Future<List<MoorArticleData>> getArticles();

  Future<MoorArticleData?> getArticle(String id);

  Future<void> insertArticles(List<MoorArticleData> articles);

  Future<int> deleteAllArticles();
}
