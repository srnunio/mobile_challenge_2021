import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_challenge_2021/utils/colors.dart';

import '../../../utils/sizes.dart';
import 'base_component.dart';

class CustomIcon extends BaseComponent {
  double? size;

  Color? color;

  CustomIcon(
      {this.size, this.color, String? iconName})
      : assert(iconName != null && iconName.isNotEmpty),
        super(value: iconName);

  @override
  Widget build(BuildContext context) {
    size = size ?? kSizeIcon;
    color = color ?? kIconColor;
    return Center(
      child: SvgPicture.asset(
        'assets/icons/$value.svg',
        height: size,
        width: size,
        color: color,
      ),
    );
  }
}
