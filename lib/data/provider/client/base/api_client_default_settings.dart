import 'package:anime_wiki/data/provider/interceptor/log_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiClientDefaultSetting {
  const ApiClientDefaultSetting._();

  // required interceptors
  static List<Interceptor> requiredInterceptors() => [
        if (kDebugMode) LoggingInterceptor(),
        // ConnectivityInterceptor(),
        // RetryOnErrorInterceptor(dio),
      ];
}
