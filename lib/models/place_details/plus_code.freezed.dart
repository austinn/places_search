// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plus_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlusCode _$PlusCodeFromJson(Map<String, dynamic> json) {
  return _PlusCode.fromJson(json);
}

/// @nodoc
mixin _$PlusCode {
  @JsonKey(name: 'global_code')
  String get globalCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'compound_code')
  String? get compoundCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlusCodeCopyWith<PlusCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlusCodeCopyWith<$Res> {
  factory $PlusCodeCopyWith(PlusCode value, $Res Function(PlusCode) then) =
      _$PlusCodeCopyWithImpl<$Res, PlusCode>;
  @useResult
  $Res call(
      {@JsonKey(name: 'global_code') String globalCode,
      @JsonKey(name: 'compound_code') String? compoundCode});
}

/// @nodoc
class _$PlusCodeCopyWithImpl<$Res, $Val extends PlusCode>
    implements $PlusCodeCopyWith<$Res> {
  _$PlusCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? globalCode = null,
    Object? compoundCode = freezed,
  }) {
    return _then(_value.copyWith(
      globalCode: null == globalCode
          ? _value.globalCode
          : globalCode // ignore: cast_nullable_to_non_nullable
              as String,
      compoundCode: freezed == compoundCode
          ? _value.compoundCode
          : compoundCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlusCodeImplCopyWith<$Res>
    implements $PlusCodeCopyWith<$Res> {
  factory _$$PlusCodeImplCopyWith(
          _$PlusCodeImpl value, $Res Function(_$PlusCodeImpl) then) =
      __$$PlusCodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'global_code') String globalCode,
      @JsonKey(name: 'compound_code') String? compoundCode});
}

/// @nodoc
class __$$PlusCodeImplCopyWithImpl<$Res>
    extends _$PlusCodeCopyWithImpl<$Res, _$PlusCodeImpl>
    implements _$$PlusCodeImplCopyWith<$Res> {
  __$$PlusCodeImplCopyWithImpl(
      _$PlusCodeImpl _value, $Res Function(_$PlusCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? globalCode = null,
    Object? compoundCode = freezed,
  }) {
    return _then(_$PlusCodeImpl(
      globalCode: null == globalCode
          ? _value.globalCode
          : globalCode // ignore: cast_nullable_to_non_nullable
              as String,
      compoundCode: freezed == compoundCode
          ? _value.compoundCode
          : compoundCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PlusCodeImpl implements _PlusCode {
  const _$PlusCodeImpl(
      {@JsonKey(name: 'global_code') required this.globalCode,
      @JsonKey(name: 'compound_code') this.compoundCode});

  factory _$PlusCodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlusCodeImplFromJson(json);

  @override
  @JsonKey(name: 'global_code')
  final String globalCode;
  @override
  @JsonKey(name: 'compound_code')
  final String? compoundCode;

  @override
  String toString() {
    return 'PlusCode(globalCode: $globalCode, compoundCode: $compoundCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlusCodeImpl &&
            (identical(other.globalCode, globalCode) ||
                other.globalCode == globalCode) &&
            (identical(other.compoundCode, compoundCode) ||
                other.compoundCode == compoundCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, globalCode, compoundCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlusCodeImplCopyWith<_$PlusCodeImpl> get copyWith =>
      __$$PlusCodeImplCopyWithImpl<_$PlusCodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlusCodeImplToJson(
      this,
    );
  }
}

abstract class _PlusCode implements PlusCode {
  const factory _PlusCode(
          {@JsonKey(name: 'global_code') required final String globalCode,
          @JsonKey(name: 'compound_code') final String? compoundCode}) =
      _$PlusCodeImpl;

  factory _PlusCode.fromJson(Map<String, dynamic> json) =
      _$PlusCodeImpl.fromJson;

  @override
  @JsonKey(name: 'global_code')
  String get globalCode;
  @override
  @JsonKey(name: 'compound_code')
  String? get compoundCode;
  @override
  @JsonKey(ignore: true)
  _$$PlusCodeImplCopyWith<_$PlusCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
