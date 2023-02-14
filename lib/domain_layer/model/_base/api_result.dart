import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:near_camp/domain_layer/model/_base/api_error.dart';

part 'api_result.freezed.dart';

@freezed
abstract class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(T value) = _Success<T>;
  const factory ApiResult.error(ApiError error, StackTrace stackTrace) = _Error;
}
