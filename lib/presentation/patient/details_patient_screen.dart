import 'package:customized/customized.dart';
import 'package:flutter/material.dart';
import 'package:mobile_challenge_2021/domain/core/i_navigation_service.dart';
import 'package:mobile_challenge_2021/domain/patient/entities/date_of_birth.dart';
import 'package:mobile_challenge_2021/domain/patient/entities/patient.dart';
import 'package:mobile_challenge_2021/injection/injection.dart';
import 'package:mobile_challenge_2021/presentation/core/component/image/remote_image.dart';
import 'package:mobile_challenge_2021/presentation/core/sizes.dart';
import 'package:mobile_challenge_2021/presentation/core/styles.dart';
import 'package:mobile_challenge_2021/utils/colors.dart';
import 'package:mobile_challenge_2021/utils/strings_util.dart';

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

  _bodyHorizontalInfo({required String title, required String value}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
            child: Txt(
          title,
        )),
        Txt(
          value,
          textStyle: (_) =>
              _.copyWith(color: kPrimaryColor2, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  _bodyUserInformation() {
    var patient = widget.patient;
    var boxDecoration = decoration(
        border: Border.all(color: kPrimaryColor2, width: 2.0),
        borderRadius: kBorder);

    return Container(
      decoration: boxDecoration,
      margin: EdgeInsets.only(left: 10.0, right: 10.0),
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _bodyHorizontalInfo(title: 'id'.translate, value: patient.id),
          Divider(
            color: kPrimaryColor2,
          ),
          _bodyHorizontalInfo(title: 'email'.translate, value: patient.email),
          Divider(
            color: kPrimaryColor2,
          ),
          _bodyHorizontalInfo(
              title: 'gender'.translate, value: patient.gender.translate),
          Divider(
            color: kPrimaryColor2,
          ),
          _bodyHorizontalInfo(title: 'phone'.translate, value: patient.phone),
          Divider(
            color: kPrimaryColor2,
          ),
          _bodyHorizontalInfo(
              title: 'nationality'.translate, value: patient.nationality),
          Divider(
            color: kPrimaryColor2,
          ),
          _bodyHorizontalInfo(
              title: 'date_of_birth'.translate,
              value: patient.dateOfBirth.dateTime),
        ],
      ),
    );
  }

  _bodyAddress() {
    var address = widget.patient.address;
    var boxDecoration = decoration(
        border: Border.all(color: kPrimaryColor2, width: 2.0),
        borderRadius: kBorder);

    return Container(
      decoration: boxDecoration,
      margin: EdgeInsets.only(left: 10.0, right: 10.0),
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _bodyHorizontalInfo(
              title: 'country'.translate, value: address.country),
          Divider(
            color: kPrimaryColor2,
          ),
          _bodyHorizontalInfo(title: 'city'.translate, value: address.city),
          Divider(
            color: kPrimaryColor2,
          ),
          _bodyHorizontalInfo(title: 'state'.translate, value: address.state),
          Divider(
            color: kPrimaryColor2,
          ),
          _bodyHorizontalInfo(
              title: 'street'.translate, value: address.street.name),
          Divider(
            color: kPrimaryColor2,
          ),
          _bodyHorizontalInfo(
              title: 'postcode'.translate, value: address.postcode),
        ],
      ),
    );
  }

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
        backgroundColor: Colors.transparent,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              bottom: 0.0,
              child: Container(
                alignment: Alignment.bottomCenter,
                width: size.width,
                height: height,
                decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0))),
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
                    verticalSpace(45.0),
                    Txt(
                      widget.patient.fullName,
                      textStyle: (_) =>
                          styleText(fontWeight: FontWeight.bold, size: 28.0),
                      textAlign: TextAlign.center,
                    ),
                    Expanded(
                        child: ListView(
                      children: [
                        _bodyUserInformation(),
                        verticalSpaceSmall(),
                        _bodyAddress(),
                        verticalSpaceSmall(),
                      ],
                    ))
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
