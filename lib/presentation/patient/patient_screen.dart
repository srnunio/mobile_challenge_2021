import 'package:customized/customized.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobile_challenge_2021/application/patient/patients_view_model.dart';
import 'package:mobile_challenge_2021/domain/core/request/patient_request.dart';
import 'package:mobile_challenge_2021/injection/injection.dart';
import 'package:mobile_challenge_2021/presentation/body_search_ui.dart';
import 'package:mobile_challenge_2021/presentation/core/component/custom_refresh.dart';
import 'package:mobile_challenge_2021/utils/sizes.dart';
import 'package:mobile_challenge_2021/presentation/core/styles.dart';
import 'package:mobile_challenge_2021/presentation/core/widgets.dart';
import 'package:mobile_challenge_2021/presentation/gender_screen.dart';
import 'package:mobile_challenge_2021/presentation/patient/details_patient_screen.dart';
import 'package:mobile_challenge_2021/presentation/patient/patient_ui_item.dart';
import 'package:mobile_challenge_2021/utils/colors.dart';
import 'package:mobile_challenge_2021/utils/strings_util.dart';
import 'package:mobile_challenge_2021/utils/theme.dart';

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
    if (_model.isBusy && !_model.hasData)
      return Center(
        child: CustomProgress(),
      );

    if (!_model.hasData && _model.hasError) {
      return Center(
        child: Column(
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
                'try_again'.translate,
                textAlign: TextAlign.center,
                textStyle: (_) => _.copyWith(
                    fontWeight: FontWeight.bold, color: kPrimaryColor2),
              ),
            ),
          ],
        ),
      );
    }

    return CustomRefresh(
        child: ListView.separated(
          separatorBuilder: (ctx, index) {
            return verticalSpaceSmall();
          },
          itemBuilder: (ctx, index) {
            var patient = _model.patients[index];
            return ItemPatientUI(
              patient: patient,
              onTap: (item) {
                defaultBottomSheet(
                    child: DetailsPatientScreen(item), context: context);
              },
            );
          },
          itemCount: _model.patients.length,
        ),
        refresh: _model.refresh,
        onRefresh: () => _model.load(refresh: true),
        onLoading: _model.load);
  }

  _onFilter() async {
    var response = await defaultBottomSheet(
      child: GenderScreen(),
      context: context,
    );

    if (response == null) return;

    var request = _model.request.copyWith(gender: response);

    _model.setRequest(request);

    _model.load(refresh: true);
  }

  _onSearch(String nationality) async {
    var request = _model.request.copyWith(nationality: nationality);

    _model.setRequest(request);

    _model.load(refresh: true);
  }

  _onClear() {
    _model.onClear();
  }

  @override
  void initState() {
    super.initState();
    _model.load();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      print(_model.request.nationality);
      return Scaffold(
          appBar: AppBar(
            brightness: CustomTheme.brightness,
            backgroundColor: kBackgroundColor,
            elevation: 0.0,
            title: Txt(
              'app_name'.translate,
              textStyle: (_) =>
                  styleText(fontWeight: FontWeight.bold, size: 24.0),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(55.0),
              child: BodySearchUI(
                onFilter: _onFilter,
                onSearch: _onSearch,
                onClear: _onClear,
                isBusy: _model.isBusy,
                hasFiltered: _model.request.hasFiltered,
                searchValue: _model.request.nationality,
              ),
            ),
          ),
          body: _body());
    });
  }
}
