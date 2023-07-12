// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:places_search/model/matched_substrings.dart';
import 'package:places_search/model/structuredformatting.dart';
import 'package:places_search/model/terms.dart';

part 'prediction.freezed.dart';
part 'prediction.g.dart';

@freezed
class Prediction with _$Prediction {
  factory Prediction({
    String? description,
    String? id,
    @JsonKey(name: 'matched_substrings')
    @Default([])
    List<MatchedSubstrings> matchedSubstrings,
    @JsonKey(name: 'place_id') String? placeId,
    String? reference,
    @JsonKey(name: 'structured_Formatting')
    StructuredFormatting? structuredFormatting,
    @Default([]) List<Terms> terms,
    @Default([]) List<String> types,
    String? lat,
    String? lng,
  }) = _Prediction;

  factory Prediction.fromJson(Map<String, Object?> json) =>
      _$PredictionFromJson(json);
}
