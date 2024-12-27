import 'package:flutter/material.dart';

import 'package:beta_app/configs/configs.dart';
import 'package:beta_app/presentation/presentation.dart';

class LoginResponsiveWeb extends StatelessWidget {
  const LoginResponsiveWeb({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    bool isDarkTheme = Theme.of(context).brightness == Brightness.dark;

    // Obtener el ancho de la pantalla
    double screenWidth = MediaQuery.of(context).size.width;

    // Limitar el ancho del contenido en pantallas grandes
    double contentWidth = screenWidth > 600 ? 400 : screenWidth * 0.8;

    return Center(
      child: Container(
        width: contentWidth,
        padding: const EdgeInsets.symmetric(vertical: 40),
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
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      hintText: 'Coloca tu correo electrónico',
                      labelText: 'Correo electrónico',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Coloca tu contraseña',
                      labelText: 'Contraseña',
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.visibility_outlined),
                      ),
                      suffixIconColor: const Color(0xffB2BCC9),
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
                  const SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: () {
                      appRouter.goNamed(HomeScreen.name);
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    child: Text(
                      'Ingresar',
                      style: textTheme.labelLarge?.copyWith(
                        color: const Color(0xffffffff),
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
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
