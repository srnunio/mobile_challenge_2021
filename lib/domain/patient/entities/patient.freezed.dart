// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'patient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Patient _$PatientFromJson(Map<String, dynamic> json) {
  return _Patient.fromJson(json);
}

/// @nodoc
class _$PatientTearOff {
  const _$PatientTearOff();

  _Patient call(
      {required String id,
      required String name,
      required String gender,
      required String email,
      required String phone,
      required String picture,
      required String nat,
      required Address address,
      required DateOfBirth dateOfBirth,
      required String nationality}) {
    return _Patient(
      id: id,
      name: name,
      gender: gender,
      email: email,
      phone: phone,
      picture: picture,
      nat: nat,
      address: address,
      dateOfBirth: dateOfBirth,
      nationality: nationality,
    );
  }

  Patient fromJson(Map<String, Object> json) {
    return Patient.fromJson(json);
  }
}

/// @nodoc
const $Patient = _$PatientTearOff();

/// @nodoc
mixin _$Patient {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;
  String get nat => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;
  DateOfBirth get dateOfBirth => throw _privateConstructorUsedError;
  String get nationality => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientCopyWith<Patient> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientCopyWith<$Res> {
  factory $PatientCopyWith(Patient value, $Res Function(Patient) then) =
      _$PatientCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String gender,
      String email,
      String phone,
      String picture,
      String nat,
      Address address,
      DateOfBirth dateOfBirth,
      String nationality});

  $AddressCopyWith<$Res> get address;
  $DateOfBirthCopyWith<$Res> get dateOfBirth;
}

/// @nodoc
class _$PatientCopyWithImpl<$Res> implements $PatientCopyWith<$Res> {
  _$PatientCopyWithImpl(this._value, this._then);

  final Patient _value;
  // ignore: unused_field
  final $Res Function(Patient) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? gender = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? picture = freezed,
    Object? nat = freezed,
    Object? address = freezed,
    Object? dateOfBirth = freezed,
    Object? nationality = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      nat: nat == freezed
          ? _value.nat
          : nat // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateOfBirth,
      nationality: nationality == freezed
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }

  @override
  $DateOfBirthCopyWith<$Res> get dateOfBirth {
    return $DateOfBirthCopyWith<$Res>(_value.dateOfBirth, (value) {
      return _then(_value.copyWith(dateOfBirth: value));
    });
  }
}

/// @nodoc
abstract class _$PatientCopyWith<$Res> implements $PatientCopyWith<$Res> {
  factory _$PatientCopyWith(_Patient value, $Res Function(_Patient) then) =
      __$PatientCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String gender,
      String email,
      String phone,
      String picture,
      String nat,
      Address address,
      DateOfBirth dateOfBirth,
      String nationality});

  @override
  $AddressCopyWith<$Res> get address;
  @override
  $DateOfBirthCopyWith<$Res> get dateOfBirth;
}

/// @nodoc
class __$PatientCopyWithImpl<$Res> extends _$PatientCopyWithImpl<$Res>
    implements _$PatientCopyWith<$Res> {
  __$PatientCopyWithImpl(_Patient _value, $Res Function(_Patient) _then)
      : super(_value, (v) => _then(v as _Patient));

  @override
  _Patient get _value => super._value as _Patient;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? gender = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? picture = freezed,
    Object? nat = freezed,
    Object? address = freezed,
    Object? dateOfBirth = freezed,
    Object? nationality = freezed,
  }) {
    return _then(_Patient(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      nat: nat == freezed
          ? _value.nat
          : nat // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateOfBirth,
      nationality: nationality == freezed
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Patient implements _Patient {
  const _$_Patient(
      {required this.id,
      required this.name,
      required this.gender,
      required this.email,
      required this.phone,
      required this.picture,
      required this.nat,
      required this.address,
      required this.dateOfBirth,
      required this.nationality});

  factory _$_Patient.fromJson(Map<String, dynamic> json) =>
      _$_$_PatientFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String gender;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String picture;
  @override
  final String nat;
  @override
  final Address address;
  @override
  final DateOfBirth dateOfBirth;
  @override
  final String nationality;

  @override
  String toString() {
    return 'Patient(id: $id, name: $name, gender: $gender, email: $email, phone: $phone, picture: $picture, nat: $nat, address: $address, dateOfBirth: $dateOfBirth, nationality: $nationality)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Patient &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality()
                    .equals(other.picture, picture)) &&
            (identical(other.nat, nat) ||
                const DeepCollectionEquality().equals(other.nat, nat)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                const DeepCollectionEquality()
                    .equals(other.dateOfBirth, dateOfBirth)) &&
            (identical(other.nationality, nationality) ||
                const DeepCollectionEquality()
                    .equals(other.nationality, nationality)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(picture) ^
      const DeepCollectionEquality().hash(nat) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(dateOfBirth) ^
      const DeepCollectionEquality().hash(nationality);

  @JsonKey(ignore: true)
  @override
  _$PatientCopyWith<_Patient> get copyWith =>
      __$PatientCopyWithImpl<_Patient>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PatientToJson(this);
  }
}

abstract class _Patient implements Patient {
  const factory _Patient(
      {required String id,
      required String name,
      required String gender,
      required String email,
      required String phone,
      required String picture,
      required String nat,
      required Address address,
      required DateOfBirth dateOfBirth,
      required String nationality}) = _$_Patient;

  factory _Patient.fromJson(Map<String, dynamic> json) = _$_Patient.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get gender => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get phone => throw _privateConstructorUsedError;
  @override
  String get picture => throw _privateConstructorUsedError;
  @override
  String get nat => throw _privateConstructorUsedError;
  @override
  Address get address => throw _privateConstructorUsedError;
  @override
  DateOfBirth get dateOfBirth => throw _privateConstructorUsedError;
  @override
  String get nationality => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PatientCopyWith<_Patient> get copyWith =>
      throw _privateConstructorUsedError;
}
