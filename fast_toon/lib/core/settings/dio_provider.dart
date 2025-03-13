import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'dio_error_logger.dart';  // 에러 처리 로직

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: dotenv.env['API_URL'] ?? '',
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
  ));

  // 로깅 인터셉터 추가
  dio.interceptors.add(LogInterceptor(
    request: true,
    responseBody: true,
    requestBody: true,
    requestHeader: true,
  ));

  // 에러 처리 인터셉터 추가
  dio.interceptors.add(DioErrorLogger());



  // 인증 토큰 인터셉터 추가
  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) {
      // 여기에 토큰을 가져오는 로직을 구현하세요
      final token = ref.read(authTokenProvider);
      options.headers['Authorization'] = 'Bearer $token';
      return handler.next(options);
    },
  ));

  return dio;
});