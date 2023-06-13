import 'package:anime_wiki/app/constants/api_constants.dart';
import 'package:dio/dio.dart';

class DioBuilder {
  const DioBuilder._();

  static Dio createDio({
    BaseOptions? options,
  }) {
    return Dio(
      BaseOptions(
        connectTimeout: options?.connectTimeout ?? const Duration(milliseconds: ApiConstants.connectionTimeout),
        receiveTimeout: options?.receiveTimeout ?? const Duration(milliseconds: ApiConstants.receiveTimeout),
        sendTimeout: options?.sendTimeout ?? const Duration(milliseconds: ApiConstants.sendTimeoutInMs),
        baseUrl: options?.baseUrl ?? ApiConstants.baseUrl,
      ),
    );
  }
}
