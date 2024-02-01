// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'special_day.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpecialDay _$SpecialDayFromJson(Map<String, dynamic> json) {
  return _SpecialDay.fromJson(json);
}

/// @nodoc
mixin _$SpecialDay {
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'exceptional_hours')
  bool? get exceptionalHours => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecialDayCopyWith<SpecialDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialDayCopyWith<$Res> {
  factory $SpecialDayCopyWith(
          SpecialDay value, $Res Function(SpecialDay) then) =
      _$SpecialDayCopyWithImpl<$Res, SpecialDay>;
  @useResult
  $Res call(
      {String? date,
      @JsonKey(name: 'exceptional_hours') bool? exceptionalHours});
}

/// @nodoc
class _$SpecialDayCopyWithImpl<$Res, $Val extends SpecialDay>
    implements $SpecialDayCopyWith<$Res> {
  _$SpecialDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? exceptionalHours = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      exceptionalHours: freezed == exceptionalHours
          ? _value.exceptionalHours
          : exceptionalHours // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpecialDayImplCopyWith<$Res>
    implements $SpecialDayCopyWith<$Res> {
  factory _$$SpecialDayImplCopyWith(
          _$SpecialDayImpl value, $Res Function(_$SpecialDayImpl) then) =
      __$$SpecialDayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? date,
      @JsonKey(name: 'exceptional_hours') bool? exceptionalHours});
}

/// @nodoc
class __$$SpecialDayImplCopyWithImpl<$Res>
    extends _$SpecialDayCopyWithImpl<$Res, _$SpecialDayImpl>
    implements _$$SpecialDayImplCopyWith<$Res> {
  __$$SpecialDayImplCopyWithImpl(
      _$SpecialDayImpl _value, $Res Function(_$SpecialDayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? exceptionalHours = freezed,
  }) {
    return _then(_$SpecialDayImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      exceptionalHours: freezed == exceptionalHours
          ? _value.exceptionalHours
          : exceptionalHours // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SpecialDayImpl implements _SpecialDay {
  const _$SpecialDayImpl(
      {this.date,
      @JsonKey(name: 'exceptional_hours') required this.exceptionalHours});

  factory _$SpecialDayImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecialDayImplFromJson(json);

  @override
  final String? date;
  @override
  @JsonKey(name: 'exceptional_hours')
  final bool? exceptionalHours;

  @override
  String toString() {
    return 'SpecialDay(date: $date, exceptionalHours: $exceptionalHours)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialDayImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.exceptionalHours, exceptionalHours) ||
                other.exceptionalHours == exceptionalHours));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, exceptionalHours);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecialDayImplCopyWith<_$SpecialDayImpl> get copyWith =>
      __$$SpecialDayImplCopyWithImpl<_$SpecialDayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecialDayImplToJson(
      this,
    );
  }
}

abstract class _SpecialDay implements SpecialDay {
  const factory _SpecialDay(
      {final String? date,
      @JsonKey(name: 'exceptional_hours')
      required final bool? exceptionalHours}) = _$SpecialDayImpl;

  factory _SpecialDay.fromJson(Map<String, dynamic> json) =
      _$SpecialDayImpl.fromJson;

  @override
  String? get date;
  @override
  @JsonKey(name: 'exceptional_hours')
  bool? get exceptionalHours;
  @override
  @JsonKey(ignore: true)
  _$$SpecialDayImplCopyWith<_$SpecialDayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}