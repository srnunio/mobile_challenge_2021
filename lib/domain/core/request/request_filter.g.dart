// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestFilter _$_$_RequestFilterFromJson(Map<String, dynamic> json) {
  return _$_RequestFilter(
    resultSize: json['resultSize'] as int? ?? 50,
    genre: json['genre'] as String? ?? '',
    nationality: json['nationality'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_RequestFilterToJson(_$_RequestFilter instance) =>
    <String, dynamic>{
      'resultSize': instance.resultSize,
      'genre': instance.genre,
      'nationality': instance.nationality,
    };
