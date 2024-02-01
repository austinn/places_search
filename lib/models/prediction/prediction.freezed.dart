// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prediction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Prediction _$PredictionFromJson(Map<String, dynamic> json) {
  return _Prediction.fromJson(json);
}

/// @nodoc
mixin _$Prediction {
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'matched_substrings')
  List<MatchedSubstring> get matchedSubstrings =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'structured_formatting')
  StructuredFormatting get structuredFormatting =>
      throw _privateConstructorUsedError;
  List<Terms> get terms => throw _privateConstructorUsedError;
  List<String> get types => throw _privateConstructorUsedError;
  @JsonKey(name: 'distance_meters')
  String? get distanceMeters => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_id')
  String? get placeId =>
      throw _privateConstructorUsedError; // Added after the fact to get latlng without asking for place details separately
  String? get lat => throw _privateConstructorUsedError;
  String? get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PredictionCopyWith<Prediction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PredictionCopyWith<$Res> {
  factory $PredictionCopyWith(
          Prediction value, $Res Function(Prediction) then) =
      _$PredictionCopyWithImpl<$Res, Prediction>;
  @useResult
  $Res call(
      {String description,
      @JsonKey(name: 'matched_substrings')
      List<MatchedSubstring> matchedSubstrings,
      @JsonKey(name: 'structured_formatting')
      StructuredFormatting structuredFormatting,
      List<Terms> terms,
      List<String> types,
      @JsonKey(name: 'distance_meters') String? distanceMeters,
      @JsonKey(name: 'place_id') String? placeId,
      String? lat,
      String? lng});

  $StructuredFormattingCopyWith<$Res> get structuredFormatting;
}

/// @nodoc
class _$PredictionCopyWithImpl<$Res, $Val extends Prediction>
    implements $PredictionCopyWith<$Res> {
  _$PredictionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? matchedSubstrings = null,
    Object? structuredFormatting = null,
    Object? terms = null,
    Object? types = null,
    Object? distanceMeters = freezed,
    Object? placeId = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      matchedSubstrings: null == matchedSubstrings
          ? _value.matchedSubstrings
          : matchedSubstrings // ignore: cast_nullable_to_non_nullable
              as List<MatchedSubstring>,
      structuredFormatting: null == structuredFormatting
          ? _value.structuredFormatting
          : structuredFormatting // ignore: cast_nullable_to_non_nullable
              as StructuredFormatting,
      terms: null == terms
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as List<Terms>,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
      distanceMeters: freezed == distanceMeters
          ? _value.distanceMeters
          : distanceMeters // ignore: cast_nullable_to_non_nullable
              as String?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StructuredFormattingCopyWith<$Res> get structuredFormatting {
    return $StructuredFormattingCopyWith<$Res>(_value.structuredFormatting,
        (value) {
      return _then(_value.copyWith(structuredFormatting: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PredictionImplCopyWith<$Res>
    implements $PredictionCopyWith<$Res> {
  factory _$$PredictionImplCopyWith(
          _$PredictionImpl value, $Res Function(_$PredictionImpl) then) =
      __$$PredictionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String description,
      @JsonKey(name: 'matched_substrings')
      List<MatchedSubstring> matchedSubstrings,
      @JsonKey(name: 'structured_formatting')
      StructuredFormatting structuredFormatting,
      List<Terms> terms,
      List<String> types,
      @JsonKey(name: 'distance_meters') String? distanceMeters,
      @JsonKey(name: 'place_id') String? placeId,
      String? lat,
      String? lng});

  @override
  $StructuredFormattingCopyWith<$Res> get structuredFormatting;
}

/// @nodoc
class __$$PredictionImplCopyWithImpl<$Res>
    extends _$PredictionCopyWithImpl<$Res, _$PredictionImpl>
    implements _$$PredictionImplCopyWith<$Res> {
  __$$PredictionImplCopyWithImpl(
      _$PredictionImpl _value, $Res Function(_$PredictionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? matchedSubstrings = null,
    Object? structuredFormatting = null,
    Object? terms = null,
    Object? types = null,
    Object? distanceMeters = freezed,
    Object? placeId = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_$PredictionImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      matchedSubstrings: null == matchedSubstrings
          ? _value._matchedSubstrings
          : matchedSubstrings // ignore: cast_nullable_to_non_nullable
              as List<MatchedSubstring>,
      structuredFormatting: null == structuredFormatting
          ? _value.structuredFormatting
          : structuredFormatting // ignore: cast_nullable_to_non_nullable
              as StructuredFormatting,
      terms: null == terms
          ? _value._terms
          : terms // ignore: cast_nullable_to_non_nullable
              as List<Terms>,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
      distanceMeters: freezed == distanceMeters
          ? _value.distanceMeters
          : distanceMeters // ignore: cast_nullable_to_non_nullable
              as String?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PredictionImpl implements _Prediction {
  _$PredictionImpl(
      {required this.description,
      @JsonKey(name: 'matched_substrings')
      required final List<MatchedSubstring> matchedSubstrings,
      @JsonKey(name: 'structured_formatting')
      required this.structuredFormatting,
      required final List<Terms> terms,
      final List<String> types = const [],
      @JsonKey(name: 'distance_meters') this.distanceMeters,
      @JsonKey(name: 'place_id') this.placeId,
      this.lat,
      this.lng})
      : _matchedSubstrings = matchedSubstrings,
        _terms = terms,
        _types = types;

  factory _$PredictionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PredictionImplFromJson(json);

  @override
  final String description;
  final List<MatchedSubstring> _matchedSubstrings;
  @override
  @JsonKey(name: 'matched_substrings')
  List<MatchedSubstring> get matchedSubstrings {
    if (_matchedSubstrings is EqualUnmodifiableListView)
      return _matchedSubstrings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_matchedSubstrings);
  }

  @override
  @JsonKey(name: 'structured_formatting')
  final StructuredFormatting structuredFormatting;
  final List<Terms> _terms;
  @override
  List<Terms> get terms {
    if (_terms is EqualUnmodifiableListView) return _terms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_terms);
  }

  final List<String> _types;
  @override
  @JsonKey()
  List<String> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  @JsonKey(name: 'distance_meters')
  final String? distanceMeters;
  @override
  @JsonKey(name: 'place_id')
  final String? placeId;
// Added after the fact to get latlng without asking for place details separately
  @override
  final String? lat;
  @override
  final String? lng;

  @override
  String toString() {
    return 'Prediction(description: $description, matchedSubstrings: $matchedSubstrings, structuredFormatting: $structuredFormatting, terms: $terms, types: $types, distanceMeters: $distanceMeters, placeId: $placeId, lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PredictionImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._matchedSubstrings, _matchedSubstrings) &&
            (identical(other.structuredFormatting, structuredFormatting) ||
                other.structuredFormatting == structuredFormatting) &&
            const DeepCollectionEquality().equals(other._terms, _terms) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.distanceMeters, distanceMeters) ||
                other.distanceMeters == distanceMeters) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      description,
      const DeepCollectionEquality().hash(_matchedSubstrings),
      structuredFormatting,
      const DeepCollectionEquality().hash(_terms),
      const DeepCollectionEquality().hash(_types),
      distanceMeters,
      placeId,
      lat,
      lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PredictionImplCopyWith<_$PredictionImpl> get copyWith =>
      __$$PredictionImplCopyWithImpl<_$PredictionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PredictionImplToJson(
      this,
    );
  }
}

abstract class _Prediction implements Prediction {
  factory _Prediction(
      {required final String description,
      @JsonKey(name: 'matched_substrings')
      required final List<MatchedSubstring> matchedSubstrings,
      @JsonKey(name: 'structured_formatting')
      required final StructuredFormatting structuredFormatting,
      required final List<Terms> terms,
      final List<String> types,
      @JsonKey(name: 'distance_meters') final String? distanceMeters,
      @JsonKey(name: 'place_id') final String? placeId,
      final String? lat,
      final String? lng}) = _$PredictionImpl;

  factory _Prediction.fromJson(Map<String, dynamic> json) =
      _$PredictionImpl.fromJson;

  @override
  String get description;
  @override
  @JsonKey(name: 'matched_substrings')
  List<MatchedSubstring> get matchedSubstrings;
  @override
  @JsonKey(name: 'structured_formatting')
  StructuredFormatting get structuredFormatting;
  @override
  List<Terms> get terms;
  @override
  List<String> get types;
  @override
  @JsonKey(name: 'distance_meters')
  String? get distanceMeters;
  @override
  @JsonKey(name: 'place_id')
  String? get placeId;
  @override // Added after the fact to get latlng without asking for place details separately
  String? get lat;
  @override
  String? get lng;
  @override
  @JsonKey(ignore: true)
  _$$PredictionImplCopyWith<_$PredictionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
