import 'dart:async';
import 'package:customized/customized.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const route = '/';

  @override
  State<StatefulWidget> createState() => _InitializedState();
}

class _InitializedState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    this.loadData();
  }

  void loadData() {
    Timer(Duration(seconds: 1), onDoneLoading);
  }

  onDoneLoading() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: empty);
  }
}
