import 'package:go_router/go_router.dart';

import 'package:beta_app/presentation/presentation.dart';

final appRouter = GoRouter(
  initialLocation: LoginScreen.routeName,
  routes: [
    GoRoute(
      path: LoginScreen.routeName,
      name: LoginScreen.name,
      builder: (context, state) {
        return const LoginScreen();
      },
    ),
    GoRoute(
      path: SignUpScreen.routeName,
      name: SignUpScreen.name,
      builder: (context, state) {
        return const SignUpScreen();
      },
    ),
    GoRoute(
      path: HomeScreen.routeName,
      name: HomeScreen.name,
      builder: (context, state) {
        return const HomeScreen();
      },
    ),
  ],
);
