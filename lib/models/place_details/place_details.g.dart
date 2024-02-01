// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceDetailsImpl _$$PlaceDetailsImplFromJson(Map<String, dynamic> json) =>
    _$PlaceDetailsImpl(
      htmlAttributions: (json['html_attributions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      result: Place.fromJson(json['result'] as Map<String, dynamic>),
      status: $enumDecode(_$PlaceDetailsStatusEnumMap, json['status']),
      infoMessages: (json['info_messages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PlaceDetailsImplToJson(_$PlaceDetailsImpl instance) =>
    <String, dynamic>{
      'html_attributions': instance.htmlAttributions,
      'result': instance.result.toJson(),
      'status': _$PlaceDetailsStatusEnumMap[instance.status]!,
      'info_messages': instance.infoMessages,
    };

const _$PlaceDetailsStatusEnumMap = {
  PlaceDetailsStatus.OK: 'OK',
  PlaceDetailsStatus.ZERO_RESULTS: 'ZERO_RESULTS',
  PlaceDetailsStatus.NOT_FOUND: 'NOT_FOUND',
  PlaceDetailsStatus.OVER_QUERY_LIMIT: 'OVER_QUERY_LIMIT',
  PlaceDetailsStatus.REQUEST_DENIED: 'REQUEST_DENIED',
  PlaceDetailsStatus.INVALID_REQUEST: 'INVALID_REQUEST',
  PlaceDetailsStatus.UNKNOWN_ERROR: 'UNKNOWN_ERROR',
};
