part of 'register_bloc.dart';

enum RegisterStatus { idle, loading, success, failure }

class RegisterState extends Equatable {
  final FullName fullName;
  final Email email;
  final Password password;
  final bool isValid;
  final bool isPasswordVisible;
  final RegisterStatus status;

  const RegisterState({
    this.fullName = const FullName.pure(),
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.isValid = false,
    this.isPasswordVisible = false,
    this.status = RegisterStatus.idle,
  });

  RegisterState copyWith({
    FullName? fullName,
    Email? email,
    Password? password,
    bool? isValid,
    bool? isPasswordVisible,
    RegisterStatus? status,
  }) {
    return RegisterState(
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      password: password ?? this.password,
      isValid: isValid ?? this.isValid,
      isPasswordVisible: isPasswordVisible ?? this.isPasswordVisible,
      status: status ?? this.status,
    );
  }
  
  @override
  List<Object?> get props => [
    fullName,
    email,
    password,
    isValid,
    isPasswordVisible,
    status,
  ];
}

// final class RegisterInitial extends RegisterState {}
