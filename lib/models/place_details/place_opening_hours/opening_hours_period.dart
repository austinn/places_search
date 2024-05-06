import 'package:flutter_google_places_sdk/flutter_google_places_sdk.dart' as sdk;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:places_search/models/place_details/place_opening_hours/opening_hours_details.dart';

part 'opening_hours_period.freezed.dart';
part 'opening_hours_period.g.dart';

@freezed
class OpeningHoursPeriod with _$OpeningHoursPeriod {
  const factory OpeningHoursPeriod({
    required OpeningHoursDetails open,
    OpeningHoursDetails? close,
  }) = _OpeningHoursPeriod;

  factory OpeningHoursPeriod.fromSDK(sdk.Period period) {
    return OpeningHoursPeriod(
      open: OpeningHoursDetails.fromSDK(period.open),
      close: period.close != null ? OpeningHoursDetails.fromSDK(period.close!) : null,
    );
  }
  factory OpeningHoursPeriod.fromJson(Map<String, dynamic> json) => _$OpeningHoursPeriodFromJson(json);
}
