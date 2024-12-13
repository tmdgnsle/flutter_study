import 'package:firebase_clean/domain/entity/user_profile.dart';
import 'package:firebase_clean/domain/usecase/auth/dto/login_dto.dart';
import 'package:firebase_clean/injector.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/usecase/auth/login_usecase.dart';

class LoginNotifier extends StateNotifier<LoginState> {
  LoginNotifier() : super(LoginState.initial());

  Future<void> login(LoginDto dto) async {
    state = LoginState.loading();
    final loginUseCase = locator<LoginUseCase>();
    final result = await loginUseCase(dto, onError: (error) {
      state = LoginState.error(error.toString());
    });
    state = LoginState.success(result);
  }
}

final loginNotifierProvider = StateNotifierProvider<LoginNotifier, LoginState>(
  (ref) => LoginNotifier(),
);

class LoginState {
  final bool isLoading;
  final UserProfile? userProfile;
  final String? errorMessage;

  LoginState({this.isLoading = false, this.userProfile, this.errorMessage});

  factory LoginState.initial() => LoginState();

  factory LoginState.loading() => LoginState(isLoading: true);

  factory LoginState.success(UserProfile userProfile) =>
      LoginState(userProfile: userProfile);

  factory LoginState.error(String errorMessage) =>
      LoginState(errorMessage: errorMessage);
}
