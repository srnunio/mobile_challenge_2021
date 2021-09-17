import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_challenge_2021/domain/patient/entities/address.dart';

import 'date_of_birth.dart';
import 'name.dart';

part 'patient.freezed.dart';

part 'patient.g.dart';

@freezed
class Patient with _$Patient {
  const factory Patient(
      {required String id,
      required Name name,
      required String gender,
      required String email,
      required String phone,
      required String picture,
      required String nat,
      required Address address,
      required DateOfBirth dateOfBirth,
      required String nationality}) = _Patient;

  factory Patient.fromJson(Map<String, dynamic> json) =>
      _$PatientFromJson(json);
}
