import 'package:cached_network_image/cached_network_image.dart';
import 'package:customized/customized.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobile_challenge_2021/presentation/core/component/image/placholder.dart';

import '../../styles.dart';
import 'custom_image.dart';

class RemoteImage extends CustomImage {
  RemoteImage({
    required String urlImage,
    double? height,
    double? borderRadius,
    BoxShape shape = BoxShape.rectangle,
    bool isBorder = false,
    double? width,
  }) : super(
          urlImage: urlImage,
          height: height,
          width: width,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: CachedNetworkImage(
        height: height,
        width: width,
        imageUrl: value!,
        imageBuilder: (context, imageProvider) {
          return Container(
            width: width,
            height: height,
            decoration: decoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
        placeholder: (context, url) => Container(
          height: height,
          width: width,
          child: Center(
            child: CustomProgress(),
          ),
        ),
        errorWidget: (context, url, error) {
          return PlaceHolderImage(
            height: height,
            width: width,
          );
        },
      ),
    );
  }
}
