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
  @JsonSerializable(explicitToJson: true)
  const Place._();
  const factory Place({
    @JsonKey(name: 'address_components') List<AddressComponent>? addressComponents,
    @JsonKey(name: 'adr_address') String? adrAddress,
    @JsonKey(name: 'business_status') String? businessStatus,
    @JsonKey(name: 'formatted_address') String? formattedAddress,
    @JsonKey(name: 'formatted_phone_number') String? formattedPhoneNumber,
    Geometry? geometry,
    String? icon,
    @JsonKey(name: 'icon_background_color') String? iconBackgroundColor,
    @JsonKey(name: 'icon_mask_base_uri') String? iconMaskBaseUri,
    @JsonKey(name: 'international_phone_number') String? internationalPhoneNumber,
    String? name,
    @JsonKey(name: 'opening_hours') OpeningHours? openingHours,
    List<Photo>? photos,
    @JsonKey(name: 'place_id') String? placeId,
    @JsonKey(name: 'plus_code') PlusCode? plusCode,
    double? rating,
    String? reference,
    List<Review>? reviews,
    List<String>? types,
    String? url,
    @JsonKey(name: 'user_ratings_total') int? userRatingsTotal,
    @JsonKey(name: 'utc_offset') int? utcOffset,
    String? vicinity,
    String? website,
  }) = _Place;

  String get streetAddress {
    final addressComponent = addressComponents?.firstWhere(
      (element) => element.types.contains('street_number'),
      orElse: () => const AddressComponent(longName: '', shortName: '', types: []),
    );
    return '${addressComponent!.longName} ${addressComponents!.firstWhere((element) => element.types.contains('route')).longName}';
  }

  String get city {
    final addressComponent = addressComponents?.firstWhere(
      (element) => element.types.contains('locality'),
      orElse: () => const AddressComponent(longName: '', shortName: '', types: []),
    );
    return addressComponent!.longName;
  }

  String get state {
    final addressComponent = addressComponents?.firstWhere(
      (element) => element.types.contains('administrative_area_level_1'),
      orElse: () => const AddressComponent(longName: '', shortName: '', types: []),
    );
    return addressComponent!.longName;
  }

  String get zipCode {
    final addressComponent = addressComponents?.firstWhere(
      (element) => element.types.contains('postal_code'),
      orElse: () => const AddressComponent(longName: '', shortName: '', types: []),
    );
    return addressComponent!.longName;
  }

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);
}
