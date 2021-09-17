import 'package:flutter/material.dart';

abstract class INavigationService {
  final GlobalKey<NavigatorState> navigator;

  GlobalKey<ScaffoldState> get scaffoldState => GlobalKey<ScaffoldState>();

  INavigationService(this.navigator);

  /// call Navigator.pushNamed [navigateToPushNamed]
  Future<dynamic> navigateToPushNamed(String routeName, {Object? arguments});

  /// call Navigator.pushReplacementNamed [replaceRouteName]
  Future<dynamic> replaceRouteName(String routeName, {Object? arguments});

  /// call Navigator.pushNamedAndRemoveUntil [navigateToPushNamedAndRemoveUntil]
  Future<dynamic> navigateToPushNamedAndRemoveUntil(String routeName);

  /// call Navigator.pop [navigateToPop]
  Future<dynamic> navigateToPop({Object? object});
}
