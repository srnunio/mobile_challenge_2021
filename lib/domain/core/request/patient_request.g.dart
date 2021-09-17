// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PatientRequest _$_$_PatientRequestFromJson(Map<String, dynamic> json) {
  return _$_PatientRequest(
    resultSize: json['resultSize'] as int? ?? 50,
    page: json['page'] as int? ?? 1,
    gender: json['gender'] as String? ?? '',
    nationality: json['nationality'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_PatientRequestToJson(_$_PatientRequest instance) =>
    <String, dynamic>{
      'resultSize': instance.resultSize,
      'page': instance.page,
      'gender': instance.gender,
      'nationality': instance.nationality,
    };
