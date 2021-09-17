import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_failure.freezed.dart';

@freezed
class RequestFailure with _$RequestFailure {
  factory RequestFailure.networkError() = _NetworkFailure;
  factory RequestFailure.serverError() = _ServerError;
  factory RequestFailure.emptyResult() = _EmptyResult;
}
