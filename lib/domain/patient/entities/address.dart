import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';

part 'address.g.dart';

@freezed
class Address with _$Address {
  const factory Address(
      {required Street street,
      required String city,
      required String state,
      required String country,
      required int postcode}) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}

@freezed
class Street with _$Street {
  const factory Street({
    required String number,
    required String name,
  }) = _Street;

  factory Street.fromJson(Map<String, dynamic> json) => _$StreetFromJson(json);
}
