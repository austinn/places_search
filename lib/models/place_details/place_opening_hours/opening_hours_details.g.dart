// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'opening_hours_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OpeningHoursDetailsImpl _$$OpeningHoursDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$OpeningHoursDetailsImpl(
      day: json['day'] as int,
      time: json['time'] as String,
      date: json['date'] as String?,
      truncated: json['truncated'] as bool?,
    );

Map<String, dynamic> _$$OpeningHoursDetailsImplToJson(
        _$OpeningHoursDetailsImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'time': instance.time,
      'date': instance.date,
      'truncated': instance.truncated,
    };
