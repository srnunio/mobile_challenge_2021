import 'package:flutter/material.dart';

abstract class INavigationService {
  final GlobalKey<NavigatorState> navigator;

  GlobalKey<ScaffoldState> get scaffoldState => GlobalKey<ScaffoldState>();

  INavigationService(this.navigator);

  Future<dynamic> navigateToPushNamed(String routeName, {Object? arguments});

  Future<dynamic> replaceRouteName(String routeName, {Object? arguments});

  Future<dynamic> navigateToPushNamedAndRemoveUntil(String routeName);

  Future<dynamic> navigateToPop({Object? object});

  Future<dynamic> navigatePush({required Widget page});
}
