
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_model.freezed.dart';
part 'result_model.g.dart';

@Freezed(genericArgumentFactories: true)
class ResultModel<T> with _$ResultModel<T> {
  const ResultModel._();

  factory ResultModel({
    required T result,
  }) = _ResultModel;

  factory ResultModel.fromJson(
      Map<String, dynamic> json,
      T Function(Object?) fromJsonT, // Explicitly specify Map type
      )=>
      _$ResultModelFromJson<T>(json, fromJsonT);
}