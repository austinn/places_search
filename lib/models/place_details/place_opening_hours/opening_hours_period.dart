import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:places_search/models/place_details/place_opening_hours/opening_hours_details.dart';

part 'opening_hours_period.freezed.dart';
part 'opening_hours_period.g.dart';

@freezed
class OpeningHoursPeriod with _$OpeningHoursPeriod {
  @JsonSerializable(explicitToJson: true)
  const factory OpeningHoursPeriod({
    required OpeningHoursDetails open,
    OpeningHoursDetails? close,
  }) = _OpeningHoursPeriod;

  factory OpeningHoursPeriod.fromJson(Map<String, dynamic> json) => _$OpeningHoursPeriodFromJson(json);
}
