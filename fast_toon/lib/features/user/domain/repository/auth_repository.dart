import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/settings/api_service_provider.dart';
import '../../data/model/user.dart';
import '../../data/source/local/auth_service.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(ref);
});

class AuthRepository {
  final ProviderRef _ref;

  AuthRepository(this._ref);

  Future<void> login(String email, String password) async {
    try {
      final response = await _ref.watch(authApiServiceProvider).login({
        'email': email,
        'password': password,
      });

      await _ref.read(authServiceProvider).saveToken(response.token);
      await _ref.read(authServiceProvider).saveUser(response.user!);
    } catch (e) {
      throw Exception('로그인 실패: $e');
    }
  }

  Future<void> logout() async {
    await _ref.read(authServiceProvider).deleteToken();
    await _ref.read(authServiceProvider).deleteUser();
  }

  Future<bool> isLoggedIn() async {
    return await _ref.read(authServiceProvider).isLoggedIn();
  }

  Future<String?> getToken() async {
    return await _ref.read(authServiceProvider).getToken();
  }

  Future<User?> getUser() async {
    return await _ref.read(authServiceProvider).getUser();
  }
}
