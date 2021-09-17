import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mobile_challenge_2021/domain/core/i_navigation_service.dart';
import 'package:mobile_challenge_2021/injection/injection.dart';
import 'package:mobile_challenge_2021/presentation/patient/patient_screen.dart';

class SplashScreen extends StatefulWidget {
  static const route = '/';

  @override
  State<StatefulWidget> createState() => _InitializedState();
}

class _InitializedState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  INavigationService _navigation = inject<INavigationService>();

  @override
  void initState() {
    super.initState();
    this.loadData();
  }

  void loadData() {
    Timer(Duration(seconds: 1), onDoneLoading);
  }

  onDoneLoading() {
    _navigation.navigateToPushNamedAndRemoveUntil(PatientScreen.route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        child: Image.asset('assets/image/logo.png'),
      ),
    ));
  }
}
