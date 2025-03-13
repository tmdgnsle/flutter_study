import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/settings/dio_provider.dart';
import '../../data/source/remote/auth_api_service.dart';


// ApiService Provider
final apiServiceProvider = Provider<AuthApiService>((ref) {
  final dio = ref.watch(dioProvider);  // dioProvider에서 Dio 인스턴스를 제공받음
  return AuthApiService(dio);  // Dio를 통해 ApiService 생성
});
