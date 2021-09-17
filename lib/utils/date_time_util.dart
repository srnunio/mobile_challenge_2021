import 'package:intl/intl.dart';

extension DateTimeUtil on DateTime {
  String formatDate({String format = 'dd/MM/yyyy'}) =>
      DateFormat(format).format(this);
}
