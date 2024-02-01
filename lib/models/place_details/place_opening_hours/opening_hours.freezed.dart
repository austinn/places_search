// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'opening_hours.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OpeningHours _$OpeningHoursFromJson(Map<String, dynamic> json) {
  return _OpeningHours.fromJson(json);
}

/// @nodoc
mixin _$OpeningHours {
  @JsonKey(name: 'open_now')
  bool? get openNow => throw _privateConstructorUsedError;
  List<OpeningHoursPeriod>? get periods => throw _privateConstructorUsedError;
  @JsonKey(name: 'special_days')
  String? get type => throw _privateConstructorUsedError;
  List<String>? get types => throw _privateConstructorUsedError;
  @JsonKey(name: 'weekday_text')
  List<String>? get weekdayText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpeningHoursCopyWith<OpeningHours> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpeningHoursCopyWith<$Res> {
  factory $OpeningHoursCopyWith(
          OpeningHours value, $Res Function(OpeningHours) then) =
      _$OpeningHoursCopyWithImpl<$Res, OpeningHours>;
  @useResult
  $Res call(
      {@JsonKey(name: 'open_now') bool? openNow,
      List<OpeningHoursPeriod>? periods,
      @JsonKey(name: 'special_days') String? type,
      List<String>? types,
      @JsonKey(name: 'weekday_text') List<String>? weekdayText});
}

/// @nodoc
class _$OpeningHoursCopyWithImpl<$Res, $Val extends OpeningHours>
    implements $OpeningHoursCopyWith<$Res> {
  _$OpeningHoursCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openNow = freezed,
    Object? periods = freezed,
    Object? type = freezed,
    Object? types = freezed,
    Object? weekdayText = freezed,
  }) {
    return _then(_value.copyWith(
      openNow: freezed == openNow
          ? _value.openNow
          : openNow // ignore: cast_nullable_to_non_nullable
              as bool?,
      periods: freezed == periods
          ? _value.periods
          : periods // ignore: cast_nullable_to_non_nullable
              as List<OpeningHoursPeriod>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      types: freezed == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      weekdayText: freezed == weekdayText
          ? _value.weekdayText
          : weekdayText // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpeningHoursImplCopyWith<$Res>
    implements $OpeningHoursCopyWith<$Res> {
  factory _$$OpeningHoursImplCopyWith(
          _$OpeningHoursImpl value, $Res Function(_$OpeningHoursImpl) then) =
      __$$OpeningHoursImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'open_now') bool? openNow,
      List<OpeningHoursPeriod>? periods,
      @JsonKey(name: 'special_days') String? type,
      List<String>? types,
      @JsonKey(name: 'weekday_text') List<String>? weekdayText});
}

/// @nodoc
class __$$OpeningHoursImplCopyWithImpl<$Res>
    extends _$OpeningHoursCopyWithImpl<$Res, _$OpeningHoursImpl>
    implements _$$OpeningHoursImplCopyWith<$Res> {
  __$$OpeningHoursImplCopyWithImpl(
      _$OpeningHoursImpl _value, $Res Function(_$OpeningHoursImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openNow = freezed,
    Object? periods = freezed,
    Object? type = freezed,
    Object? types = freezed,
    Object? weekdayText = freezed,
  }) {
    return _then(_$OpeningHoursImpl(
      openNow: freezed == openNow
          ? _value.openNow
          : openNow // ignore: cast_nullable_to_non_nullable
              as bool?,
      periods: freezed == periods
          ? _value._periods
          : periods // ignore: cast_nullable_to_non_nullable
              as List<OpeningHoursPeriod>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      types: freezed == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      weekdayText: freezed == weekdayText
          ? _value._weekdayText
          : weekdayText // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$OpeningHoursImpl implements _OpeningHours {
  const _$OpeningHoursImpl(
      {@JsonKey(name: 'open_now') this.openNow,
      final List<OpeningHoursPeriod>? periods,
      @JsonKey(name: 'special_days') this.type,
      final List<String>? types,
      @JsonKey(name: 'weekday_text') final List<String>? weekdayText})
      : _periods = periods,
        _types = types,
        _weekdayText = weekdayText;

  factory _$OpeningHoursImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpeningHoursImplFromJson(json);

  @override
  @JsonKey(name: 'open_now')
  final bool? openNow;
  final List<OpeningHoursPeriod>? _periods;
  @override
  List<OpeningHoursPeriod>? get periods {
    final value = _periods;
    if (value == null) return null;
    if (_periods is EqualUnmodifiableListView) return _periods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'special_days')
  final String? type;
  final List<String>? _types;
  @override
  List<String>? get types {
    final value = _types;
    if (value == null) return null;
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _weekdayText;
  @override
  @JsonKey(name: 'weekday_text')
  List<String>? get weekdayText {
    final value = _weekdayText;
    if (value == null) return null;
    if (_weekdayText is EqualUnmodifiableListView) return _weekdayText;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OpeningHours(openNow: $openNow, periods: $periods, type: $type, types: $types, weekdayText: $weekdayText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpeningHoursImpl &&
            (identical(other.openNow, openNow) || other.openNow == openNow) &&
            const DeepCollectionEquality().equals(other._periods, _periods) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality()
                .equals(other._weekdayText, _weekdayText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      openNow,
      const DeepCollectionEquality().hash(_periods),
      type,
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(_weekdayText));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpeningHoursImplCopyWith<_$OpeningHoursImpl> get copyWith =>
      __$$OpeningHoursImplCopyWithImpl<_$OpeningHoursImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpeningHoursImplToJson(
      this,
    );
  }
}

abstract class _OpeningHours implements OpeningHours {
  const factory _OpeningHours(
          {@JsonKey(name: 'open_now') final bool? openNow,
          final List<OpeningHoursPeriod>? periods,
          @JsonKey(name: 'special_days') final String? type,
          final List<String>? types,
          @JsonKey(name: 'weekday_text') final List<String>? weekdayText}) =
      _$OpeningHoursImpl;

  factory _OpeningHours.fromJson(Map<String, dynamic> json) =
      _$OpeningHoursImpl.fromJson;

  @override
  @JsonKey(name: 'open_now')
  bool? get openNow;
  @override
  List<OpeningHoursPeriod>? get periods;
  @override
  @JsonKey(name: 'special_days')
  String? get type;
  @override
  List<String>? get types;
  @override
  @JsonKey(name: 'weekday_text')
  List<String>? get weekdayText;
  @override
  @JsonKey(ignore: true)
  _$$OpeningHoursImplCopyWith<_$OpeningHoursImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
