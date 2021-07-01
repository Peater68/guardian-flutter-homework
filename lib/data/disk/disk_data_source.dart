import 'package:guardian/data/disk/dao/article_dao.dart';
import 'package:guardian/domain/model/domain_article.dart';

class DiskDataSource {
  final ArticleDao _articleDao;

  DiskDataSource(this._articleDao);

  Future<void> deleteAllArticles() async {
    await _articleDao.deleteAllArticles();
  }

  Future<DomainArticle?> getArticle(String id) async {
    try {
      final article = await _articleDao.getArticle(id);
      return article?.toDomainModel();
    } catch (err) {
      return null;
    }
  }

  Future<List<DomainArticle>?> getArticles() async {
    try {
      final articles = await _articleDao.getArticles();
      return articles.map((article) => article.toDomainModel()).toList();
    } catch (err) {
      return null;
    }
  }

  Future<void> saveArticles(List<DomainArticle> articles) async {
    await _articleDao.deleteAllArticles();
    await _articleDao.insertArticles(
        articles.map((article) => article.toMoorModel()).toList());
  }
}
