import 'package:get_it/get_it.dart';

import 'package:beta_app/configs/configs.dart';

class GetItAdapter implements ServiceLocatorContract {
  final GetIt _getIt = GetIt.instance;
  @override
  T get<T extends Object>() {
    return _getIt<T>();
  }

  @override
  bool isRegistered<T extends Object>() {
    return _getIt.isRegistered<T>();
  }

  @override
  void registerFactory<T extends Object>(T Function() factory) {
    return _getIt.registerFactory<T>(factory);
  }

  @override
  void registerLazySingleton<T extends Object>(T Function() factory) {
    return _getIt.registerLazySingleton<T>(factory);
  }

  @override
  void registerScoped<T extends Object>(T Function() factory, String scope) {
    //Todo: Implementar Register Scope
    throw UnimplementedError(
      'registerScoped is not implemented yet',
    );
  }

  @override
  void registerSingleton<T extends Object>(T instance) {
    _getIt.registerSingleton<T>(instance);
  }

  @override
  void unregister<T extends Object>() {
    _getIt.unregister<T>();
  }

  @override
  void unregisterScope(String scope) {
    //Todo: Implementar Unregister Scope
    throw UnimplementedError(
      'unregisterScope is not implemented yet',
    );
  }

}