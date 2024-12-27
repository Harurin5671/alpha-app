part of 'login_bloc.dart';

enum LoginStatus { idle, loading, success, failure }

class LoginState extends Equatable {
  final Email email;
  final Password password;
  final bool isValid;
  final bool isPasswordVisible;
  final LoginStatus status;

  const LoginState({
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.isValid = false,
    this.isPasswordVisible = false,
    this.status = LoginStatus.idle,
  });

  LoginState copyWith({
    Email? email,
    Password? password,
    bool? isValid,
    bool? isPasswordVisible,
    LoginStatus? status,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      isValid: isValid ?? this.isValid,
      isPasswordVisible: isPasswordVisible ?? this.isPasswordVisible,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [
        email,
        password,
        isValid,
        isPasswordVisible,
        status,
      ];
}
