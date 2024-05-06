import 'package:flutter_google_places_sdk/flutter_google_places_sdk.dart' as sdk;
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

  factory PlaceDetails.fromFetchPlaceResponse(sdk.FetchPlaceResponse response) {
    return PlaceDetails(
      result: Place.fromPlaceSDK(response.place),
      htmlAttributions: [],
      status: PlaceDetailsStatus.OK,
    );
  }
  factory PlaceDetails.fromJson(Map<String, dynamic> json) => _$PlaceDetailsFromJson(json);
}
