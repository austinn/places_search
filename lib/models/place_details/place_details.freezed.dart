// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceDetails _$PlaceDetailsFromJson(Map<String, dynamic> json) {
  return _PlaceDetails.fromJson(json);
}

/// @nodoc
mixin _$PlaceDetails {
//
  List<String> get htmlAttributions => throw _privateConstructorUsedError;
  Place get result => throw _privateConstructorUsedError;
  PlaceDetailsStatus get status => throw _privateConstructorUsedError;
  List<String> get infoMessages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceDetailsCopyWith<PlaceDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceDetailsCopyWith<$Res> {
  factory $PlaceDetailsCopyWith(
          PlaceDetails value, $Res Function(PlaceDetails) then) =
      _$PlaceDetailsCopyWithImpl<$Res, PlaceDetails>;
  @useResult
  $Res call(
      {List<String> htmlAttributions,
      Place result,
      PlaceDetailsStatus status,
      List<String> infoMessages});

  $PlaceCopyWith<$Res> get result;
}

/// @nodoc
class _$PlaceDetailsCopyWithImpl<$Res, $Val extends PlaceDetails>
    implements $PlaceDetailsCopyWith<$Res> {
  _$PlaceDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? htmlAttributions = null,
    Object? result = null,
    Object? status = null,
    Object? infoMessages = null,
  }) {
    return _then(_value.copyWith(
      htmlAttributions: null == htmlAttributions
          ? _value.htmlAttributions
          : htmlAttributions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Place,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PlaceDetailsStatus,
      infoMessages: null == infoMessages
          ? _value.infoMessages
          : infoMessages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceCopyWith<$Res> get result {
    return $PlaceCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlaceDetailsImplCopyWith<$Res>
    implements $PlaceDetailsCopyWith<$Res> {
  factory _$$PlaceDetailsImplCopyWith(
          _$PlaceDetailsImpl value, $Res Function(_$PlaceDetailsImpl) then) =
      __$$PlaceDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> htmlAttributions,
      Place result,
      PlaceDetailsStatus status,
      List<String> infoMessages});

  @override
  $PlaceCopyWith<$Res> get result;
}

/// @nodoc
class __$$PlaceDetailsImplCopyWithImpl<$Res>
    extends _$PlaceDetailsCopyWithImpl<$Res, _$PlaceDetailsImpl>
    implements _$$PlaceDetailsImplCopyWith<$Res> {
  __$$PlaceDetailsImplCopyWithImpl(
      _$PlaceDetailsImpl _value, $Res Function(_$PlaceDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? htmlAttributions = null,
    Object? result = null,
    Object? status = null,
    Object? infoMessages = null,
  }) {
    return _then(_$PlaceDetailsImpl(
      htmlAttributions: null == htmlAttributions
          ? _value._htmlAttributions
          : htmlAttributions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Place,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PlaceDetailsStatus,
      infoMessages: null == infoMessages
          ? _value._infoMessages
          : infoMessages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceDetailsImpl implements _PlaceDetails {
  const _$PlaceDetailsImpl(
      {required final List<String> htmlAttributions,
      required this.result,
      required this.status,
      final List<String> infoMessages = const []})
      : _htmlAttributions = htmlAttributions,
        _infoMessages = infoMessages;

  factory _$PlaceDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceDetailsImplFromJson(json);

//
  final List<String> _htmlAttributions;
//
  @override
  List<String> get htmlAttributions {
    if (_htmlAttributions is EqualUnmodifiableListView)
      return _htmlAttributions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_htmlAttributions);
  }

  @override
  final Place result;
  @override
  final PlaceDetailsStatus status;
  final List<String> _infoMessages;
  @override
  @JsonKey()
  List<String> get infoMessages {
    if (_infoMessages is EqualUnmodifiableListView) return _infoMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_infoMessages);
  }

  @override
  String toString() {
    return 'PlaceDetails(htmlAttributions: $htmlAttributions, result: $result, status: $status, infoMessages: $infoMessages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceDetailsImpl &&
            const DeepCollectionEquality()
                .equals(other._htmlAttributions, _htmlAttributions) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._infoMessages, _infoMessages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_htmlAttributions),
      result,
      status,
      const DeepCollectionEquality().hash(_infoMessages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceDetailsImplCopyWith<_$PlaceDetailsImpl> get copyWith =>
      __$$PlaceDetailsImplCopyWithImpl<_$PlaceDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceDetailsImplToJson(
      this,
    );
  }
}

abstract class _PlaceDetails implements PlaceDetails {
  const factory _PlaceDetails(
      {required final List<String> htmlAttributions,
      required final Place result,
      required final PlaceDetailsStatus status,
      final List<String> infoMessages}) = _$PlaceDetailsImpl;

  factory _PlaceDetails.fromJson(Map<String, dynamic> json) =
      _$PlaceDetailsImpl.fromJson;

  @override //
  List<String> get htmlAttributions;
  @override
  Place get result;
  @override
  PlaceDetailsStatus get status;
  @override
  List<String> get infoMessages;
  @override
  @JsonKey(ignore: true)
  _$$PlaceDetailsImplCopyWith<_$PlaceDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
