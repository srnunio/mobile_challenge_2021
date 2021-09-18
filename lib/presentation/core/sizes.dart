import 'package:flutter/widgets.dart';

const kTextTitleSize = 16.0;
const kTextSubtitleSize = 14.0;
const kSizeIcon = 20.0;
const double kBorder = 8.0;
const double _VerticalSpaceSmall = 10.0;
const double _VerticalSpaceMedium = 20.0;
const double _VerticalSpaceLarge = 60.0;
const double _HorizontalSpaceSmall = 10.0;
const double _HorizontalSpaceMedium = 20.0;
const double HorizontalSpaceLarge = 60.0;

Widget verticalSpaceSmall() {
  return verticalSpace(_VerticalSpaceSmall);
}

/// Returns a vertical space with height set to [_VerticalSpaceMedium]
Widget verticalSpaceMedium() {
  return verticalSpace(_VerticalSpaceMedium);
}

/// Returns a vertical space with height set to [_VerticalSpaceLarge]
Widget verticalSpaceLarge() {
  return verticalSpace(_VerticalSpaceLarge);
}

/// Returns a vertical space equal to the [height] supplied
Widget verticalSpace(double height) {
  return Container(height: height);
}

/// Returns a vertical space with height set to [_HorizontalSpaceSmall]
Widget horizontalSpaceSmall() {
  return horizontalSpace(_HorizontalSpaceSmall);
}

/// Returns a vertical space with height set to [_HorizontalSpaceMedium]
Widget horizontalSpaceMedium() {
  return horizontalSpace(_HorizontalSpaceMedium);
}

/// Returns a vertical space with height set to [HorizontalSpaceLarge]
Widget horizontalSpaceLarge() {
  return horizontalSpace(HorizontalSpaceLarge);
}

/// Returns a vertical space equal to the [width] supplied
Widget horizontalSpace(double width) {
  return Container(width: width);
}
