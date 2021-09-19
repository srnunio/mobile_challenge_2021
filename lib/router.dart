import 'package:flutter/material.dart';
import 'package:mobile_challenge_2021/presentation/patient/patient_screen.dart';
import 'package:mobile_challenge_2021/presentation/splash_screen.dart';

class AnimationRouterPager extends MaterialPageRoute {
  WidgetBuilder builder;

  AnimationRouterPager({required this.builder}) : super(builder: builder);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}

abstract class CustomRouter {
  static Route<dynamic> route(RouteSettings settings) {
    switch (settings.name) {
      case SplashScreen.route:
        return AnimationRouterPager(builder: (_) => SplashScreen());
      case PatientScreen.route:
        return AnimationRouterPager(builder: (_) => PatientScreen());
      default:
        return AnimationRouterPager(builder: (_) => SplashScreen());
    }
  }
}
