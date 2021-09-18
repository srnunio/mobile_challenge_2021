import 'package:customized/customized.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class DetailsPatientScreen extends StatefulWidget {
  static const route = '/details_patient_screen';

  @override
  State<StatefulWidget> createState() => _DetailsPatientState();
}

class _DetailsPatientState extends State<DetailsPatientScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Scaffold(body: empty);
    });
  }
}
