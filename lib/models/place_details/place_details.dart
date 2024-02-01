import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:places_search/models/place_details/place.dart';
import 'package:places_search/models/place_details/place_details_status.dart';

part 'place_details.freezed.dart';
part 'place_details.g.dart';

@freezed
class PlaceDetails with _$PlaceDetails {
  @JsonSerializable(explicitToJson: true)
  const factory PlaceDetails({
    //
    @JsonKey(name: 'html_attributions') required List<String> htmlAttributions,
    required Place result,
    required PlaceDetailsStatus status,
    @JsonKey(name: 'info_messages') @Default([]) List<String> infoMessages,
  }) = _PlaceDetails;

  factory PlaceDetails.fromJson(Map<String, dynamic> json) => _$PlaceDetailsFromJson(json);
}
