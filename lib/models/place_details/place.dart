import 'package:flutter_google_places_sdk/flutter_google_places_sdk.dart' as sdk;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:places_search/models/place_details/address_component.dart';
import 'package:places_search/models/place_details/geometry/bounds.dart';
import 'package:places_search/models/place_details/geometry/geometry.dart';
import 'package:places_search/models/place_details/geometry/latlngliteral.dart';
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

  factory Place.fromPlaceSDK(sdk.Place? place) {
    if (place == null) {
      return const Place();
    }
    return Place(
      addressComponents: place.addressComponents?.map((e) => AddressComponent.fromSDK(e)).toList(),
      adrAddress: place.address,
      businessStatus: place.businessStatus?.toString(),
      formattedAddress: null,
      formattedPhoneNumber: null,
      geometry: Geometry(
        location: LatLngLiteral(
          lat: place.latLng?.lat ?? 0,
          lng: place.latLng?.lng ?? 0,
        ),
        viewport: Bounds(
          northeast: LatLngLiteral(
            lat: place.viewport?.northeast.lat ?? 0,
            lng: place.viewport?.northeast.lng ?? 0,
          ),
          southwest: LatLngLiteral(
            lat: place.viewport?.southwest.lat ?? 0,
            lng: place.viewport?.southwest.lng ?? 0,
          ),
        ),
      ),
      openingHours: place.openingHours != null ? OpeningHours.fromSDK(place.openingHours!) : null,
    );
  }

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);
}
