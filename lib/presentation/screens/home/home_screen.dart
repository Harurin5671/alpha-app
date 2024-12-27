import 'package:flutter/material.dart';

import 'package:beta_app/presentation/presentation.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home';
  static const String name = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PlatformLayout(
      mobileContent: HomeResponsiveMovil(),
      webContent: HomeResponsiveWeb(),
    );
  }
}
