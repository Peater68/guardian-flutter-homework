import 'package:dio/dio.dart';
import 'package:guardian/data/network/guardian_api.dart';
import 'package:guardian/data/network/model/response_wrapper_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'guardian_service.g.dart';

@RestApi(baseUrl: "https://content.guardianapis.com")
abstract class GuardianService implements GuardianApi {
  factory GuardianService() {
    final _dio = Dio();

    _dio.interceptors.add(InterceptorsWrapper(onRequest: (request, handler) {
      request.queryParameters["api-key"] =
          "461c52aa-533c-4ff0-b335-eb28dcb7a8a6";
      handler.next(request);
    }));
    _dio.interceptors.add(LogInterceptor());
    return _GuardianService(_dio);
  }

  @override
  @GET("/search")
  Future<HttpResponse<ResponseWrapperDto>> getArticles({
    @Query("q") String? filter,
    @Query("show-fields") String fields = "thumbnail",
    @Query("show-tags") String tags = "all",
  });
}