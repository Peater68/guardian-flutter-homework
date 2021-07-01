import 'package:guardian/data/network/guardian_api.dart';
import 'package:guardian/domain/model/domain_article.dart';
import 'package:retrofit/dio.dart';

class NetworkDataSource {
  final GuardianApi _guardianApi;

  NetworkDataSource(this._guardianApi);

  Future<List<DomainArticle>?> getArticles(String? filter) async {
    final articlesResponse = await _guardianApi.getArticles(filter: filter);
    if (!articlesResponse.isSuccessful()) {
      return null;
    }

    return articlesResponse.data.response.results
        .map((article) => article.toDomainModel())
        .toList();
  }
}

extension on HttpResponse {
  bool isSuccessful() {
    if (response.statusCode == null) {
      return false;
    } else {
      return response.statusCode! >= 200 && response.statusCode! < 300;
    }
  }
}
