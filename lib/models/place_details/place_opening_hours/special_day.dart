import 'package:freezed_annotation/freezed_annotation.dart';

part 'special_day.freezed.dart';
part 'special_day.g.dart';

@freezed
class SpecialDay with _$SpecialDay {
  const factory SpecialDay({
    String? date,
    required bool? exceptionalHours,
  }) = _SpecialDay;

  factory SpecialDay.fromJson(Map<String, dynamic> json) => _$SpecialDayFromJson(json);
}
