import 'package:flutter/material.dart';
import 'package:mobile_challenge_2021/utils/sizes.dart';
import 'package:mobile_challenge_2021/utils/colors.dart';

String get fontName => 'Font';

/// Return BoxDecoration [decoration]
BoxDecoration decoration(
    {Color? color,
    BoxBorder? border,
    double? borderRadius = 0,
    DecorationImage? image,
    BoxShape shape = BoxShape.rectangle}) {
  return BoxDecoration(
      image: image,
      color: color ?? kBackgroundColor,
      shape: shape,
      border: border,
      borderRadius: (shape == BoxShape.rectangle)
          ? BorderRadius.circular(borderRadius!)
          : null);
}

/// Return TextStyle [styleText]
TextStyle styleText({
  Color? color,
  double? size,
  FontWeight? fontWeight,
  String? font,
}) {
  return TextStyle(
      fontFamily: font,
      fontSize: size ?? kTextTitleSize,
      color: color ?? kTitleTextColor,
      fontWeight: fontWeight ?? FontWeight.normal);
}
