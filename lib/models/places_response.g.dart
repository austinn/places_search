// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlacesResponseImpl _$$PlacesResponseImplFromJson(Map<String, dynamic> json) =>
    _$PlacesResponseImpl(
      predictions: (json['predictions'] as List<dynamic>?)
              ?.map((e) => Prediction.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$PlacesResponseImplToJson(
        _$PlacesResponseImpl instance) =>
    <String, dynamic>{
      'predictions': instance.predictions,
      'status': instance.status,
    };
