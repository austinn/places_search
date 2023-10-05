import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class PlaceDetails {
  List<dynamic> htmlAttributions;
  Result result;
  String status;

  PlaceDetails({
    required this.htmlAttributions,
    required this.result,
    required this.status,
  });

  factory PlaceDetails.fromRawJson(String str) => PlaceDetails.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlaceDetails.fromJson(Map<String, dynamic> json) => PlaceDetails(
        htmlAttributions: List<dynamic>.from(json['html_attributions'].map((x) => x)),
        result: Result.fromJson(json['result']),
        status: json['status'],
      );

  Map<String, dynamic> toJson() => {
        'html_attributions': List<dynamic>.from(htmlAttributions.map((x) => x)),
        'result': result.toJson(),
        'status': status,
      };
}

class Result {
  List<AddressComponent> addressComponents;
  String adrAddress;
  String businessStatus;
  CurrentOpeningHours currentOpeningHours;
  String formattedAddress;
  String formattedPhoneNumber;
  Geometry geometry;
  String icon;
  String iconBackgroundColor;
  String iconMaskBaseUri;
  String internationalPhoneNumber;
  String name;
  OpeningHours openingHours;
  List<Photo> photos;
  String placeId;
  PlusCode plusCode;
  double rating;
  String reference;
  List<Review> reviews;
  List<String> types;
  String url;
  int userRatingsTotal;
  int utcOffset;
  String vicinity;
  String website;
  bool wheelchairAccessibleEntrance;

  Result({
    required this.addressComponents,
    required this.adrAddress,
    required this.businessStatus,
    required this.currentOpeningHours,
    required this.formattedAddress,
    required this.formattedPhoneNumber,
    required this.geometry,
    required this.icon,
    required this.iconBackgroundColor,
    required this.iconMaskBaseUri,
    required this.internationalPhoneNumber,
    required this.name,
    required this.openingHours,
    required this.photos,
    required this.placeId,
    required this.plusCode,
    required this.rating,
    required this.reference,
    required this.reviews,
    required this.types,
    required this.url,
    required this.userRatingsTotal,
    required this.utcOffset,
    required this.vicinity,
    required this.website,
    required this.wheelchairAccessibleEntrance,
  });

  factory Result.fromRawJson(String str) => Result.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        addressComponents:
            List<AddressComponent>.from(json['address_components'].map((x) => AddressComponent.fromJson(x))),
        adrAddress: json['adr_address'],
        businessStatus: json['business_status'],
        currentOpeningHours: CurrentOpeningHours.fromJson(json['current_opening_hours']),
        formattedAddress: json['formatted_address'],
        formattedPhoneNumber: json['formatted_phone_number'],
        geometry: Geometry.fromJson(json['geometry']),
        icon: json['icon'],
        iconBackgroundColor: json['icon_background_color'],
        iconMaskBaseUri: json['icon_mask_base_uri'],
        internationalPhoneNumber: json['international_phone_number'],
        name: json['name'],
        openingHours: OpeningHours.fromJson(json['opening_hours']),
        photos: List<Photo>.from(json['photos'].map((x) => Photo.fromJson(x))),
        placeId: json['place_id'],
        plusCode: PlusCode.fromJson(json['plus_code']),
        rating: json['rating']?.toDouble(),
        reference: json['reference'],
        reviews: List<Review>.from(json['reviews'].map((x) => Review.fromJson(x))),
        types: List<String>.from(json['types'].map((x) => x)),
        url: json['url'],
        userRatingsTotal: json['user_ratings_total'],
        utcOffset: json['utc_offset'],
        vicinity: json['vicinity'],
        website: json['website'],
        wheelchairAccessibleEntrance: json['wheelchair_accessible_entrance'],
      );

  Map<String, dynamic> toJson() => {
        'address_components': List<dynamic>.from(addressComponents.map((x) => x.toJson())),
        'adr_address': adrAddress,
        'business_status': businessStatus,
        'current_opening_hours': currentOpeningHours.toJson(),
        'formatted_address': formattedAddress,
        'formatted_phone_number': formattedPhoneNumber,
        'geometry': geometry.toJson(),
        'icon': icon,
        'icon_background_color': iconBackgroundColor,
        'icon_mask_base_uri': iconMaskBaseUri,
        'international_phone_number': internationalPhoneNumber,
        'name': name,
        'opening_hours': openingHours.toJson(),
        'photos': List<dynamic>.from(photos.map((x) => x.toJson())),
        'place_id': placeId,
        'plus_code': plusCode.toJson(),
        'rating': rating,
        'reference': reference,
        'reviews': List<dynamic>.from(reviews.map((x) => x.toJson())),
        'types': List<dynamic>.from(types.map((x) => x)),
        'url': url,
        'user_ratings_total': userRatingsTotal,
        'utc_offset': utcOffset,
        'vicinity': vicinity,
        'website': website,
        'wheelchair_accessible_entrance': wheelchairAccessibleEntrance,
      };
}

class AddressComponent {
  String longName;
  String shortName;
  List<String> types;

  AddressComponent({
    required this.longName,
    required this.shortName,
    required this.types,
  });

  factory AddressComponent.fromRawJson(String str) => AddressComponent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddressComponent.fromJson(Map<String, dynamic> json) => AddressComponent(
        longName: json['long_name'],
        shortName: json['short_name'],
        types: List<String>.from(json['types'].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        'long_name': longName,
        'short_name': shortName,
        'types': List<dynamic>.from(types.map((x) => x)),
      };
}

class CurrentOpeningHours {
  bool openNow;
  List<CurrentOpeningHoursPeriod> periods;
  List<String> weekdayText;

  CurrentOpeningHours({
    required this.openNow,
    required this.periods,
    required this.weekdayText,
  });

  factory CurrentOpeningHours.fromRawJson(String str) => CurrentOpeningHours.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CurrentOpeningHours.fromJson(Map<String, dynamic> json) => CurrentOpeningHours(
        openNow: json['open_now'],
        periods:
            List<CurrentOpeningHoursPeriod>.from(json['periods'].map((x) => CurrentOpeningHoursPeriod.fromJson(x))),
        weekdayText: List<String>.from(json['weekday_text'].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        'open_now': openNow,
        'periods': List<dynamic>.from(periods.map((x) => x.toJson())),
        'weekday_text': List<dynamic>.from(weekdayText.map((x) => x)),
      };
}

class CurrentOpeningHoursPeriod {
  PurpleClose close;
  PurpleClose open;

  CurrentOpeningHoursPeriod({
    required this.close,
    required this.open,
  });

  factory CurrentOpeningHoursPeriod.fromRawJson(String str) => CurrentOpeningHoursPeriod.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CurrentOpeningHoursPeriod.fromJson(Map<String, dynamic> json) => CurrentOpeningHoursPeriod(
        close: PurpleClose.fromJson(json['close']),
        open: PurpleClose.fromJson(json['open']),
      );

  Map<String, dynamic> toJson() => {
        'close': close.toJson(),
        'open': open.toJson(),
      };
}

class PurpleClose {
  DateTime date;
  int day;
  String time;

  PurpleClose({
    required this.date,
    required this.day,
    required this.time,
  });

  factory PurpleClose.fromRawJson(String str) => PurpleClose.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleClose.fromJson(Map<String, dynamic> json) => PurpleClose(
        date: DateTime.parse(json['date']),
        day: json['day'],
        time: json['time'],
      );

  Map<String, dynamic> toJson() => {
        'date':
            "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        'day': day,
        'time': time,
      };
}

class Geometry {
  Location location;
  Viewport viewport;

  Geometry({
    required this.location,
    required this.viewport,
  });

  factory Geometry.fromRawJson(String str) => Geometry.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Geometry.fromJson(Map<String, dynamic> json) => Geometry(
        location: Location.fromJson(json['location']),
        viewport: Viewport.fromJson(json['viewport']),
      );

  Map<String, dynamic> toJson() => {
        'location': location.toJson(),
        'viewport': viewport.toJson(),
      };
}

class Location {
  double lat;
  double lng;

  Location({
    required this.lat,
    required this.lng,
  });

  factory Location.fromRawJson(String str) => Location.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        lat: json['lat']?.toDouble(),
        lng: json['lng']?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        'lat': lat,
        'lng': lng,
      };
}

class Viewport {
  Location northeast;
  Location southwest;

  Viewport({
    required this.northeast,
    required this.southwest,
  });

  factory Viewport.fromRawJson(String str) => Viewport.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Viewport.fromJson(Map<String, dynamic> json) => Viewport(
        northeast: Location.fromJson(json['northeast']),
        southwest: Location.fromJson(json['southwest']),
      );

  Map<String, dynamic> toJson() => {
        'northeast': northeast.toJson(),
        'southwest': southwest.toJson(),
      };
}

extension StringX on String {
  TimeOfDay toTimeOfDay() {
    // Example: s is 1200, or 1700
    final hour = int.parse(substring(0, 2));
    final minute = int.parse(substring(2, 4));
    return TimeOfDay(hour: hour, minute: minute);
  }
}

extension PeriodsX on List<OpeningHoursPeriod> {
  TimeOfDay? openTimeOn(int? weekday) {
    if (weekday == null) return null;
    return firstWhereOrNull(
      (p) => p.open.day == weekday,
    )?.open.time.toTimeOfDay();
  }

  TimeOfDay? closeTimeOn(int? weekday) {
    if (weekday == null) return null;
    return firstWhereOrNull(
      (p) => p.close.day == weekday,
    )?.close.time.toTimeOfDay();
  }
}

class OpeningHours {
  bool openNow;
  List<OpeningHoursPeriod> periods;
  List<String> weekdayText;

  @override
  String toString() {
    return 'OpeningHours{openNow: $openNow, periods: ${periods.map(
      (e) => e.toString(),
    )}, weekdayText: $weekdayText}';
  }

  OpeningHours({
    required this.openNow,
    required this.periods,
    required this.weekdayText,
  });

  factory OpeningHours.fromRawJson(String str) => OpeningHours.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OpeningHours.fromJson(Map<String, dynamic> json) => OpeningHours(
        openNow: json['open_now'],
        periods: List<OpeningHoursPeriod>.from(json['periods'].map((x) => OpeningHoursPeriod.fromJson(x))),
        weekdayText: List<String>.from(json['weekday_text'].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        'open_now': openNow,
        'periods': List<dynamic>.from(periods.map((x) => x.toJson())),
        'weekday_text': List<dynamic>.from(weekdayText.map((x) => x)),
      };
}

class OpeningHoursPeriod {
  FluffyClose close;
  FluffyClose open;

  OpeningHoursPeriod({
    required this.close,
    required this.open,
  });

  @override
  String toString() {
    return 'OpeningHoursPeriod{close: ${close.toString()}, open: ${open.toString()}';
  }

  factory OpeningHoursPeriod.fromRawJson(String str) => OpeningHoursPeriod.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OpeningHoursPeriod.fromJson(Map<String, dynamic> json) => OpeningHoursPeriod(
        close: FluffyClose.fromJson(json['close']),
        open: FluffyClose.fromJson(json['open']),
      );

  Map<String, dynamic> toJson() => {
        'close': close.toJson(),
        'open': open.toJson(),
      };
}

class FluffyClose {
  int day;
  String time;

  @override
  String toString() {
    return 'FluffyClose{day: $day, time: $time}';
  }

  FluffyClose({
    required this.day,
    required this.time,
  });

  factory FluffyClose.fromRawJson(String str) => FluffyClose.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyClose.fromJson(Map<String, dynamic> json) => FluffyClose(
        day: json['day'],
        time: json['time'],
      );

  Map<String, dynamic> toJson() => {
        'day': day,
        'time': time,
      };
}

class Photo {
  int height;
  List<String> htmlAttributions;
  String photoReference;
  int width;

  Photo({
    required this.height,
    required this.htmlAttributions,
    required this.photoReference,
    required this.width,
  });

  factory Photo.fromRawJson(String str) => Photo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Photo.fromJson(Map<String, dynamic> json) => Photo(
        height: json['height'],
        htmlAttributions: List<String>.from(json['html_attributions'].map((x) => x)),
        photoReference: json['photo_reference'],
        width: json['width'],
      );

  Map<String, dynamic> toJson() => {
        'height': height,
        'html_attributions': List<dynamic>.from(htmlAttributions.map((x) => x)),
        'photo_reference': photoReference,
        'width': width,
      };
}

class PlusCode {
  String compoundCode;
  String globalCode;

  PlusCode({
    required this.compoundCode,
    required this.globalCode,
  });

  factory PlusCode.fromRawJson(String str) => PlusCode.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlusCode.fromJson(Map<String, dynamic> json) => PlusCode(
        compoundCode: json['compound_code'],
        globalCode: json['global_code'],
      );

  Map<String, dynamic> toJson() => {
        'compound_code': compoundCode,
        'global_code': globalCode,
      };
}

class Review {
  String authorName;
  String authorUrl;
  String language;
  String originalLanguage;
  String profilePhotoUrl;
  int rating;
  String relativeTimeDescription;
  String text;
  int time;
  bool translated;

  Review({
    required this.authorName,
    required this.authorUrl,
    required this.language,
    required this.originalLanguage,
    required this.profilePhotoUrl,
    required this.rating,
    required this.relativeTimeDescription,
    required this.text,
    required this.time,
    required this.translated,
  });

  factory Review.fromRawJson(String str) => Review.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Review.fromJson(Map<String, dynamic> json) => Review(
        authorName: json['author_name'],
        authorUrl: json['author_url'],
        language: json['language'],
        originalLanguage: json['original_language'],
        profilePhotoUrl: json['profile_photo_url'],
        rating: json['rating'],
        relativeTimeDescription: json['relative_time_description'],
        text: json['text'],
        time: json['time'],
        translated: json['translated'],
      );

  Map<String, dynamic> toJson() => {
        'author_name': authorName,
        'author_url': authorUrl,
        'language': language,
        'original_language': originalLanguage,
        'profile_photo_url': profilePhotoUrl,
        'rating': rating,
        'relative_time_description': relativeTimeDescription,
        'text': text,
        'time': time,
        'translated': translated,
      };
}
