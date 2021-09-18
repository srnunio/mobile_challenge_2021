import 'package:customized/customized.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_challenge_2021/domain/patient/entities/address.dart';
import 'package:mobile_challenge_2021/domain/patient/entities/date_of_birth.dart';
import 'package:mobile_challenge_2021/domain/patient/entities/patient.dart';
import 'package:mobile_challenge_2021/presentation/core/component/image/remote_image.dart';
import 'package:mobile_challenge_2021/presentation/core/sizes.dart';
import 'package:mobile_challenge_2021/presentation/core/styles.dart';
import 'package:mobile_challenge_2021/utils/colors.dart';
import 'package:mobile_challenge_2021/utils/strings_util.dart';

class ItemPatientUI extends StatelessWidget {
  final Patient patient;
  final Function(Patient) onTap;

  ItemPatientUI({required this.patient, required this.onTap});

  @override
  Widget build(BuildContext context) {
    var boxDecoration = decoration(
        border: Border.all(color: kPrimaryColor2, width: 2.0),
        borderRadius: kBorder);
    return GestureDetector(
      onTap: () => onTap(patient),
      child: Container(
        decoration: boxDecoration,
        margin: EdgeInsets.only(left: 10.0, right: 10.0),
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RemoteImage(
              urlImage: patient.picture,
              width: 80.0,
              height: 80.0,
            ),
            horizontalSpaceSmall(),
            Expanded(
                child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Txt(
                  patient.fullName,
                  textStyle: (_) =>
                      styleText(fontWeight: FontWeight.bold, size: 18.0),
                  textAlign: TextAlign.start,
                ),
                Txt(
                  patient.address.fullAddress,
                  maxLine: 2,
                  textStyle: (_) => styleText(size: 14.0),
                  textAlign: TextAlign.start,
                ),
                Row(
                  children: [
                    Txt(
                      patient.gender.translate,
                      textStyle: (_) => styleText(size: 14.0),
                      textAlign: TextAlign.start,
                    ),
                    Expanded(
                        child: Txt(
                      patient.dateOfBirth.dateTime,
                      textStyle: (_) => styleText(
                          size: 14.0,
                          color: kPrimaryColor2,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.end,
                    )),
                  ],
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
