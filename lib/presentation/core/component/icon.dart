import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_challenge_2021/utils/colors.dart';

import '../sizes.dart';
import 'base_component.dart';

class CustomIcon extends BaseComponent {
  double? size;

  Color? color;
  final bool defaultActive;

  CustomIcon(
      {this.size, this.color, String? iconName, this.defaultActive = false})
      : assert(iconName != null && iconName.isNotEmpty),
        super(value: iconName);

  @override
  Widget build(BuildContext context) {
    size = size ?? kSizeIcon;
    color = color ?? kIconColor;
    color = (defaultActive) ? null : color;
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
