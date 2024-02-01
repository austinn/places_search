// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'places_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlacesResponse _$PlacesResponseFromJson(Map<String, dynamic> json) {
  return _PlacesResponse.fromJson(json);
}

/// @nodoc
mixin _$PlacesResponse {
  List<Prediction> get predictions => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlacesResponseCopyWith<PlacesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesResponseCopyWith<$Res> {
  factory $PlacesResponseCopyWith(
          PlacesResponse value, $Res Function(PlacesResponse) then) =
      _$PlacesResponseCopyWithImpl<$Res, PlacesResponse>;
  @useResult
  $Res call({List<Prediction> predictions, String? status});
}

/// @nodoc
class _$PlacesResponseCopyWithImpl<$Res, $Val extends PlacesResponse>
    implements $PlacesResponseCopyWith<$Res> {
  _$PlacesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? predictions = null,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      predictions: null == predictions
          ? _value.predictions
          : predictions // ignore: cast_nullable_to_non_nullable
              as List<Prediction>,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlacesResponseImplCopyWith<$Res>
    implements $PlacesResponseCopyWith<$Res> {
  factory _$$PlacesResponseImplCopyWith(_$PlacesResponseImpl value,
          $Res Function(_$PlacesResponseImpl) then) =
      __$$PlacesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Prediction> predictions, String? status});
}

/// @nodoc
class __$$PlacesResponseImplCopyWithImpl<$Res>
    extends _$PlacesResponseCopyWithImpl<$Res, _$PlacesResponseImpl>
    implements _$$PlacesResponseImplCopyWith<$Res> {
  __$$PlacesResponseImplCopyWithImpl(
      _$PlacesResponseImpl _value, $Res Function(_$PlacesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? predictions = null,
    Object? status = freezed,
  }) {
    return _then(_$PlacesResponseImpl(
      predictions: null == predictions
          ? _value._predictions
          : predictions // ignore: cast_nullable_to_non_nullable
              as List<Prediction>,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlacesResponseImpl implements _PlacesResponse {
  _$PlacesResponseImpl(
      {final List<Prediction> predictions = const [], this.status})
      : _predictions = predictions;

  factory _$PlacesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlacesResponseImplFromJson(json);

  final List<Prediction> _predictions;
  @override
  @JsonKey()
  List<Prediction> get predictions {
    if (_predictions is EqualUnmodifiableListView) return _predictions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_predictions);
  }

  @override
  final String? status;

  @override
  String toString() {
    return 'PlacesResponse(predictions: $predictions, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlacesResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._predictions, _predictions) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_predictions), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlacesResponseImplCopyWith<_$PlacesResponseImpl> get copyWith =>
      __$$PlacesResponseImplCopyWithImpl<_$PlacesResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlacesResponseImplToJson(
      this,
    );
  }
}

abstract class _PlacesResponse implements PlacesResponse {
  factory _PlacesResponse(
      {final List<Prediction> predictions,
      final String? status}) = _$PlacesResponseImpl;

  factory _PlacesResponse.fromJson(Map<String, dynamic> json) =
      _$PlacesResponseImpl.fromJson;

  @override
  List<Prediction> get predictions;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$PlacesResponseImplCopyWith<_$PlacesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
