import 'package:freezed_annotation/freezed_annotation.dart';

part 'special_day.freezed.dart';
part 'special_day.g.dart';

@freezed
class SpecialDay with _$SpecialDay {
  @JsonSerializable(explicitToJson: true)
  const factory SpecialDay({
    String? date,
    @JsonKey(name: 'exceptional_hours') required bool? exceptionalHours,
  }) = _SpecialDay;

  factory SpecialDay.fromJson(Map<String, dynamic> json) => _$SpecialDayFromJson(json);
}
