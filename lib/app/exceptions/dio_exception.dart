import 'package:dio/dio.dart';

class CustomDioException implements Exception {
  late String message;

  CustomDioException.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.cancel:
        message = "Request to API server was cancelled";
        break;
      case DioExceptionType.connectionTimeout:
        message = "Connection timeout with API server";
        break;
      case DioExceptionType.receiveTimeout:
        message = "Receive timeout in connection with API server";
        break;
      case DioExceptionType.badResponse:
        message = _handleError(
          dioException.response?.statusCode,
          dioException.response?.data,
        );
        break;
      case DioExceptionType.sendTimeout:
        message = "Send timeout in connection with API server";
        break;
      case DioExceptionType.unknown:
        if (dioException.message?.contains("SocketException") ?? false) {
          message = 'No Internet';
          break;
        }
        message = "Unexpected error occurred";
        break;
      default:
        message = "Something went wrong";
        break;
    }
  }

  String _handleError(int? statusCode, dynamic error) {
    // return error['message'];
    try {
      switch (statusCode) {
        case 400:
          return error['message'] ?? 'Bad request';
        case 401:
          return error['message'] ?? 'Unauthorized';
        case 403:
          return error['message'] ?? 'Forbidden';
        case 404:
          return error['message'] ?? 'Not Found';
        case 500:
          return 'Internal server error';
        case 502:
          return 'Bad gateway';
      }
    } catch (_) {}

    return 'Oops something went wrong';
  }

  @override
  String toString() => message;
}
