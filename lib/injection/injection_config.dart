import 'package:get_it/get_it.dart';
import 'package:mobile_challenge_2021/domain/core/i_navigation_service.dart';
import 'package:mobile_challenge_2021/infrasctructure/core/navigation_service.dart';
import 'package:mobile_challenge_2021/injection/register_module.dart';

final _injector = GetIt.instance;

class InjectorConfig {
  InjectorConfig._() {
    registerServices();
    registerRepositories();
    registerViewModels();
  }

  factory InjectorConfig.init() => InjectorConfig._();

  static GetIt getInstance() => _injector;

  void registerServices() {
    final registerModule = InjectorModule();

    _injector.registerLazySingleton<INavigationService>(
        () => NavigationService(registerModule.key));
  }

  void registerViewModels() {}

  void registerRepositories() {}
}

class InjectorModule extends RegisterModule {}
