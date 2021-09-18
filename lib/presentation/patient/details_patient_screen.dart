import 'package:customized/customized.dart';
import 'package:flutter/material.dart';
import 'package:mobile_challenge_2021/domain/core/i_navigation_service.dart';
import 'package:mobile_challenge_2021/domain/patient/entities/patient.dart';
import 'package:mobile_challenge_2021/injection/injection.dart';
import 'package:mobile_challenge_2021/presentation/core/component/image/remote_image.dart';
import 'package:mobile_challenge_2021/presentation/core/sizes.dart';
import 'package:mobile_challenge_2021/presentation/core/styles.dart';
import 'package:mobile_challenge_2021/utils/colors.dart';

class DetailsPatientScreen extends StatefulWidget {
  static const route = '/details_patient_screen';
  final Patient patient;

  DetailsPatientScreen(this.patient);

  @override
  State<StatefulWidget> createState() => _DetailsPatientState();
}

class _DetailsPatientState extends State<DetailsPatientScreen>
    with SingleTickerProviderStateMixin {
  var navigation = inject<INavigationService>();

  void _close() => navigation.navigateToPop();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height * (3 / 4);
    return Scaffold(
        backgroundColor: Colors.black45,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              bottom: 0.0,
              child: Container(
                alignment: Alignment.bottomCenter,
                width: size.width,
                height: height,
                color: kBackgroundColor,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        icon: Icon(
                          Icons.clear,
                          color: kPrimaryColor2,
                        ),
                        onPressed: _close,
                      ),
                    ),
                    verticalSpaceLarge(),
                    Txt(
                      widget.patient.fullName,
                      textStyle: (_) =>
                          styleText(fontWeight: FontWeight.bold, size: 28.0),
                      textAlign: TextAlign.center,
                    ),
                    Txt(
                      widget.patient.email,
                      textAlign: TextAlign.center,
                    ),
                    Txt(
                      widget.patient.phone,
                      textAlign: TextAlign.center,
                      textStyle: (_) =>
                          styleText(fontWeight: FontWeight.bold,color: kPrimaryColor3),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 100.0,
              child: Container(
                decoration: decoration(
                    border: Border.all(color: kBackgroundColor, width: 4.0),
                    shape: BoxShape.circle),
                child: RemoteImage(
                  urlImage: widget.patient.picture,
                  width: 150.0,
                  height: 150.0,
                ),
              ),
            ),
          ],
        ));
  }
}
