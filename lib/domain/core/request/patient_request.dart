import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_request.freezed.dart';

part 'patient_request.g.dart';

@freezed
class PatientRequest with _$PatientRequest {
  const factory PatientRequest(
      {@Default(50) int resultSize,
      @Default(1) int page,
      @Default('') String gender,
      @Default('') String nationality}) = _PatientRequest;

  factory PatientRequest.fromJson(Map<String, dynamic> json) =>
      _$PatientRequestFromJson(json);
}
