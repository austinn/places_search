// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'matched_substrings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MatchedSubstrings _$MatchedSubstringsFromJson(Map<String, dynamic> json) {
  return _MatchedSubstrings.fromJson(json);
}

/// @nodoc
mixin _$MatchedSubstrings {
  int? get length => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchedSubstringsCopyWith<MatchedSubstrings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchedSubstringsCopyWith<$Res> {
  factory $MatchedSubstringsCopyWith(
          MatchedSubstrings value, $Res Function(MatchedSubstrings) then) =
      _$MatchedSubstringsCopyWithImpl<$Res, MatchedSubstrings>;
  @useResult
  $Res call({int? length, int? offset});
}

/// @nodoc
class _$MatchedSubstringsCopyWithImpl<$Res, $Val extends MatchedSubstrings>
    implements $MatchedSubstringsCopyWith<$Res> {
  _$MatchedSubstringsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = freezed,
    Object? offset = freezed,
  }) {
    return _then(_value.copyWith(
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MatchedSubstringsCopyWith<$Res>
    implements $MatchedSubstringsCopyWith<$Res> {
  factory _$$_MatchedSubstringsCopyWith(_$_MatchedSubstrings value,
          $Res Function(_$_MatchedSubstrings) then) =
      __$$_MatchedSubstringsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? length, int? offset});
}

/// @nodoc
class __$$_MatchedSubstringsCopyWithImpl<$Res>
    extends _$MatchedSubstringsCopyWithImpl<$Res, _$_MatchedSubstrings>
    implements _$$_MatchedSubstringsCopyWith<$Res> {
  __$$_MatchedSubstringsCopyWithImpl(
      _$_MatchedSubstrings _value, $Res Function(_$_MatchedSubstrings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = freezed,
    Object? offset = freezed,
  }) {
    return _then(_$_MatchedSubstrings(
      freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MatchedSubstrings implements _MatchedSubstrings {
  _$_MatchedSubstrings(this.length, this.offset);

  factory _$_MatchedSubstrings.fromJson(Map<String, dynamic> json) =>
      _$$_MatchedSubstringsFromJson(json);

  @override
  final int? length;
  @override
  final int? offset;

  @override
  String toString() {
    return 'MatchedSubstrings(length: $length, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MatchedSubstrings &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, length, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MatchedSubstringsCopyWith<_$_MatchedSubstrings> get copyWith =>
      __$$_MatchedSubstringsCopyWithImpl<_$_MatchedSubstrings>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatchedSubstringsToJson(
      this,
    );
  }
}

abstract class _MatchedSubstrings implements MatchedSubstrings {
  factory _MatchedSubstrings(final int? length, final int? offset) =
      _$_MatchedSubstrings;

  factory _MatchedSubstrings.fromJson(Map<String, dynamic> json) =
      _$_MatchedSubstrings.fromJson;

  @override
  int? get length;
  @override
  int? get offset;
  @override
  @JsonKey(ignore: true)
  _$$_MatchedSubstringsCopyWith<_$_MatchedSubstrings> get copyWith =>
      throw _privateConstructorUsedError;
}
