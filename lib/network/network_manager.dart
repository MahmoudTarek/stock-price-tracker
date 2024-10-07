import 'package:dio/dio.dart';
import 'package:stocks_price_tracker/network/app_exception.dart';
import 'package:stocks_price_tracker/network/http_service.dart';

class NetworkManager {
  static final NetworkManager _singleton = NetworkManager._internal();

  factory NetworkManager() => _singleton;

  final HttpService _httpService = HttpService();

  NetworkManager._internal() {
    _httpService.init();
  }

  Future<Response> get({
    required String url,
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      return await _httpService.GET(url, queryParams);
    } on DioException catch (dioException) {
      throw _handleFailure(dioException);
    }
  }

  Future<Response> post({
    required String url,
    dynamic data,
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      return await _httpService.POST(url, data, queryParams);
    } on DioException catch (dioException) {
      throw _handleFailure(dioException);
    }
  }

  _handleFailure(DioException dioException) {
    if (dioException.response?.statusCode == 401) {
      throw AppException(
        type: AppExceptionType.network,
        title: "Invalid Credentials!",
        message: "Email or password is incorrect, please try again!",
        errorCode: dioException.response?.statusCode ?? -999,
      );
    }
    throw AppException(
      type: AppExceptionType.network,
      title: "Oops!",
      message: "Something went wrong, please try again",
      errorCode: dioException.response?.statusCode ?? -999,
    );
  }
}
