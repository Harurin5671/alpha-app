part of 'register_bloc.dart';

sealed class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object> get props => [];
}

class RegisterFullNameChangedEvent extends RegisterEvent {
  final String fullName;

  const RegisterFullNameChangedEvent(this.fullName);

  @override
  List<Object> get props => [fullName];
}

class RegisterEmailChangedEvent extends RegisterEvent {
  final String email;

  const RegisterEmailChangedEvent(this.email);

  @override
  List<Object> get props => [email];
}

class RegisterPasswordChangedEvent extends RegisterEvent {
  final String password;

  const RegisterPasswordChangedEvent(this.password);

  @override
  List<Object> get props => [password];
}

class RegisterTogglePasswordVisibleEvent extends RegisterEvent {
  final bool isPasswordVisible;

  const RegisterTogglePasswordVisibleEvent(this.isPasswordVisible);

  @override
  List<Object> get props => [isPasswordVisible];
}

class RegisterFormSubmittedEvent extends RegisterEvent {}
