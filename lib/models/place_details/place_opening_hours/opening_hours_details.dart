import 'package:flutter_google_places_sdk/flutter_google_places_sdk.dart' as sdk;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'opening_hours_details.freezed.dart';
part 'opening_hours_details.g.dart';

@freezed
class OpeningHoursDetails with _$OpeningHoursDetails {
  const factory OpeningHoursDetails({
    required int day,
    required String time,
    String? date,
    bool? truncated,
  }) = _OpeningHoursDetails;

  factory OpeningHoursDetails.fromSDK(sdk.TimeOfWeek tow) {
    return OpeningHoursDetails(
      day: tow.day.index,
      time: tow.time.toString(),
    );
  }
  factory OpeningHoursDetails.fromJson(Map<String, dynamic> json) => _$OpeningHoursDetailsFromJson(json);
}
