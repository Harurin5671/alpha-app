
import 'package:flutter/material.dart';

import 'package:beta_app/presentation/presentation.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/login';
  static const String name = 'login_screen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PlatformLayout(
      mobileContent: LoginResponsiveMovil(),
      webContent: LoginResponsiveWeb(),
    );
  }
}