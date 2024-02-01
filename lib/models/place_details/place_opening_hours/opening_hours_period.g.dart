// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'opening_hours_period.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OpeningHoursPeriodImpl _$$OpeningHoursPeriodImplFromJson(
        Map<String, dynamic> json) =>
    _$OpeningHoursPeriodImpl(
      open: OpeningHoursDetails.fromJson(json['open'] as Map<String, dynamic>),
      close: json['close'] == null
          ? null
          : OpeningHoursDetails.fromJson(json['close'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OpeningHoursPeriodImplToJson(
        _$OpeningHoursPeriodImpl instance) =>
    <String, dynamic>{
      'open': instance.open.toJson(),
      'close': instance.close?.toJson(),
    };
