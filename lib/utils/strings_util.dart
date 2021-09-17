import 'package:mobile_challenge_2021/I18n/l18n.dart';

extension Str on String {
  String get translate => I18n.text(this);
}
