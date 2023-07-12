import 'package:freezed_annotation/freezed_annotation.dart';

part 'matched_substrings.freezed.dart';
part 'matched_substrings.g.dart';

@freezed
class MatchedSubstrings with _$MatchedSubstrings {
  factory MatchedSubstrings(
    int? length,
    int? offset,
  ) = _MatchedSubstrings;

  factory MatchedSubstrings.fromJson(Map<String, dynamic> json) =>
      _$MatchedSubstringsFromJson(json);
}
