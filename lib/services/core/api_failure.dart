import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_failure.freezed.dart';

@freezed
class ApiFailure with _$ApiFailure {
  const factory ApiFailure.streamError() = _ServerError;
  const factory ApiFailure.noInternet() = _NoInternet;
}
