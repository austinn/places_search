import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:places_search/models/place_details/place_opening_hours/opening_hours_period.dart';

part 'opening_hours.freezed.dart';
part 'opening_hours.g.dart';

@freezed
class OpeningHours with _$OpeningHours {
  @JsonSerializable(explicitToJson: true)
  const factory OpeningHours({
    @JsonKey(name: 'open_now') bool? openNow,
    List<OpeningHoursPeriod>? periods,
    @JsonKey(name: 'special_days') String? type,
    List<String>? types,
    @JsonKey(name: 'weekday_text') List<String>? weekdayText,
  }) = _OpeningHours;

  factory OpeningHours.fromJson(Map<String, dynamic> json) => _$OpeningHoursFromJson(json);
}
