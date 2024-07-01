
import 'package:fluttersample/constants/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_model.freezed.dart';
part 'error_model.g.dart';

@freezed
class ErrorModel with _$ErrorModel {
  const ErrorModel._();

  const factory ErrorModel({
    final int? statusCode,
    final String? message,
    final String? error,
  }) = _ErrorModel;

  factory ErrorModel.fromJson(Map<String, dynamic> json) => _$ErrorModelFromJson(json);

  bool get isForbidden => statusCode == HttpErrorCode.unauthorized || statusCode == HttpErrorCode.forbidden;
}
