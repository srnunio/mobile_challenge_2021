import '../base_component.dart';

abstract class CustomImage extends BaseComponent {
  double? height;
  double? width;

  CustomImage({
    required String urlImage,
    required this.height,
    this.width,
  }) : super(value: urlImage) {
    this.height = height ?? 180.0;
    this.width = width ?? double.infinity;
  }
}
