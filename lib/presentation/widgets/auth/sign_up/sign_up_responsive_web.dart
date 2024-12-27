import 'package:flutter/material.dart';

import 'package:beta_app/configs/configs.dart';
import 'package:beta_app/presentation/presentation.dart';

class SignUpResponsiveWeb extends StatelessWidget {
  const SignUpResponsiveWeb({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
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
              'Regístrate',
              style:
                  textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 56),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Colocar tu nombre completo',
                      labelText: 'Nombre completo',
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Colocar tu correo electrónico',
                      labelText: 'Correo electrónico',
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Colocar tu contraseña',
                      labelText: 'Contraseña',
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.visibility_outlined),
                      ),
                      suffixIconColor: Color(0xffB2BCC9),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Confirmar contraseña',
                      labelText: 'Confirmar contraseña',
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.visibility_outlined),
                      ),
                      suffixIconColor: Color(0xffB2BCC9),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  ElevatedButton(
                    onPressed: () {},
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
          ],
        ),
      ),
    );
  }
}
