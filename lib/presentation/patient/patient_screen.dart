import 'package:customized/customized.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobile_challenge_2021/application/patient/patients_view_model.dart';
import 'package:mobile_challenge_2021/injection/injection.dart';

class PatientScreen extends StatefulWidget {
  static const route = '/patient_screen';

  @override
  State<StatefulWidget> createState() => _PatientState();
}

class _PatientState extends State<PatientScreen>
    with SingleTickerProviderStateMixin {
  PatientsViewModel _model = inject<PatientsViewModel>();

  _body() {
    if (_model.isBusy)
      return Center(
        child: CustomProgress(),
      );

    if (!_model.hasData || _model.hasError) {
      return Column();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Scaffold(body: _body());
    });
  }
}
