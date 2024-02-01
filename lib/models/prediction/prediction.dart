// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:places_search/models/prediction/matched_substring.dart';
import 'package:places_search/models/prediction/structured_formatting.dart';
import 'package:places_search/models/prediction/terms.dart';

part 'prediction.freezed.dart';
part 'prediction.g.dart';

@freezed
class Prediction with _$Prediction {
  factory Prediction({
    required String description,
    @JsonKey(name: 'matched_substrings') required List<MatchedSubstring> matchedSubstrings,
    @JsonKey(name: 'structured_formatting') required StructuredFormatting structuredFormatting,
    required List<Terms> terms,
    @Default([]) List<String> types,
    @JsonKey(name: 'distance_meters') String? distanceMeters,
    @JsonKey(name: 'place_id') String? placeId,

    // Added after the fact to get latlng without asking for place details separately

    String? lat,
    String? lng,
  }) = _Prediction;

  factory Prediction.fromJson(Map<String, Object?> json) => _$PredictionFromJson(json);
}
