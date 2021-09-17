import 'package:customized/customized.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobile_challenge_2021/application/patient/patients_view_model.dart';
import 'package:mobile_challenge_2021/injection/injection.dart';
import 'package:mobile_challenge_2021/presentation/core/sizes.dart';
import 'package:mobile_challenge_2021/presentation/patient/patient_ui_item.dart';
import 'package:mobile_challenge_2021/utils/strings_util.dart';

class PatientScreen extends StatefulWidget {
  static const route = '/patient_screen';

  @override
  State<StatefulWidget> createState() => _PatientState();
}

class _PatientState extends State<PatientScreen>
    with SingleTickerProviderStateMixin {
  PatientsViewModel _model = inject<PatientsViewModel>();

  String messageFailure() {
    if (!_model.hasError) return '';
    return _model.failure.when(
        networkError: () => 'network'.translate,
        emptyResult: () => 'no_results_found'.translate,
        serverError: () => 'failure'.translate);
  }

  _body() {
    if (_model.isBusy)
      return Center(
        child: CustomProgress(),
      );

    if (!_model.hasData && _model.hasError) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Icon(
            Icons.info_outline,
            size: 55.0,
          ),
          Txt(
            messageFailure(),
            textAlign: TextAlign.center,
          ),
          InkWell(
            onTap: _model.load,
            child: Txt(
              'try_again',
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );
    }

    return ListView.separated(
      separatorBuilder: (ctx,index){
        return verticalSpaceSmall();
      },
      itemBuilder: (ctx, index) {
        var patient = _model.patients[index];
        return ItemPatientUI(
          patient: patient,
        );
      },
      itemCount: _model.patients.length,
    );
  }

  @override
  void initState() {
    super.initState();
    _model.load();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Scaffold(body: _body());
    });
  }
}
