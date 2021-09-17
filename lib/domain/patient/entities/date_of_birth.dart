import 'package:freezed_annotation/freezed_annotation.dart';

part 'date_of_birth.freezed.dart';

part 'date_of_birth.g.dart';

@freezed
class DateOfBirth with _$DateOfBirth {
  const factory DateOfBirth({required String date, required int age}) =
      _DateOfBirth;

  factory DateOfBirth.fromJson(Map<String, dynamic> json) =>
      _$DateOfBirthFromJson(json);
}
