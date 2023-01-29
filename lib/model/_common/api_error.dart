import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error.freezed.dart';

@freezed
abstract class ApiError with _$ApiError {
  const factory ApiError.requestCancelled() = _RequestCancelled;
  const factory ApiError.unauthorisedRequest() = _UnauthorisedRequest;
  const factory ApiError.requestError() = _RequestError;
  const factory ApiError.serviceUnavailable() = _ServiceUnavailable;
  const factory ApiError.sendTimeout() = _SendTimeout;
  const factory ApiError.noInternetConnection() = _NoInternetConnection;
  const factory ApiError.unexpectedError() = _UnexpectedError;

  const ApiError._();

  String get errorMessage => when(
      requestCancelled: () => "requestCancelled",
      unauthorisedRequest: () => "unauthorisedRequest",
      requestError: () => "requestError",
      serviceUnavailable: () => "serviceUnavailable",
      sendTimeout: () => "sendTimeout",
      noInternetConnection: () => "noInternetConnection",
      unexpectedError: () => "unexpectedError"
  );

  static ApiError getApiError(Object error) {
    if (error is Exception) {
      try {
        late ApiError resultError;
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.connectTimeout:
            case DioErrorType.sendTimeout:
            case DioErrorType.receiveTimeout:
              resultError = const ApiError.sendTimeout();
              break;
            case DioErrorType.cancel:
              resultError = const ApiError.requestCancelled();
              break;
            case DioErrorType.response:
              final statusCode = error.response?.statusCode ?? 400;
              if (400 <= statusCode && statusCode < 500) {
                resultError = const ApiError.requestError();
              } else if (500 <= statusCode) {
                resultError = const ApiError.serviceUnavailable();
              }
              break;
            default:
              resultError = const ApiError.unexpectedError();
          }
        } else if (error is SocketException) {
          resultError = const ApiError.noInternetConnection();
        } else {
          resultError = const ApiError.unexpectedError();
        }
        return resultError;
      } catch (_) {
        return const ApiError.unexpectedError();
      }
    } else {
      return const ApiError.unexpectedError();
    }
  }
}
