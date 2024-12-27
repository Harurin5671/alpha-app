import 'package:flutter/material.dart';

import 'package:beta_app/configs/configs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Alfa App',
      theme: AppTheme.buildLightTheme(context),
      darkTheme: AppTheme.buildDarkTheme(context),
      themeMode: ThemeMode.system,
      routerConfig: appRouter,
    );
  }
}
