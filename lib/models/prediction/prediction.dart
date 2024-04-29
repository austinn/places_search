// ignore_for_file: invalid_annotation_target

import 'package:flutter_google_places_sdk/flutter_google_places_sdk.dart';
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
    required List<MatchedSubstring> matchedSubstrings,
    required StructuredFormatting structuredFormatting,
    required List<Terms> terms,
    @Default([]) List<String> types,
    String? distanceMeters,
    String? placeId,

    // Added after the fact to get latlng without asking for place details separately

    String? lat,
    String? lng,
  }) = _Prediction;

  factory Prediction.fromJson(Map<String, Object?> json) => _$PredictionFromJson(json);

  factory Prediction.fromAutocompletePrediction(AutocompletePrediction response) {
    return Prediction(
      description: response.fullText,
      matchedSubstrings: [],
      structuredFormatting: StructuredFormatting(
        mainText: response.primaryText,
        secondaryText: response.secondaryText,
      ),
      terms: [],
      types: [],
      placeId: response.placeId,
      distanceMeters: (response.distanceMeters ?? 0).toString(),
    );
  }
}
