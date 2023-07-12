// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'terms.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Terms _$TermsFromJson(Map<String, dynamic> json) {
  return _Terms.fromJson(json);
}

/// @nodoc
mixin _$Terms {
  int? get offset => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TermsCopyWith<Terms> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsCopyWith<$Res> {
  factory $TermsCopyWith(Terms value, $Res Function(Terms) then) =
      _$TermsCopyWithImpl<$Res, Terms>;
  @useResult
  $Res call({int? offset, String? value});
}

/// @nodoc
class _$TermsCopyWithImpl<$Res, $Val extends Terms>
    implements $TermsCopyWith<$Res> {
  _$TermsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TermsCopyWith<$Res> implements $TermsCopyWith<$Res> {
  factory _$$_TermsCopyWith(_$_Terms value, $Res Function(_$_Terms) then) =
      __$$_TermsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? offset, String? value});
}

/// @nodoc
class __$$_TermsCopyWithImpl<$Res> extends _$TermsCopyWithImpl<$Res, _$_Terms>
    implements _$$_TermsCopyWith<$Res> {
  __$$_TermsCopyWithImpl(_$_Terms _value, $Res Function(_$_Terms) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_Terms(
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Terms implements _Terms {
  _$_Terms({this.offset, this.value});

  factory _$_Terms.fromJson(Map<String, dynamic> json) =>
      _$$_TermsFromJson(json);

  @override
  final int? offset;
  @override
  final String? value;

  @override
  String toString() {
    return 'Terms(offset: $offset, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Terms &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, offset, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TermsCopyWith<_$_Terms> get copyWith =>
      __$$_TermsCopyWithImpl<_$_Terms>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TermsToJson(
      this,
    );
  }
}

abstract class _Terms implements Terms {
  factory _Terms({final int? offset, final String? value}) = _$_Terms;

  factory _Terms.fromJson(Map<String, dynamic> json) = _$_Terms.fromJson;

  @override
  int? get offset;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_TermsCopyWith<_$_Terms> get copyWith =>
      throw _privateConstructorUsedError;
}
