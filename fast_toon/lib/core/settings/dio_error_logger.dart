import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';  // debugPrint 사용

class DioErrorLogger extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    debugPrint('❌ Error occurred: ${err.response?.statusCode} ${err.message}');
    super.onError(err, handler);
  }
}
