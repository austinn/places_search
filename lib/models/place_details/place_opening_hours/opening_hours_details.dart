import 'package:freezed_annotation/freezed_annotation.dart';

part 'opening_hours_details.freezed.dart';
part 'opening_hours_details.g.dart';

@freezed
class OpeningHoursDetails with _$OpeningHoursDetails {
  @JsonSerializable(explicitToJson: true)
  const factory OpeningHoursDetails({
    required int day,
    required String time,
    String? date,
    bool? truncated,
  }) = _OpeningHoursDetails;

  factory OpeningHoursDetails.fromJson(Map<String, dynamic> json) => _$OpeningHoursDetailsFromJson(json);
}
