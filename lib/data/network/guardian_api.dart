import 'package:guardian/data/network/model/response_wrapper_dto.dart';
import 'package:retrofit/dio.dart';

abstract class GuardianApi {
  Future<HttpResponse<ResponseWrapperDto>> getArticles({String? filter});
}
