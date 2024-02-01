// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prediction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PredictionImpl _$$PredictionImplFromJson(Map<String, dynamic> json) =>
    _$PredictionImpl(
      description: json['description'] as String,
      matchedSubstrings: (json['matched_substrings'] as List<dynamic>)
          .map((e) => MatchedSubstring.fromJson(e as Map<String, dynamic>))
          .toList(),
      structuredFormatting: StructuredFormatting.fromJson(
          json['structured_formatting'] as Map<String, dynamic>),
      terms: (json['terms'] as List<dynamic>)
          .map((e) => Terms.fromJson(e as Map<String, dynamic>))
          .toList(),
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      distanceMeters: json['distance_meters'] as String?,
      placeId: json['place_id'] as String?,
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
    );

Map<String, dynamic> _$$PredictionImplToJson(_$PredictionImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'matched_substrings':
          instance.matchedSubstrings.map((e) => e.toJson()).toList(),
      'structured_formatting': instance.structuredFormatting.toJson(),
      'terms': instance.terms.map((e) => e.toJson()).toList(),
      'types': instance.types,
      'distance_meters': instance.distanceMeters,
      'place_id': instance.placeId,
      'lat': instance.lat,
      'lng': instance.lng,
    };
