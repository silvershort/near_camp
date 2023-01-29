// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _RestClient implements RestClient {
  _RestClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'http://apis.data.go.kr/B551011/KorService';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ApiResultDto<LocationBasedModel>> getLocationBasedList({
    required clientInfoDto,
    required locationBasedDto,
    paginationDto,
    type = 'json',
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'_type': type};
    queryParameters.addAll(clientInfoDto.toJson());
    queryParameters.addAll(locationBasedDto.toJson());
    queryParameters.addAll(paginationDto?.toJson() ?? <String, dynamic>{});
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResultDto<LocationBasedModel>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/locationBasedList',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ApiResultDto<LocationBasedModel>.fromJson(
      _result.data!,
      (json) => LocationBasedModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
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
