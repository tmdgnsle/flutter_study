import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(BaseOptions(baseUrl: dotenv.env['API_URL']!));
  
  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) {
      print('Request: ${options.uri}');
      return handler.next(options);
    },
    onResponse: (response, handler) {
      print('Response: ${response.data}');
      return handler.next(response);
    },
    onError: (DioError e, handler) {
      print('Error: ${e.message}');
      return handler.next(e);
    },
  ));
  
  return dio;
});
