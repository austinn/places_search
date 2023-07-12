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
  String? get description => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'matched_substrings')
  List<MatchedSubstrings> get matchedSubstrings =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'place_id')
  String? get placeId => throw _privateConstructorUsedError;
  String? get reference => throw _privateConstructorUsedError;
  @JsonKey(name: 'structured_Formatting')
  StructuredFormatting? get structuredFormatting =>
      throw _privateConstructorUsedError;
  List<Terms> get terms => throw _privateConstructorUsedError;
  List<String> get types => throw _privateConstructorUsedError;
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
      {String? description,
      String? id,
      @JsonKey(name: 'matched_substrings')
      List<MatchedSubstrings> matchedSubstrings,
      @JsonKey(name: 'place_id') String? placeId,
      String? reference,
      @JsonKey(name: 'structured_Formatting')
      StructuredFormatting? structuredFormatting,
      List<Terms> terms,
      List<String> types,
      String? lat,
      String? lng});

  $StructuredFormattingCopyWith<$Res>? get structuredFormatting;
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
    Object? description = freezed,
    Object? id = freezed,
    Object? matchedSubstrings = null,
    Object? placeId = freezed,
    Object? reference = freezed,
    Object? structuredFormatting = freezed,
    Object? terms = null,
    Object? types = null,
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      matchedSubstrings: null == matchedSubstrings
          ? _value.matchedSubstrings
          : matchedSubstrings // ignore: cast_nullable_to_non_nullable
              as List<MatchedSubstrings>,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      structuredFormatting: freezed == structuredFormatting
          ? _value.structuredFormatting
          : structuredFormatting // ignore: cast_nullable_to_non_nullable
              as StructuredFormatting?,
      terms: null == terms
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as List<Terms>,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
  $StructuredFormattingCopyWith<$Res>? get structuredFormatting {
    if (_value.structuredFormatting == null) {
      return null;
    }

    return $StructuredFormattingCopyWith<$Res>(_value.structuredFormatting!,
        (value) {
      return _then(_value.copyWith(structuredFormatting: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PredictionCopyWith<$Res>
    implements $PredictionCopyWith<$Res> {
  factory _$$_PredictionCopyWith(
          _$_Prediction value, $Res Function(_$_Prediction) then) =
      __$$_PredictionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? description,
      String? id,
      @JsonKey(name: 'matched_substrings')
      List<MatchedSubstrings> matchedSubstrings,
      @JsonKey(name: 'place_id') String? placeId,
      String? reference,
      @JsonKey(name: 'structured_Formatting')
      StructuredFormatting? structuredFormatting,
      List<Terms> terms,
      List<String> types,
      String? lat,
      String? lng});

  @override
  $StructuredFormattingCopyWith<$Res>? get structuredFormatting;
}

/// @nodoc
class __$$_PredictionCopyWithImpl<$Res>
    extends _$PredictionCopyWithImpl<$Res, _$_Prediction>
    implements _$$_PredictionCopyWith<$Res> {
  __$$_PredictionCopyWithImpl(
      _$_Prediction _value, $Res Function(_$_Prediction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? id = freezed,
    Object? matchedSubstrings = null,
    Object? placeId = freezed,
    Object? reference = freezed,
    Object? structuredFormatting = freezed,
    Object? terms = null,
    Object? types = null,
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_$_Prediction(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      matchedSubstrings: null == matchedSubstrings
          ? _value._matchedSubstrings
          : matchedSubstrings // ignore: cast_nullable_to_non_nullable
              as List<MatchedSubstrings>,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      structuredFormatting: freezed == structuredFormatting
          ? _value.structuredFormatting
          : structuredFormatting // ignore: cast_nullable_to_non_nullable
              as StructuredFormatting?,
      terms: null == terms
          ? _value._terms
          : terms // ignore: cast_nullable_to_non_nullable
              as List<Terms>,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
class _$_Prediction implements _Prediction {
  _$_Prediction(
      {this.description,
      this.id,
      @JsonKey(name: 'matched_substrings')
      final List<MatchedSubstrings> matchedSubstrings = const [],
      @JsonKey(name: 'place_id') this.placeId,
      this.reference,
      @JsonKey(name: 'structured_Formatting') this.structuredFormatting,
      final List<Terms> terms = const [],
      final List<String> types = const [],
      this.lat,
      this.lng})
      : _matchedSubstrings = matchedSubstrings,
        _terms = terms,
        _types = types;

  factory _$_Prediction.fromJson(Map<String, dynamic> json) =>
      _$$_PredictionFromJson(json);

  @override
  final String? description;
  @override
  final String? id;
  final List<MatchedSubstrings> _matchedSubstrings;
  @override
  @JsonKey(name: 'matched_substrings')
  List<MatchedSubstrings> get matchedSubstrings {
    if (_matchedSubstrings is EqualUnmodifiableListView)
      return _matchedSubstrings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_matchedSubstrings);
  }

  @override
  @JsonKey(name: 'place_id')
  final String? placeId;
  @override
  final String? reference;
  @override
  @JsonKey(name: 'structured_Formatting')
  final StructuredFormatting? structuredFormatting;
  final List<Terms> _terms;
  @override
  @JsonKey()
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
  final String? lat;
  @override
  final String? lng;

  @override
  String toString() {
    return 'Prediction(description: $description, id: $id, matchedSubstrings: $matchedSubstrings, placeId: $placeId, reference: $reference, structuredFormatting: $structuredFormatting, terms: $terms, types: $types, lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Prediction &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._matchedSubstrings, _matchedSubstrings) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.structuredFormatting, structuredFormatting) ||
                other.structuredFormatting == structuredFormatting) &&
            const DeepCollectionEquality().equals(other._terms, _terms) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      description,
      id,
      const DeepCollectionEquality().hash(_matchedSubstrings),
      placeId,
      reference,
      structuredFormatting,
      const DeepCollectionEquality().hash(_terms),
      const DeepCollectionEquality().hash(_types),
      lat,
      lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PredictionCopyWith<_$_Prediction> get copyWith =>
      __$$_PredictionCopyWithImpl<_$_Prediction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PredictionToJson(
      this,
    );
  }
}

abstract class _Prediction implements Prediction {
  factory _Prediction(
      {final String? description,
      final String? id,
      @JsonKey(name: 'matched_substrings')
      final List<MatchedSubstrings> matchedSubstrings,
      @JsonKey(name: 'place_id') final String? placeId,
      final String? reference,
      @JsonKey(name: 'structured_Formatting')
      final StructuredFormatting? structuredFormatting,
      final List<Terms> terms,
      final List<String> types,
      final String? lat,
      final String? lng}) = _$_Prediction;

  factory _Prediction.fromJson(Map<String, dynamic> json) =
      _$_Prediction.fromJson;

  @override
  String? get description;
  @override
  String? get id;
  @override
  @JsonKey(name: 'matched_substrings')
  List<MatchedSubstrings> get matchedSubstrings;
  @override
  @JsonKey(name: 'place_id')
  String? get placeId;
  @override
  String? get reference;
  @override
  @JsonKey(name: 'structured_Formatting')
  StructuredFormatting? get structuredFormatting;
  @override
  List<Terms> get terms;
  @override
  List<String> get types;
  @override
  String? get lat;
  @override
  String? get lng;
  @override
  @JsonKey(ignore: true)
  _$$_PredictionCopyWith<_$_Prediction> get copyWith =>
      throw _privateConstructorUsedError;
}
