// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlacesResponse _$$_PlacesResponseFromJson(Map<String, dynamic> json) =>
    _$_PlacesResponse(
      predictions: (json['predictions'] as List<dynamic>?)
              ?.map((e) => Prediction.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$_PlacesResponseToJson(_$_PlacesResponse instance) =>
    <String, dynamic>{
      'predictions': instance.predictions,
      'status': instance.status,
    };
