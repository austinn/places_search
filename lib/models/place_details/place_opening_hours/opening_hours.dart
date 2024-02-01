import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:places_search/models/place_details/place_opening_hours/opening_hours_period.dart';

part 'opening_hours.freezed.dart';
part 'opening_hours.g.dart';

@freezed
class OpeningHours with _$OpeningHours {
  const factory OpeningHours({
    bool? openNow,
    List<OpeningHoursPeriod>? periods,
    String? type,
    List<String>? types,
    List<String>? weekdayText,
  }) = _OpeningHours;

  factory OpeningHours.fromJson(Map<String, dynamic> json) => _$OpeningHoursFromJson(json);
}
