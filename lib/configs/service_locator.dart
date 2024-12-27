import 'package:beta_app/configs/configs.dart';
import 'package:beta_app/infrastructure/infrastructure.dart';
import 'package:beta_app/presentation/presentation.dart';


void setupLocator() {
final ServiceLocatorContract serviceLocator = GetItAdapter();
  serviceLocator.registerFactory<LoginBloc>(() => LoginBloc());
  serviceLocator.registerFactory<RegisterBloc>(() => RegisterBloc());
}