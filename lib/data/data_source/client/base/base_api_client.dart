import 'dart:convert';
import 'package:anime_wiki/app/constants/api_constants.dart';
import 'package:dio/dio.dart';

import 'api_client_default_settings.dart';
import 'dio_builder.dart';

class BaseApiClient {
  final String baseUrl;
  final int? connectTimeoutInMs;
  final int? sendTimeoutInMs;
  final int? receiveTimeoutInMs;
  final List<Interceptor> interceptors;
  final Dio _dio;

  BaseApiClient({
    this.baseUrl = '',
    this.interceptors = const [],
    this.connectTimeoutInMs = ApiConstants.connectionTimeout,
    this.sendTimeoutInMs = ApiConstants.sendTimeoutInMs,
    this.receiveTimeoutInMs = ApiConstants.receiveTimeout,
  }) : _dio = DioBuilder.createDio(
            options: BaseOptions(
          headers: ApiConstants.header,
          baseUrl: baseUrl,
          connectTimeout: Duration(milliseconds: connectTimeoutInMs!),
          sendTimeout: Duration(milliseconds: sendTimeoutInMs!),
          receiveTimeout: Duration(milliseconds: receiveTimeoutInMs!),
        )) {
    final sortedInterceptors = [
      ...interceptors,
      ...ApiClientDefaultSetting.requiredInterceptors(),
    ];
    _dio.interceptors.addAll(sortedInterceptors);
  }

  // Get:-----------------------------------------------------------------------
  Future<Response> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.get(
        url,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Post:----------------------------------------------------------------------
  Future<Response> post(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.post(
        uri,
        data: jsonEncode(data),
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Put:-----------------------------------------------------------------------
  Future<Response> put(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.put(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Delete:--------------------------------------------------------------------
  Future<Response> delete(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.delete(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }


}
