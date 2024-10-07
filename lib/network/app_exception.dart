enum AppExceptionType { unknown, network, business }

class AppException implements Exception {
  late AppExceptionType type;
  late String title;
  late String message;
  late int errorCode;
  dynamic response;

  AppException({
    required this.type,
    required this.title,
    required this.message,
    required this.errorCode,
    this.response,
  });

  AppException.defaultException() {
    type = AppExceptionType.unknown;
    title = 'Oops!';
    message = 'Sorry, something went wrong! Try again?';
    errorCode = -999;
  }
}
