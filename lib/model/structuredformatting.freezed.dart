// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'structuredformatting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StructuredFormatting _$StructuredFormattingFromJson(Map<String, dynamic> json) {
  return _StructuredFormatting.fromJson(json);
}

/// @nodoc
mixin _$StructuredFormatting {
  @JsonKey(name: 'main_Text')
  String? get mainText => throw _privateConstructorUsedError;
  @JsonKey(name: 'secondary_Text')
  String? get secondaryText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StructuredFormattingCopyWith<StructuredFormatting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StructuredFormattingCopyWith<$Res> {
  factory $StructuredFormattingCopyWith(StructuredFormatting value,
          $Res Function(StructuredFormatting) then) =
      _$StructuredFormattingCopyWithImpl<$Res, StructuredFormatting>;
  @useResult
  $Res call(
      {@JsonKey(name: 'main_Text') String? mainText,
      @JsonKey(name: 'secondary_Text') String? secondaryText});
}

/// @nodoc
class _$StructuredFormattingCopyWithImpl<$Res,
        $Val extends StructuredFormatting>
    implements $StructuredFormattingCopyWith<$Res> {
  _$StructuredFormattingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainText = freezed,
    Object? secondaryText = freezed,
  }) {
    return _then(_value.copyWith(
      mainText: freezed == mainText
          ? _value.mainText
          : mainText // ignore: cast_nullable_to_non_nullable
              as String?,
      secondaryText: freezed == secondaryText
          ? _value.secondaryText
          : secondaryText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StructuredFormattingCopyWith<$Res>
    implements $StructuredFormattingCopyWith<$Res> {
  factory _$$_StructuredFormattingCopyWith(_$_StructuredFormatting value,
          $Res Function(_$_StructuredFormatting) then) =
      __$$_StructuredFormattingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'main_Text') String? mainText,
      @JsonKey(name: 'secondary_Text') String? secondaryText});
}

/// @nodoc
class __$$_StructuredFormattingCopyWithImpl<$Res>
    extends _$StructuredFormattingCopyWithImpl<$Res, _$_StructuredFormatting>
    implements _$$_StructuredFormattingCopyWith<$Res> {
  __$$_StructuredFormattingCopyWithImpl(_$_StructuredFormatting _value,
      $Res Function(_$_StructuredFormatting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainText = freezed,
    Object? secondaryText = freezed,
  }) {
    return _then(_$_StructuredFormatting(
      mainText: freezed == mainText
          ? _value.mainText
          : mainText // ignore: cast_nullable_to_non_nullable
              as String?,
      secondaryText: freezed == secondaryText
          ? _value.secondaryText
          : secondaryText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StructuredFormatting implements _StructuredFormatting {
  _$_StructuredFormatting(
      {@JsonKey(name: 'main_Text') this.mainText,
      @JsonKey(name: 'secondary_Text') this.secondaryText});

  factory _$_StructuredFormatting.fromJson(Map<String, dynamic> json) =>
      _$$_StructuredFormattingFromJson(json);

  @override
  @JsonKey(name: 'main_Text')
  final String? mainText;
  @override
  @JsonKey(name: 'secondary_Text')
  final String? secondaryText;

  @override
  String toString() {
    return 'StructuredFormatting(mainText: $mainText, secondaryText: $secondaryText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StructuredFormatting &&
            (identical(other.mainText, mainText) ||
                other.mainText == mainText) &&
            (identical(other.secondaryText, secondaryText) ||
                other.secondaryText == secondaryText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mainText, secondaryText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StructuredFormattingCopyWith<_$_StructuredFormatting> get copyWith =>
      __$$_StructuredFormattingCopyWithImpl<_$_StructuredFormatting>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StructuredFormattingToJson(
      this,
    );
  }
}

abstract class _StructuredFormatting implements StructuredFormatting {
  factory _StructuredFormatting(
          {@JsonKey(name: 'main_Text') final String? mainText,
          @JsonKey(name: 'secondary_Text') final String? secondaryText}) =
      _$_StructuredFormatting;

  factory _StructuredFormatting.fromJson(Map<String, dynamic> json) =
      _$_StructuredFormatting.fromJson;

  @override
  @JsonKey(name: 'main_Text')
  String? get mainText;
  @override
  @JsonKey(name: 'secondary_Text')
  String? get secondaryText;
  @override
  @JsonKey(ignore: true)
  _$$_StructuredFormattingCopyWith<_$_StructuredFormatting> get copyWith =>
      throw _privateConstructorUsedError;
}
