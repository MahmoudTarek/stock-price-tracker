// ignore_for_file: non_constant_identifier_names

import 'package:dio/dio.dart';
import 'package:stocks_price_tracker/network/endpoints.dart';

import 'interceptors/auth_interceptor.dart';

class HttpService {
  final Dio _dio = Dio();

  final _requestOptions = Options(
    headers: {'accept': 'application/json'},
  );

  Future init() async {
    _dio.options = BaseOptions(
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
      responseType: ResponseType.json,
      baseUrl: Endpoints.baseUrl,
      validateStatus: (status) => status == 200 || status == 401,
    );

    initInterceptors();
  }

  Future initInterceptors() async {
    _dio.interceptors.add(AuthInterceptor());
  }

  Future<Response> GET(
    String url,
    Map<String, dynamic>? queryParams,
  ) async {
    return await _dio.get(
      url,
      queryParameters: queryParams,
      options: _requestOptions,
    );
  }

  Future<Response> POST(
    String url,
    dynamic data,
    Map<String, dynamic>? queryParams,
  ) async {
    return await _dio.post(
      url,
      data: data,
      queryParameters: queryParams,
      options: _requestOptions,
    );
  }
}
