// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'date_of_birth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DateOfBirth _$DateOfBirthFromJson(Map<String, dynamic> json) {
  return _DateOfBirth.fromJson(json);
}

/// @nodoc
class _$DateOfBirthTearOff {
  const _$DateOfBirthTearOff();

  _DateOfBirth call({required String date, required int age}) {
    return _DateOfBirth(
      date: date,
      age: age,
    );
  }

  DateOfBirth fromJson(Map<String, Object> json) {
    return DateOfBirth.fromJson(json);
  }
}

/// @nodoc
const $DateOfBirth = _$DateOfBirthTearOff();

/// @nodoc
mixin _$DateOfBirth {
  String get date => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DateOfBirthCopyWith<DateOfBirth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateOfBirthCopyWith<$Res> {
  factory $DateOfBirthCopyWith(
          DateOfBirth value, $Res Function(DateOfBirth) then) =
      _$DateOfBirthCopyWithImpl<$Res>;
  $Res call({String date, int age});
}

/// @nodoc
class _$DateOfBirthCopyWithImpl<$Res> implements $DateOfBirthCopyWith<$Res> {
  _$DateOfBirthCopyWithImpl(this._value, this._then);

  final DateOfBirth _value;
  // ignore: unused_field
  final $Res Function(DateOfBirth) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? age = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$DateOfBirthCopyWith<$Res>
    implements $DateOfBirthCopyWith<$Res> {
  factory _$DateOfBirthCopyWith(
          _DateOfBirth value, $Res Function(_DateOfBirth) then) =
      __$DateOfBirthCopyWithImpl<$Res>;
  @override
  $Res call({String date, int age});
}

/// @nodoc
class __$DateOfBirthCopyWithImpl<$Res> extends _$DateOfBirthCopyWithImpl<$Res>
    implements _$DateOfBirthCopyWith<$Res> {
  __$DateOfBirthCopyWithImpl(
      _DateOfBirth _value, $Res Function(_DateOfBirth) _then)
      : super(_value, (v) => _then(v as _DateOfBirth));

  @override
  _DateOfBirth get _value => super._value as _DateOfBirth;

  @override
  $Res call({
    Object? date = freezed,
    Object? age = freezed,
  }) {
    return _then(_DateOfBirth(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DateOfBirth implements _DateOfBirth {
  const _$_DateOfBirth({required this.date, required this.age});

  factory _$_DateOfBirth.fromJson(Map<String, dynamic> json) =>
      _$_$_DateOfBirthFromJson(json);

  @override
  final String date;
  @override
  final int age;

  @override
  String toString() {
    return 'DateOfBirth(date: $date, age: $age)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DateOfBirth &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(age);

  @JsonKey(ignore: true)
  @override
  _$DateOfBirthCopyWith<_DateOfBirth> get copyWith =>
      __$DateOfBirthCopyWithImpl<_DateOfBirth>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DateOfBirthToJson(this);
  }
}

abstract class _DateOfBirth implements DateOfBirth {
  const factory _DateOfBirth({required String date, required int age}) =
      _$_DateOfBirth;

  factory _DateOfBirth.fromJson(Map<String, dynamic> json) =
      _$_DateOfBirth.fromJson;

  @override
  String get date => throw _privateConstructorUsedError;
  @override
  int get age => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DateOfBirthCopyWith<_DateOfBirth> get copyWith =>
      throw _privateConstructorUsedError;
}
