import 'package:formz/formz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:beta_app/domain/models/models.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState()) {
    on<LoginEmailChangedEvent>(_onEmailChanged);
    on<LoginPasswordChangedEvent>(_onPasswordChanged);
    on<LoginTogglePasswordVisibleEvent>(_onTogglePasswordVisible);
    on<LoginFormSubmittedEvent>(_onFormSubmitted);
  }
  void _onEmailChanged(LoginEmailChangedEvent event, Emitter<LoginState> emit) {
    final newEmail = Email.dirty(event.email);
    emit(
      state.copyWith(
        email: newEmail,
        isValid: Formz.validate([newEmail, state.password]),
      ),
    );
  }

  void _onPasswordChanged(
      LoginPasswordChangedEvent event, Emitter<LoginState> emit) {
    final newPassword = Password.dirty(event.password);
    emit(
      state.copyWith(
        password: newPassword,
        isValid: Formz.validate([state.email, newPassword]),
      ),
    );
  }

  void _onTogglePasswordVisible(
      LoginTogglePasswordVisibleEvent event, Emitter<LoginState> emit) {
    emit(state.copyWith(isPasswordVisible: event.isPasswordVisible));
  }

  void _onFormSubmitted(LoginFormSubmittedEvent event, Emitter<LoginState> emit) async {

    try {
      _touchEveryField(emit);

      if (!state.isValid) return;

      emit(state.copyWith(status: LoginStatus.loading));
      await Future.delayed(const Duration(seconds: 5), () {
        emit(state.copyWith(status: LoginStatus.success));
      });
    } catch (e) {
      emit(state.copyWith(status: LoginStatus.failure));
    }
  }

  void _touchEveryField(Emitter<LoginState> emit) {
    final email = Email.dirty(state.email.value);
    final password = Password.dirty(state.password.value);
    emit(
      state.copyWith(
        status: LoginStatus.success,
        email: email,
        password: password,
        isValid: Formz.validate([email, password]),
      ),
    );
  }
}
