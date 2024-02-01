// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'opening_hours_period.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OpeningHoursPeriod _$OpeningHoursPeriodFromJson(Map<String, dynamic> json) {
  return _OpeningHoursPeriod.fromJson(json);
}

/// @nodoc
mixin _$OpeningHoursPeriod {
  OpeningHoursDetails get open => throw _privateConstructorUsedError;
  OpeningHoursDetails? get close => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
   ignore: true)
  $OpeningHoursPeriodCopyWith<OpeningHoursPeriod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpeningHoursPeriodCopyWith<$Res> {
  factory $OpeningHoursPeriodCopyWith(
          OpeningHoursPeriod value, $Res Function(OpeningHoursPeriod) then) =
      _$OpeningHoursPeriodCopyWithImpl<$Res, OpeningHoursPeriod>;
  @useResult
  $Res call({OpeningHoursDetails open, OpeningHoursDetails? close});

  $OpeningHoursDetailsCopyWith<$Res> get open;
  $OpeningHoursDetailsCopyWith<$Res>? get close;
}

/// @nodoc
class _$OpeningHoursPeriodCopyWithImpl<$Res, $Val extends OpeningHoursPeriod>
    implements $OpeningHoursPeriodCopyWith<$Res> {
  _$OpeningHoursPeriodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? open = null,
    Object? close = freezed,
  }) {
    return _then(_value.copyWith(
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as OpeningHoursDetails,
      close: freezed == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as OpeningHoursDetails?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OpeningHoursDetailsCopyWith<$Res> get open {
    return $OpeningHoursDetailsCopyWith<$Res>(_value.open, (value) {
      return _then(_value.copyWith(open: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OpeningHoursDetailsCopyWith<$Res>? get close {
    if (_value.close == null) {
      return null;
    }

    return $OpeningHoursDetailsCopyWith<$Res>(_value.close!, (value) {
      return _then(_value.copyWith(close: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OpeningHoursPeriodImplCopyWith<$Res>
    implements $OpeningHoursPeriodCopyWith<$Res> {
  factory _$$OpeningHoursPeriodImplCopyWith(_$OpeningHoursPeriodImpl value,
          $Res Function(_$OpeningHoursPeriodImpl) then) =
      __$$OpeningHoursPeriodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OpeningHoursDetails open, OpeningHoursDetails? close});

  @override
  $OpeningHoursDetailsCopyWith<$Res> get open;
  @override
  $OpeningHoursDetailsCopyWith<$Res>? get close;
}

/// @nodoc
class __$$OpeningHoursPeriodImplCopyWithImpl<$Res>
    extends _$OpeningHoursPeriodCopyWithImpl<$Res, _$OpeningHoursPeriodImpl>
    implements _$$OpeningHoursPeriodImplCopyWith<$Res> {
  __$$OpeningHoursPeriodImplCopyWithImpl(_$OpeningHoursPeriodImpl _value,
      $Res Function(_$OpeningHoursPeriodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? open = null,
    Object? close = freezed,
  }) {
    return _then(_$OpeningHoursPeriodImpl(
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as OpeningHoursDetails,
      close: freezed == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as OpeningHoursDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpeningHoursPeriodImpl implements _OpeningHoursPeriod {
  const _$OpeningHoursPeriodImpl({required this.open, this.close});

  factory _$OpeningHoursPeriodImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpeningHoursPeriodImplFromJson(json);

  @override
  final OpeningHoursDetails open;
  @override
  final OpeningHoursDetails? close;

  @override
  String toString() {
    return 'OpeningHoursPeriod(open: $open, close: $close)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpeningHoursPeriodImpl &&
            (identical(other.open, open) || other.open == open) &&
            (identical(other.close, close) || other.close == close));
  }

   ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, open, close);

   ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpeningHoursPeriodImplCopyWith<_$OpeningHoursPeriodImpl> get copyWith =>
      __$$OpeningHoursPeriodImplCopyWithImpl<_$OpeningHoursPeriodImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpeningHoursPeriodImplToJson(
      this,
    );
  }
}

abstract class _OpeningHoursPeriod implements OpeningHoursPeriod {
  const factory _OpeningHoursPeriod(
      {required final OpeningHoursDetails open,
      final OpeningHoursDetails? close}) = _$OpeningHoursPeriodImpl;

  factory _OpeningHoursPeriod.fromJson(Map<String, dynamic> json) =
      _$OpeningHoursPeriodImpl.fromJson;

  @override
  OpeningHoursDetails get open;
  @override
  OpeningHoursDetails? get close;
  @override
   ignore: true)
  _$$OpeningHoursPeriodImplCopyWith<_$OpeningHoursPeriodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
