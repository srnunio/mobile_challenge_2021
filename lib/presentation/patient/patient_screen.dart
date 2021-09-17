import 'dart:async';
import 'package:customized/customized.dart';
import 'package:flutter/material.dart';

class PatientScreen extends StatefulWidget {
  static const route = '/patient_screen';

  @override
  State<StatefulWidget> createState() => _PatientState();
}

class _PatientState extends State<PatientScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: empty);
  }
}
