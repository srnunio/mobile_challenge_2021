// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'patient_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PatientRequest _$PatientRequestFromJson(Map<String, dynamic> json) {
  return _PatientRequest.fromJson(json);
}

/// @nodoc
class _$PatientRequestTearOff {
  const _$PatientRequestTearOff();

  _PatientRequest call(
      {int resultSize = 50,
      int page = 0,
      String gender = '',
      String nationality = ''}) {
    return _PatientRequest(
      resultSize: resultSize,
      page: page,
      gender: gender,
      nationality: nationality,
    );
  }

  PatientRequest fromJson(Map<String, Object> json) {
    return PatientRequest.fromJson(json);
  }
}

/// @nodoc
const $PatientRequest = _$PatientRequestTearOff();

/// @nodoc
mixin _$PatientRequest {
  int get resultSize => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get nationality => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientRequestCopyWith<PatientRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientRequestCopyWith<$Res> {
  factory $PatientRequestCopyWith(
          PatientRequest value, $Res Function(PatientRequest) then) =
      _$PatientRequestCopyWithImpl<$Res>;
  $Res call({int resultSize, int page, String gender, String nationality});
}

/// @nodoc
class _$PatientRequestCopyWithImpl<$Res>
    implements $PatientRequestCopyWith<$Res> {
  _$PatientRequestCopyWithImpl(this._value, this._then);

  final PatientRequest _value;
  // ignore: unused_field
  final $Res Function(PatientRequest) _then;

  @override
  $Res call({
    Object? resultSize = freezed,
    Object? page = freezed,
    Object? gender = freezed,
    Object? nationality = freezed,
  }) {
    return _then(_value.copyWith(
      resultSize: resultSize == freezed
          ? _value.resultSize
          : resultSize // ignore: cast_nullable_to_non_nullable
              as int,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      nationality: nationality == freezed
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PatientRequestCopyWith<$Res>
    implements $PatientRequestCopyWith<$Res> {
  factory _$PatientRequestCopyWith(
          _PatientRequest value, $Res Function(_PatientRequest) then) =
      __$PatientRequestCopyWithImpl<$Res>;
  @override
  $Res call({int resultSize, int page, String gender, String nationality});
}

/// @nodoc
class __$PatientRequestCopyWithImpl<$Res>
    extends _$PatientRequestCopyWithImpl<$Res>
    implements _$PatientRequestCopyWith<$Res> {
  __$PatientRequestCopyWithImpl(
      _PatientRequest _value, $Res Function(_PatientRequest) _then)
      : super(_value, (v) => _then(v as _PatientRequest));

  @override
  _PatientRequest get _value => super._value as _PatientRequest;

  @override
  $Res call({
    Object? resultSize = freezed,
    Object? page = freezed,
    Object? gender = freezed,
    Object? nationality = freezed,
  }) {
    return _then(_PatientRequest(
      resultSize: resultSize == freezed
          ? _value.resultSize
          : resultSize // ignore: cast_nullable_to_non_nullable
              as int,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      nationality: nationality == freezed
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PatientRequest implements _PatientRequest {
  const _$_PatientRequest(
      {this.resultSize = 50,
      this.page = 0,
      this.gender = '',
      this.nationality = ''});

  factory _$_PatientRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_PatientRequestFromJson(json);

  @JsonKey(defaultValue: 50)
  @override
  final int resultSize;
  @JsonKey(defaultValue: 0)
  @override
  final int page;
  @JsonKey(defaultValue: '')
  @override
  final String gender;
  @JsonKey(defaultValue: '')
  @override
  final String nationality;

  @override
  String toString() {
    return 'PatientRequest(resultSize: $resultSize, page: $page, gender: $gender, nationality: $nationality)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PatientRequest &&
            (identical(other.resultSize, resultSize) ||
                const DeepCollectionEquality()
                    .equals(other.resultSize, resultSize)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.nationality, nationality) ||
                const DeepCollectionEquality()
                    .equals(other.nationality, nationality)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(resultSize) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(nationality);

  @JsonKey(ignore: true)
  @override
  _$PatientRequestCopyWith<_PatientRequest> get copyWith =>
      __$PatientRequestCopyWithImpl<_PatientRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PatientRequestToJson(this);
  }
}

abstract class _PatientRequest implements PatientRequest {
  const factory _PatientRequest(
      {int resultSize,
      int page,
      String gender,
      String nationality}) = _$_PatientRequest;

  factory _PatientRequest.fromJson(Map<String, dynamic> json) =
      _$_PatientRequest.fromJson;

  @override
  int get resultSize => throw _privateConstructorUsedError;
  @override
  int get page => throw _privateConstructorUsedError;
  @override
  String get gender => throw _privateConstructorUsedError;
  @override
  String get nationality => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PatientRequestCopyWith<_PatientRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
