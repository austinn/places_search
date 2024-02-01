import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:places_search/models/place_details/address_component.dart';
import 'package:places_search/models/place_details/geometry/geometry.dart';
import 'package:places_search/models/place_details/photos.dart';
import 'package:places_search/models/place_details/place_opening_hours/opening_hours.dart';
import 'package:places_search/models/place_details/plus_code.dart';
import 'package:places_search/models/place_details/review.dart';

part 'place.freezed.dart';
part 'place.g.dart';

@freezed
class Place with _$Place {
  const Place._();
  const factory Place({
    List<AddressComponent>? addressComponents,
    String? adrAddress,
    String? businessStatus,
    String? formattedAddress,
    String? formattedPhoneNumber,
    Geometry? geometry,
    String? icon,
    String? iconBackgroundColor,
    String? iconMaskBaseUri,
    String? internationalPhoneNumber,
    String? name,
    OpeningHours? openingHours,
    List<Photo>? photos,
    String? placeId,
    PlusCode? plusCode,
    double? rating,
    String? reference,
    List<Review>? reviews,
    List<String>? types,
    String? url,
    int? userRatingsTotal,
    int? utcOffset,
    String? vicinity,
    String? website,
  }) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);
}
