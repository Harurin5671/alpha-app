part of 'login_bloc.dart';

sealed class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object?> get props => [];
}

class LoginEmailChangedEvent extends LoginEvent {
  final String email;

  const LoginEmailChangedEvent(this.email);

  @override
  List<Object?> get props => [email];
}

class LoginPasswordChangedEvent extends LoginEvent {
  final String password;

  const LoginPasswordChangedEvent(this.password);

  @override
  List<Object?> get props => [password];
}

class LoginTogglePasswordVisibleEvent extends LoginEvent {
  final bool isPasswordVisible;

  const LoginTogglePasswordVisibleEvent(this.isPasswordVisible);

  @override
  List<Object?> get props => [isPasswordVisible];
}

class LoginFormSubmittedEvent extends LoginEvent {}
