// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestFilter _$RequestFilterFromJson(Map<String, dynamic> json) {
  return _RequestFilter.fromJson(json);
}

/// @nodoc
class _$RequestFilterTearOff {
  const _$RequestFilterTearOff();

  _RequestFilter call(
      {int resultSize = 50, String genre = '', String nationality = ''}) {
    return _RequestFilter(
      resultSize: resultSize,
      genre: genre,
      nationality: nationality,
    );
  }

  RequestFilter fromJson(Map<String, Object> json) {
    return RequestFilter.fromJson(json);
  }
}

/// @nodoc
const $RequestFilter = _$RequestFilterTearOff();

/// @nodoc
mixin _$RequestFilter {
  int get resultSize => throw _privateConstructorUsedError;
  String get genre => throw _privateConstructorUsedError;
  String get nationality => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestFilterCopyWith<RequestFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestFilterCopyWith<$Res> {
  factory $RequestFilterCopyWith(
          RequestFilter value, $Res Function(RequestFilter) then) =
      _$RequestFilterCopyWithImpl<$Res>;
  $Res call({int resultSize, String genre, String nationality});
}

/// @nodoc
class _$RequestFilterCopyWithImpl<$Res>
    implements $RequestFilterCopyWith<$Res> {
  _$RequestFilterCopyWithImpl(this._value, this._then);

  final RequestFilter _value;
  // ignore: unused_field
  final $Res Function(RequestFilter) _then;

  @override
  $Res call({
    Object? resultSize = freezed,
    Object? genre = freezed,
    Object? nationality = freezed,
  }) {
    return _then(_value.copyWith(
      resultSize: resultSize == freezed
          ? _value.resultSize
          : resultSize // ignore: cast_nullable_to_non_nullable
              as int,
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      nationality: nationality == freezed
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RequestFilterCopyWith<$Res>
    implements $RequestFilterCopyWith<$Res> {
  factory _$RequestFilterCopyWith(
          _RequestFilter value, $Res Function(_RequestFilter) then) =
      __$RequestFilterCopyWithImpl<$Res>;
  @override
  $Res call({int resultSize, String genre, String nationality});
}

/// @nodoc
class __$RequestFilterCopyWithImpl<$Res>
    extends _$RequestFilterCopyWithImpl<$Res>
    implements _$RequestFilterCopyWith<$Res> {
  __$RequestFilterCopyWithImpl(
      _RequestFilter _value, $Res Function(_RequestFilter) _then)
      : super(_value, (v) => _then(v as _RequestFilter));

  @override
  _RequestFilter get _value => super._value as _RequestFilter;

  @override
  $Res call({
    Object? resultSize = freezed,
    Object? genre = freezed,
    Object? nationality = freezed,
  }) {
    return _then(_RequestFilter(
      resultSize: resultSize == freezed
          ? _value.resultSize
          : resultSize // ignore: cast_nullable_to_non_nullable
              as int,
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
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
class _$_RequestFilter implements _RequestFilter {
  const _$_RequestFilter(
      {this.resultSize = 50, this.genre = '', this.nationality = ''});

  factory _$_RequestFilter.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestFilterFromJson(json);

  @JsonKey(defaultValue: 50)
  @override
  final int resultSize;
  @JsonKey(defaultValue: '')
  @override
  final String genre;
  @JsonKey(defaultValue: '')
  @override
  final String nationality;

  @override
  String toString() {
    return 'RequestFilter(resultSize: $resultSize, genre: $genre, nationality: $nationality)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestFilter &&
            (identical(other.resultSize, resultSize) ||
                const DeepCollectionEquality()
                    .equals(other.resultSize, resultSize)) &&
            (identical(other.genre, genre) ||
                const DeepCollectionEquality().equals(other.genre, genre)) &&
            (identical(other.nationality, nationality) ||
                const DeepCollectionEquality()
                    .equals(other.nationality, nationality)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(resultSize) ^
      const DeepCollectionEquality().hash(genre) ^
      const DeepCollectionEquality().hash(nationality);

  @JsonKey(ignore: true)
  @override
  _$RequestFilterCopyWith<_RequestFilter> get copyWith =>
      __$RequestFilterCopyWithImpl<_RequestFilter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestFilterToJson(this);
  }
}

abstract class _RequestFilter implements RequestFilter {
  const factory _RequestFilter(
      {int resultSize, String genre, String nationality}) = _$_RequestFilter;

  factory _RequestFilter.fromJson(Map<String, dynamic> json) =
      _$_RequestFilter.fromJson;

  @override
  int get resultSize => throw _privateConstructorUsedError;
  @override
  String get genre => throw _privateConstructorUsedError;
  @override
  String get nationality => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestFilterCopyWith<_RequestFilter> get copyWith =>
      throw _privateConstructorUsedError;
}
