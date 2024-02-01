import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:places_search/models/prediction/prediction.dart';

part 'places_response.freezed.dart';
part 'places_response.g.dart';

@freezed
class PlacesResponse with _$PlacesResponse {
  factory PlacesResponse({
    @Default([]) List<Prediction> predictions,
    String? status,
  }) = _PlacesResponse;

  factory PlacesResponse.fromJson(Map<String, Object?> json) => _$PlacesResponseFromJson(json);
}
