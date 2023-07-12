// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'structuredformatting.freezed.dart';
part 'structuredformatting.g.dart';

@freezed
class StructuredFormatting with _$StructuredFormatting {
  factory StructuredFormatting({
    @JsonKey(name: 'main_Text') String? mainText,
    @JsonKey(name: 'secondary_Text') String? secondaryText,
  }) = _StructuredFormatting;

  factory StructuredFormatting.fromJson(Map<String, dynamic> json) =>
      _$StructuredFormattingFromJson(json);
}
