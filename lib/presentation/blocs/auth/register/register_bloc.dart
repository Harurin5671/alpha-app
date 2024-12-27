import 'package:formz/formz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:beta_app/domain/domain.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterState()) {
    on<RegisterFullNameChangedEvent>(_onFullNameChanged);
    on<RegisterEmailChangedEvent>(_onEmailChanged);
    on<RegisterPasswordChangedEvent>(_onPasswordChanged);
    on<RegisterTogglePasswordVisibleEvent>(_onTogglePasswordVisible);
    on<RegisterFormSubmittedEvent>(_onFormSubmitted);
  }

  void _onFullNameChanged(
      RegisterFullNameChangedEvent event, Emitter<RegisterState> emit) {
    final newFullName = FullName.dirty(event.fullName);
    emit(
      state.copyWith(
        fullName: newFullName,
        isValid: Formz.validate([
          newFullName,
          state.email,
          state.password,
        ]),
      ),
    );
  }

  void _onEmailChanged(
      RegisterEmailChangedEvent event, Emitter<RegisterState> emit) {
    final newEmail = Email.dirty(event.email);
    emit(
      state.copyWith(
        email: newEmail,
        isValid: Formz.validate([newEmail, state.password]),
      ),
    );
  }

  void _onPasswordChanged(
      RegisterPasswordChangedEvent event, Emitter<RegisterState> emit) {
    final newPassword = Password.dirty(event.password);
    emit(
      state.copyWith(
        password: newPassword,
        isValid: Formz.validate([state.fullName, state.email, newPassword]),
      ),
    );
  }

  void _onTogglePasswordVisible(
      RegisterTogglePasswordVisibleEvent event, Emitter<RegisterState> emit) {
    emit(state.copyWith(isPasswordVisible: event.isPasswordVisible));
  }

  void _onFormSubmitted(
      RegisterFormSubmittedEvent event, Emitter<RegisterState> emit) async {
    try {
      _touchEveryField(emit);

      if (!state.isValid) return;

      emit(state.copyWith(status: RegisterStatus.loading));
      await Future.delayed(const Duration(seconds: 5), () {
        emit(state.copyWith(status: RegisterStatus.success));
      });
    } catch (e) {
      emit(state.copyWith(status: RegisterStatus.failure));
    }
  }

  void _touchEveryField(Emitter<RegisterState> emit) {
    final email = Email.dirty(state.email.value);
    final password = Password.dirty(state.password.value);
    final fullName = FullName.dirty(state.fullName.value);
    emit(
      state.copyWith(
        status: RegisterStatus.success,
        fullName: fullName,
        email: email,
        password: password,
        isValid: Formz.validate([state.fullName, state.email, state.password]),
      ),
    );
  }
}
