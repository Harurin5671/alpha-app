import 'package:flutter/material.dart';

import 'package:beta_app/configs/configs.dart';
import 'package:beta_app/presentation/presentation.dart';

class LoginResponsiveMovil extends StatelessWidget {
  const LoginResponsiveMovil({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    bool isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 40,),
          Text(
            'Inicia sesión',
            style: textTheme.titleLarge
                ?.copyWith(fontWeight: FontWeight.bold,),
          ),
          SizedBox(height: 80),
          Form(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Coloca tu correo electrónico',
                      labelText: 'Correo electrónico',
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Coloca tu contraseña',
                      labelText: 'Contraseña',
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.visibility_outlined),
                      ),
                      suffixIconColor: Color(0xffB2BCC9),
                    ),
                  ),
                  const SizedBox(height: 16,),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Olvidaste tu contraseña?',
                      style: textTheme.bodyMedium?.copyWith(
                        color: isDarkTheme ? Color(0xffB2BCC9) : null,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      appRouter.goNamed(HomeScreen.name);
                    },
                    child: Text(
                      'Ingresar',
                      style: textTheme.labelLarge?.copyWith(
                          color: Color(0xffffffff), fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                   Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'No tienes cuenta? ',
                            style: textTheme.bodyMedium?.copyWith(
                              color: const Color(0xffB2BCC9),
                            ),
                          ),
                          GestureDetector(
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
                        ],
                      ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 32,),
        ],
      ),
    );
  }
}
