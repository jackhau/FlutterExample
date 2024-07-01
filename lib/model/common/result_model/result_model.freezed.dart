// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResultModel<T> _$ResultModelFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _ResultModel<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ResultModel<T> {
  T get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultModelCopyWith<T, ResultModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultModelCopyWith<T, $Res> {
  factory $ResultModelCopyWith(
          ResultModel<T> value, $Res Function(ResultModel<T>) then) =
      _$ResultModelCopyWithImpl<T, $Res, ResultModel<T>>;
  @useResult
  $Res call({T result});
}

/// @nodoc
class _$ResultModelCopyWithImpl<T, $Res, $Val extends ResultModel<T>>
    implements $ResultModelCopyWith<T, $Res> {
  _$ResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultModelImplCopyWith<T, $Res>
    implements $ResultModelCopyWith<T, $Res> {
  factory _$$ResultModelImplCopyWith(_$ResultModelImpl<T> value,
          $Res Function(_$ResultModelImpl<T>) then) =
      __$$ResultModelImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T result});
}

/// @nodoc
class __$$ResultModelImplCopyWithImpl<T, $Res>
    extends _$ResultModelCopyWithImpl<T, $Res, _$ResultModelImpl<T>>
    implements _$$ResultModelImplCopyWith<T, $Res> {
  __$$ResultModelImplCopyWithImpl(
      _$ResultModelImpl<T> _value, $Res Function(_$ResultModelImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$ResultModelImpl<T>(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ResultModelImpl<T> extends _ResultModel<T> {
  _$ResultModelImpl({required this.result}) : super._();

  factory _$ResultModelImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ResultModelImplFromJson(json, fromJsonT);

  @override
  final T result;

  @override
  String toString() {
    return 'ResultModel<$T>(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultModelImpl<T> &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultModelImplCopyWith<T, _$ResultModelImpl<T>> get copyWith =>
      __$$ResultModelImplCopyWithImpl<T, _$ResultModelImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ResultModelImplToJson<T>(this, toJsonT);
  }
}

abstract class _ResultModel<T> extends ResultModel<T> {
  factory _ResultModel({required final T result}) = _$ResultModelImpl<T>;
  _ResultModel._() : super._();

  factory _ResultModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ResultModelImpl<T>.fromJson;

  @override
  T get result;
  @override
  @JsonKey(ignore: true)
  _$$ResultModelImplCopyWith<T, _$ResultModelImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
