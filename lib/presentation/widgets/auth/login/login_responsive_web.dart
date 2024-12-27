import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:beta_app/configs/configs.dart';
import 'package:beta_app/presentation/presentation.dart';
import 'package:beta_app/infrastructure/infrastructure.dart';

class LoginResponsiveWeb extends StatelessWidget {
  const LoginResponsiveWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final ServiceLocatorContract serviceLocator = GetItAdapter();
    return BlocProvider(
      create: (context) => serviceLocator.get<LoginBloc>(),
      child: const LoginResponsiveWebView(),
    );
  }
}

class LoginResponsiveWebView extends StatelessWidget {
  const LoginResponsiveWebView({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    bool isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    final errorEmail =
        context.select((LoginBloc bloc) => bloc.state.email.errorMessage);
    final errorPassword =
        context.select((LoginBloc bloc) => bloc.state.password.errorMessage);
    final status = context.select((LoginBloc bloc) => bloc.state.status);
    bool isPasswordVisible =
        context.select((LoginBloc bloc) => bloc.state.isPasswordVisible);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.withValues(
              alpha: isDarkTheme ? 0.25 : 0.1,
            ),
            borderRadius: BorderRadius.circular(22),
          ),
          width: 500,
          height: 500,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Inicia sesión',
                style: textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              Form(
                child: Column(
                  children: [
                    BlocTextFormField(
                      labelText: 'Correo electrónico',
                      hintText: 'Coloca tu correo electrónico',
                      errorText:
                          status == LoginStatus.success ? errorEmail : null,
                      onChanged: (value) {
                        context.read<LoginBloc>().add(EmailChangedEvent(value));
                      },
                    ),
                    const SizedBox(height: 22),
                    BlocTextFormField(
                      isPassword: true,
                      labelText: 'Contraseña',
                      hintText: 'Coloca tu contraseña',
                      errorText:
                          status == LoginStatus.success ? errorPassword : null,
                      isObscure: !isPasswordVisible,
                      onChanged: (value) {
                        context
                            .read<LoginBloc>()
                            .add(PasswordChangedEvent(value));
                      },
                      onPress: () {
                        context.read<LoginBloc>().add(
                            TogglePasswordVisibleEvent(!isPasswordVisible));
                      },
                      visibleIcon: Icons.visibility_outlined,
                      hiddenIcon: Icons.visibility_off_outlined,
                    ),
                    const SizedBox(height: 22),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Olvidaste tu contraseña?',
                        style: textTheme.bodyMedium?.copyWith(
                          color: isDarkTheme ? Color(0xffB2BCC9) : null,
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                    ElevatedButton(
                      onPressed: status == LoginStatus.loading
                          ? null
                          : () {
                              context
                                  .read<LoginBloc>()
                                  .add(FormSubmittedEvent());
                              // appRouter.goNamed(HomeScreen.name);
                            },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: Text(
                        'Ingresar',
                        style: textTheme.labelLarge?.copyWith(
                          color: status == LoginStatus.loading
                              ? Colors.grey
                              : Color(0xffffffff),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'No tienes cuenta? ',
                          style: textTheme.bodyMedium?.copyWith(
                            color: const Color(0xffB2BCC9),
                          ),
                        ),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              appRouter.pushNamed(SignUpScreen.name);
                            },
                            child: Text(
                              'Regístrate',
                              style: textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 32),
                      ],
                    ),
                    Row(
                      children: [
                        // Text('hola', style: textTheme.bodyMedium?.copyWith(color: Colors.red)),
                        Expanded(
                          child: Divider(
                            color: Color(0xff333333),
                            thickness: 1.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                          child: Text(
                            'O ingresa con',
                            style: textTheme.bodyMedium,
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: Color(0xff333333),
                            thickness: 2,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
