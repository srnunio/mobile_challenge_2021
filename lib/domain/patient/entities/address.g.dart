// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Address _$_$_AddressFromJson(Map<String, dynamic> json) {
  return _$_Address(
    street: Street.fromJson(json['street'] as Map<String, dynamic>),
    city: json['city'] as String,
    state: json['state'] as String,
    country: json['country'] as String,
    postcode: json['postcode'] as int,
  );
}

Map<String, dynamic> _$_$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'street': instance.street,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'postcode': instance.postcode,
    };

_$_Street _$_$_StreetFromJson(Map<String, dynamic> json) {
  return _$_Street(
    number: json['number'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$_$_StreetToJson(_$_Street instance) => <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
    };
