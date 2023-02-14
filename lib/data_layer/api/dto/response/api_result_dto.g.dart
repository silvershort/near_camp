// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResultDto<T> _$ApiResultDtoFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ApiResultDto<T>(
      response: ResponseDto<T>.fromJson(
          json['response'] as Map<String, dynamic>,
          (value) => fromJsonT(value)),
    );

Map<String, dynamic> _$ApiResultDtoToJson<T>(
  ApiResultDto<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'response': instance.response,
    };
