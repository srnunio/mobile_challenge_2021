import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_filter.freezed.dart';

part 'request_filter.g.dart';

@freezed
class RequestFilter with _$RequestFilter {
  const factory RequestFilter(
      {@Default(50) int resultSize,
      @Default('') String genre,
      @Default('') String nationality}) = _RequestFilter;

  factory RequestFilter.fromJson(Map<String, dynamic> json) =>
      _$RequestFilterFromJson(json);
}
