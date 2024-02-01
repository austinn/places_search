import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:places_search/models/place_details/place.dart';
import 'package:places_search/models/place_details/place_details_status.dart';

part 'place_details.freezed.dart';
part 'place_details.g.dart';

@freezed
class PlaceDetails with _$PlaceDetails {
  const factory PlaceDetails({
    //
    required List<String> htmlAttributions,
    required Place result,
    required PlaceDetailsStatus status,
    @Default([]) List<String> infoMessages,
  }) = _PlaceDetails;

  factory PlaceDetails.fromJson(Map<String, dynamic> json) => _$PlaceDetailsFromJson(json);
}
