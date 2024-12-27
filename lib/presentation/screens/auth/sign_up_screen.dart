import 'package:flutter/material.dart';

import 'package:beta_app/presentation/presentation.dart';

class SignUpScreen extends StatelessWidget {
  static const String routeName = '/sign_up';
  static const String name = 'sign_up_screen';
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PlatformLayout(
      mobileContent: SignUpResponsiveMovil(),
      webContent: SignUpResponsiveWeb(),
    );
  }
}