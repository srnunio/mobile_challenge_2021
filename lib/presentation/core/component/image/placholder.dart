import 'package:customized/customized.dart';
import 'package:flutter/material.dart';
import 'package:mobile_challenge_2021/utils/colors.dart';

import '../../sizes.dart';
import '../../styles.dart';
import 'custom_image.dart';

class PlaceHolderImage extends CustomImage {
  final bool isLocal;
  final Color? background;

  PlaceHolderImage({
    double? height,
    double? width,
    bool isBorder = false,
    this.isLocal = false,
    this.background,
  }) : super(
            urlImage: 'empty',
            height: height,
            width: width, );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Container(
        width: width,
        height: height,
        child: empty,
        decoration: decoration(
            shape: BoxShape.circle,
            color: background ?? kBackgroundColor,
            image: DecorationImage(
                image: Image.asset(
              'assets/image/empty.png',
              width: width,
              height: height,
            ).image)),
      ),
    );
  }
}
