abstract class ServiceLocatorContract {
  /// Registra una instancia única (singleton) para el tipo [T].
  void registerSingleton<T extends Object>(T instance);

  /// Registra una fábrica que crea una nueva instancia cada vez que se solicita.
  void registerFactory<T extends Object>(T Function() factory);

  /// Registra una instancia perezosa (lazy) para el tipo [T].
  void registerLazySingleton<T extends Object>(T Function() factory);

  /// Registra una dependencia en un scope específico.
  void registerScoped<T extends Object>(T Function() factory, String scope);

  /// Obtiene la instancia registrada de tipo [T].
  T get<T extends Object>();

  /// Verifica si una dependencia de tipo [T] está registrada.
  bool isRegistered<T extends Object>();

  /// Elimina una dependencia específica.
  void unregister<T extends Object>();

  /// Elimina todas las dependencias de un scope.
  void unregisterScope(String scope);
}
