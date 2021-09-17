import 'injection_config.dart';

T inject<T extends Object>() => InjectorConfig.getInstance().get<T>();
