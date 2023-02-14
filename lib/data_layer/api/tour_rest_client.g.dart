// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_rest_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _TourRestClient implements TourRestClient {
  _TourRestClient(
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
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
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

  @override
  Future<ApiResultDto<DetailCommonModel>> getDetailCommon({
    required clientInfoDto,
    required detailCommonDto,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(clientInfoDto.toJson());
    queryParameters.addAll(detailCommonDto.toJson());
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResultDto<DetailCommonModel>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/detailCommon',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ApiResultDto<DetailCommonModel>.fromJson(
      _result.data!,
      (json) => DetailCommonModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ApiResultDto<DetailInfoModel>> getDetailInfo({
    required clientInfoDto,
    required detailInfoDto,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(clientInfoDto.toJson());
    queryParameters.addAll(detailInfoDto.toJson());
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResultDto<DetailInfoModel>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/detailInfo',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ApiResultDto<DetailInfoModel>.fromJson(
      _result.data!,
      (json) => DetailInfoModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ApiResultDto<DetailImageModel>> getDetailImage({
    required clientInfoDto,
    required detailImageDto,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(clientInfoDto.toJson());
    queryParameters.addAll(detailImageDto.toJson());
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResultDto<DetailImageModel>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/detailImage',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ApiResultDto<DetailImageModel>.fromJson(
      _result.data!,
      (json) => DetailImageModel.fromJson(json as Map<String, dynamic>),
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
