import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_challenge_2021/utils/date_time_util.dart';

part 'date_of_birth.freezed.dart';

part 'date_of_birth.g.dart';

@freezed
class DateOfBirth with _$DateOfBirth {
  const factory DateOfBirth({required String date, required int age}) =
      _DateOfBirth;

  factory DateOfBirth.fromJson(Map<String, dynamic> json) =>
      _$DateOfBirthFromJson(json);
}

extension DateOfBirthEx on DateOfBirth {
  String get dateTime => DateTime.parse(date).formatDate();
}
