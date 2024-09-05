import 'package:animals/feature/random_fact_display/data/constant.dart';
import 'package:dio/dio.dart';


class DioConfig {
  DioConfig._();

  static Dio? _dio;
  static const _timeOut = Duration(seconds: 6);

  static Dio getDio() {
    _dio ??= Dio()
      ..options.baseUrl = baseUrl
      ..options.receiveTimeout = _timeOut
      ..options.connectTimeout = _timeOut
      ..interceptors.add(
          LogInterceptor(requestHeader: true, responseBody: true, error: true));
    return _dio!;
  }
}