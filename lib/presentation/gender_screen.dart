import 'package:customized/customized.dart';
import 'package:flutter/material.dart';
import 'package:mobile_challenge_2021/domain/core/i_navigation_service.dart';
import 'package:mobile_challenge_2021/domain/patient/entities/patient.dart';
import 'package:mobile_challenge_2021/injection/injection.dart';
import 'package:mobile_challenge_2021/utils/colors.dart';
import 'package:mobile_challenge_2021/utils/strings_util.dart';

import 'core/sizes.dart';
import 'core/styles.dart';

class GenderScreen extends StatefulWidget {
  static const route = '/gender_screen';

  @override
  State<StatefulWidget> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen>
    with SingleTickerProviderStateMixin {
  var navigation = inject<INavigationService>();

  void _close() => navigation.navigateToPop();

  _bodyTitle({required String title, required VoidCallback onTap}) {
    var boxDecoration = decoration(
        border: Border.all(color: kPrimaryColor2, width: 2.0),
        borderRadius: kBorder);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 200.0,
        decoration: boxDecoration,
        margin: EdgeInsets.only(left: 10.0, right: 10.0),
        padding: EdgeInsets.all(8.0),
        child: Txt(
          title,
          textAlign: TextAlign.center,
          textColor: kPrimaryColor2,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              height: 180.0,
              decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  verticalSpaceSmall(),
                  Txt(
                    'gender'.translate,
                    textStyle: (_) =>
                        styleText(fontWeight: FontWeight.bold, size: 28.0),
                    textAlign: TextAlign.center,
                  ),
                  verticalSpaceSmall(),
                  _bodyTitle(
                      title: 'female'.translate,
                      onTap: () => navigation.navigateToPop(object: 'female')),
                  verticalSpaceSmall(),
                  _bodyTitle(
                      title: 'male'.translate,
                      onTap: () => navigation.navigateToPop(object: 'male')),
                ],
              ),
            )
          ],
        ));
  }
}
