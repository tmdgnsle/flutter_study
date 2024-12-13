import 'package:firebase_clean/page/widget/email_input.dart';
import 'package:firebase_clean/page/widget/password_input.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/usecase/auth/dto/register_dto.dart';

class RegisterValidator extends StateNotifier<RegisterFormState> {
  RegisterValidator() : super(const RegisterFormState());

  void emailChanged(String email) {
    final emailInput = EmailInput.dirty(value: email);
    state = state.copyWith(email: email, isEmailValid: emailInput.isValid);
  }

  void nameChanged(String name) {
    final isNameValid = name.isNotEmpty;
    state = state.copyWith(name: name, isNameValid: isNameValid);
  }

  void passwordChanged(String password) {
    final passwordInput = PasswordInput.dirty(value: password);
    state = state.copyWith(
        password: password, isPasswordValid: passwordInput.isValid);
  }

  void confirmPasswordChanged(String confirmPassword) {
    final isConfirmPasswordValid = state.password == confirmPassword;
    state = state.copyWith(
        confirmPassword: confirmPassword,
        isConfirmPasswordValid: isConfirmPasswordValid);
  }

  RegisterDto getRegisterInfo() {
    return RegisterDto(
        email: state.email, password: state.password, name: state.name);
  }
}

final registerValidatorProvider =
    StateNotifierProvider<RegisterValidator, RegisterFormState>(
  (ref) => RegisterValidator(),
);

class RegisterFormState {
  final String email;
  final String name;
  final String password;
  final String confirmPassword;
  final bool isEmailValid;
  final bool isNameValid;
  final bool isPasswordValid;
  final bool isConfirmPasswordValid;

  const RegisterFormState({
    this.email = '',
    this.name = '',
    this.password = '',
    this.confirmPassword = '',
    this.isEmailValid = false,
    this.isNameValid = false,
    this.isPasswordValid = false,
    this.isConfirmPasswordValid = false,
  });

  bool get canSubmit => isEmailValid && isPasswordValid && isNameValid && isConfirmPasswordValid;

  RegisterFormState copyWith({
    String? email,
    String? name,
    String? password,
    String? confirmPassword,
    bool? isEmailValid,
    bool? isNameValid,
    bool? isPasswordValid,
    bool? isConfirmPasswordValid,
  }) =>
      RegisterFormState(
        email: email ?? this.email,
        name: name ?? this.name,
        password: password ?? this.password,
        confirmPassword: confirmPassword ?? this.confirmPassword,
        isEmailValid: isEmailValid ?? this.isEmailValid,
        isNameValid: isNameValid ?? this.isNameValid,
        isPasswordValid: isPasswordValid ?? this.isPasswordValid,
        isConfirmPasswordValid:
            isConfirmPasswordValid ?? this.isConfirmPasswordValid,
      );
}
