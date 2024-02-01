// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:places_search/models/prediction/matched_substring.dart';

part 'structured_formatting.freezed.dart';
part 'structured_formatting.g.dart';

@freezed
class StructuredFormatting with _$StructuredFormatting {
  factory StructuredFormatting({
    required String mainText,
    required List<MatchedSubstring> mainTextMatchedSubstrings,
    String? secondaryText,
    List<MatchedSubstring>? secondaryTextMatchedSubstrings,
  }) = _StructuredFormatting;

  factory StructuredFormatting.fromJson(Map<String, dynamic> json) => _$StructuredFormattingFromJson(json);
}
