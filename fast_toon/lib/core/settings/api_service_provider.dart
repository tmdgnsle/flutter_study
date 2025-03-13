import 'package:fast_toon/core/settings/dio_provider.dart';
import 'package:fast_toon/features/webtoon/data/source/remote/api_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/user/data/source/remote/auth_api_service.dart';

// ApiService Provider
final apiServiceProvider = Provider<ApiService>((ref) {
  final dio = ref.watch(dioProvider);  // dioProvider에서 Dio 인스턴스를 제공받음
  return ApiService(dio);  // Dio를 통해 ApiService 생성
});


final authApiServiceProvider = Provider<AuthApiService>((ref) {
  final dio = ref.watch(dioProvider);  // dioProvider에서 Dio 인스턴스를 제공받음
  return AuthApiService(dio);  // Dio를 통해 ApiService 생성
});