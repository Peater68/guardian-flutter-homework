// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guardian_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _GuardianService implements GuardianService {
  _GuardianService(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://content.guardianapis.com';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<HttpResponse<ResponseWrapperDto>> getArticles(
      {filter, fields = "thumbnail", tags = "all"}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'q': filter,
      r'show-fields': fields,
      r'show-tags': tags
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<ResponseWrapperDto>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/search',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseWrapperDto.fromJson(_result.data!);
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
