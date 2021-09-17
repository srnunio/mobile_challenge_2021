import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient.freezed.dart';

part 'patient.g.dart';

@freezed
class Patient with _$Patient {
  const factory Patient(
      {required String id,
      required String name,
      required String gender,
      required String email,
      required String phone,
      required String picture,
      required String nat,
      required String address,
      required String dateOfBirth,
      required String nationality}) = _Patient;

  factory Patient.fromJson(Map<String, dynamic> json) =>
      _$PatientFromJson(json);
}
