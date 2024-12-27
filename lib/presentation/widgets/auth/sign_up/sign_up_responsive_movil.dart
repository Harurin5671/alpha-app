import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:beta_app/configs/configs.dart';
import 'package:beta_app/presentation/presentation.dart';
import 'package:beta_app/infrastructure/infrastructure.dart';

class SignUpResponsiveMovil extends StatelessWidget {
  const SignUpResponsiveMovil({super.key});

  @override
  Widget build(BuildContext context) {
    ServiceLocatorContract serviceLocator = GetItAdapter();
    return BlocProvider(
      create: (context) => serviceLocator.get<RegisterBloc>(),
      child: SignUpResponsiveMovilView(),
    );
  }
}

class SignUpResponsiveMovilView extends StatelessWidget {
  const SignUpResponsiveMovilView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    final errorFullName = context.select((RegisterBloc bloc) => bloc.state.fullName.errorMessage);
    final errorEmail =
        context.select((RegisterBloc bloc) => bloc.state.email.errorMessage);
    final errorPassword =
        context.select((RegisterBloc bloc) => bloc.state.password.errorMessage);
    final status = context.select((RegisterBloc bloc) => bloc.state.status);
    bool isPasswordVisible =
        context.select((RegisterBloc bloc) => bloc.state.isPasswordVisible);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          Text('Regístrate', style: textTheme.titleLarge),
          const SizedBox(height: 56),
          Form(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  BlocTextFormField(
                    labelText: 'Nombre completo',
                    hintText: 'Colocar tu nombre completo',
                    errorText:
                        status == RegisterStatus.success ? errorFullName : null,
                    onChanged: (value) {
                      context.read<RegisterBloc>().add(RegisterFullNameChangedEvent(value));
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  BlocTextFormField(
                    keyboardType: TextInputType.emailAddress,
                    labelText: 'Correo electrónico',
                    hintText: 'Colocar tu correo electrónico',
                    errorText:
                        status == RegisterStatus.success ? errorEmail : null,
                    onChanged: (value) {
                      context.read<RegisterBloc>().add(RegisterEmailChangedEvent(value));
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  BlocTextFormField(
                    isPassword: true,
                    labelText: 'Contraseña',
                    hintText: 'Colocar tu contraseña',
                    errorText:
                        status == RegisterStatus.success ? errorPassword : null,
                    isObscure: !isPasswordVisible,
                    onChanged: (value) {
                      context
                          .read<RegisterBloc>()
                          .add(RegisterPasswordChangedEvent(value));
                    },
                    onPress: () {
                      context.read<RegisterBloc>().add(
                          RegisterTogglePasswordVisibleEvent(!isPasswordVisible));
                    },
                    visibleIcon: Icons.visibility_outlined,
                    hiddenIcon: Icons.visibility_off_outlined,
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<RegisterBloc>().add(RegisterFormSubmittedEvent());
                    },
                    child: Text(
                      'Crear cuenta',
                      style: textTheme.labelLarge?.copyWith(
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Ya tienes cuenta? ',
                        style: textTheme.bodyMedium?.copyWith(
                          color: const Color(0xffB2BCC9),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          appRouter.pushNamed(LoginScreen.name);
                        },
                        child: Text(
                          'Iniciar sesión',
                          style: textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
