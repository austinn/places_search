// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prediction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Prediction _$$_PredictionFromJson(Map<String, dynamic> json) =>
    _$_Prediction(
      description: json['description'] as String?,
      id: json['id'] as String?,
      matchedSubstrings: (json['matched_substrings'] as List<dynamic>?)
              ?.map(
                  (e) => MatchedSubstrings.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      placeId: json['place_id'] as String?,
      reference: json['reference'] as String?,
      structuredFormatting: json['structured_Formatting'] == null
          ? null
          : StructuredFormatting.fromJson(
              json['structured_Formatting'] as Map<String, dynamic>),
      terms: (json['terms'] as List<dynamic>?)
              ?.map((e) => Terms.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
    );

Map<String, dynamic> _$$_PredictionToJson(_$_Prediction instance) =>
    <String, dynamic>{
      'description': instance.description,
      'id': instance.id,
      'matched_substrings': instance.matchedSubstrings,
      'place_id': instance.placeId,
      'reference': instance.reference,
      'structured_Formatting': instance.structuredFormatting,
      'terms': instance.terms,
      'types': instance.types,
      'lat': instance.lat,
      'lng': instance.lng,
    };
