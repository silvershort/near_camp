import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appDioProvider = Provider<Dio>((ref) {
  final Dio dio = Dio();
  dio.interceptors.add(LogInterceptor(
    error: true,
    request: true,
    requestBody: true,
    responseBody: true,
  ));
  return dio;
});
