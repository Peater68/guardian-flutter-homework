import 'package:flutter/foundation.dart';
import 'package:guardian/data/disk/disk_data_source.dart';
import 'package:guardian/data/network/network_data_source.dart';
import 'package:guardian/domain/model/domain_article.dart';

class ArticleInteractor {
  final DiskDataSource _diskDataSource;
  final NetworkDataSource _networkDataSource;

  ArticleInteractor(this._diskDataSource, this._networkDataSource);

  Future<List<DomainArticle>> getArticles() async {
    return await _diskDataSource.getArticles() ?? [];
  }

  Future<bool> refreshArticles({String? filter}) async {
    try {
      debugPrint("Downloading articles from the network");
      final articles = await _networkDataSource.getArticles(filter);

      debugPrint("Saving downloaded articles to disk");
      await _diskDataSource.saveArticles(articles ?? []);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<DomainArticle?> getArticleById(String id) async {
    print("Getting article $id from disk");
    return await _diskDataSource.getArticle(id);
  }
}
