// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Place _$PlaceFromJson(Map<String, dynamic> json) {
  return _Place.fromJson(json);
}

/// @nodoc
mixin _$Place {
  @JsonKey(name: 'address_components')
  List<AddressComponent>? get addressComponents =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'adr_address')
  String? get adrAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_status')
  String? get businessStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'formatted_address')
  String? get formattedAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'formatted_phone_number')
  String? get formattedPhoneNumber => throw _privateConstructorUsedError;
  Geometry? get geometry => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon_background_color')
  String? get iconBackgroundColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon_mask_base_uri')
  String? get iconMaskBaseUri => throw _privateConstructorUsedError;
  @JsonKey(name: 'international_phone_number')
  String? get internationalPhoneNumber => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'opening_hours')
  OpeningHours? get openingHours => throw _privateConstructorUsedError;
  List<Photo>? get photos => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_id')
  String? get placeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'plus_code')
  PlusCode? get plusCode => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  String? get reference => throw _privateConstructorUsedError;
  List<Review>? get reviews => throw _privateConstructorUsedError;
  List<String>? get types => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_ratings_total')
  int? get userRatingsTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'utc_offset')
  int? get utcOffset => throw _privateConstructorUsedError;
  String? get vicinity => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceCopyWith<Place> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceCopyWith<$Res> {
  factory $PlaceCopyWith(Place value, $Res Function(Place) then) =
      _$PlaceCopyWithImpl<$Res, Place>;
  @useResult
  $Res call(
      {@JsonKey(name: 'address_components')
      List<AddressComponent>? addressComponents,
      @JsonKey(name: 'adr_address') String? adrAddress,
      @JsonKey(name: 'business_status') String? businessStatus,
      @JsonKey(name: 'formatted_address') String? formattedAddress,
      @JsonKey(name: 'formatted_phone_number') String? formattedPhoneNumber,
      Geometry? geometry,
      String? icon,
      @JsonKey(name: 'icon_background_color') String? iconBackgroundColor,
      @JsonKey(name: 'icon_mask_base_uri') String? iconMaskBaseUri,
      @JsonKey(name: 'international_phone_number')
      String? internationalPhoneNumber,
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
      String? website});

  $GeometryCopyWith<$Res>? get geometry;
  $OpeningHoursCopyWith<$Res>? get openingHours;
  $PlusCodeCopyWith<$Res>? get plusCode;
}

/// @nodoc
class _$PlaceCopyWithImpl<$Res, $Val extends Place>
    implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressComponents = freezed,
    Object? adrAddress = freezed,
    Object? businessStatus = freezed,
    Object? formattedAddress = freezed,
    Object? formattedPhoneNumber = freezed,
    Object? geometry = freezed,
    Object? icon = freezed,
    Object? iconBackgroundColor = freezed,
    Object? iconMaskBaseUri = freezed,
    Object? internationalPhoneNumber = freezed,
    Object? name = freezed,
    Object? openingHours = freezed,
    Object? photos = freezed,
    Object? placeId = freezed,
    Object? plusCode = freezed,
    Object? rating = freezed,
    Object? reference = freezed,
    Object? reviews = freezed,
    Object? types = freezed,
    Object? url = freezed,
    Object? userRatingsTotal = freezed,
    Object? utcOffset = freezed,
    Object? vicinity = freezed,
    Object? website = freezed,
  }) {
    return _then(_value.copyWith(
      addressComponents: freezed == addressComponents
          ? _value.addressComponents
          : addressComponents // ignore: cast_nullable_to_non_nullable
              as List<AddressComponent>?,
      adrAddress: freezed == adrAddress
          ? _value.adrAddress
          : adrAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      businessStatus: freezed == businessStatus
          ? _value.businessStatus
          : businessStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      formattedAddress: freezed == formattedAddress
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      formattedPhoneNumber: freezed == formattedPhoneNumber
          ? _value.formattedPhoneNumber
          : formattedPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      geometry: freezed == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      iconBackgroundColor: freezed == iconBackgroundColor
          ? _value.iconBackgroundColor
          : iconBackgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      iconMaskBaseUri: freezed == iconMaskBaseUri
          ? _value.iconMaskBaseUri
          : iconMaskBaseUri // ignore: cast_nullable_to_non_nullable
              as String?,
      internationalPhoneNumber: freezed == internationalPhoneNumber
          ? _value.internationalPhoneNumber
          : internationalPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      openingHours: freezed == openingHours
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as OpeningHours?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      plusCode: freezed == plusCode
          ? _value.plusCode
          : plusCode // ignore: cast_nullable_to_non_nullable
              as PlusCode?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      reviews: freezed == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>?,
      types: freezed == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      userRatingsTotal: freezed == userRatingsTotal
          ? _value.userRatingsTotal
          : userRatingsTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      utcOffset: freezed == utcOffset
          ? _value.utcOffset
          : utcOffset // ignore: cast_nullable_to_non_nullable
              as int?,
      vicinity: freezed == vicinity
          ? _value.vicinity
          : vicinity // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeometryCopyWith<$Res>? get geometry {
    if (_value.geometry == null) {
      return null;
    }

    return $GeometryCopyWith<$Res>(_value.geometry!, (value) {
      return _then(_value.copyWith(geometry: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OpeningHoursCopyWith<$Res>? get openingHours {
    if (_value.openingHours == null) {
      return null;
    }

    return $OpeningHoursCopyWith<$Res>(_value.openingHours!, (value) {
      return _then(_value.copyWith(openingHours: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlusCodeCopyWith<$Res>? get plusCode {
    if (_value.plusCode == null) {
      return null;
    }

    return $PlusCodeCopyWith<$Res>(_value.plusCode!, (value) {
      return _then(_value.copyWith(plusCode: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlaceImplCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$$PlaceImplCopyWith(
          _$PlaceImpl value, $Res Function(_$PlaceImpl) then) =
      __$$PlaceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'address_components')
      List<AddressComponent>? addressComponents,
      @JsonKey(name: 'adr_address') String? adrAddress,
      @JsonKey(name: 'business_status') String? businessStatus,
      @JsonKey(name: 'formatted_address') String? formattedAddress,
      @JsonKey(name: 'formatted_phone_number') String? formattedPhoneNumber,
      Geometry? geometry,
      String? icon,
      @JsonKey(name: 'icon_background_color') String? iconBackgroundColor,
      @JsonKey(name: 'icon_mask_base_uri') String? iconMaskBaseUri,
      @JsonKey(name: 'international_phone_number')
      String? internationalPhoneNumber,
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
      String? website});

  @override
  $GeometryCopyWith<$Res>? get geometry;
  @override
  $OpeningHoursCopyWith<$Res>? get openingHours;
  @override
  $PlusCodeCopyWith<$Res>? get plusCode;
}

/// @nodoc
class __$$PlaceImplCopyWithImpl<$Res>
    extends _$PlaceCopyWithImpl<$Res, _$PlaceImpl>
    implements _$$PlaceImplCopyWith<$Res> {
  __$$PlaceImplCopyWithImpl(
      _$PlaceImpl _value, $Res Function(_$PlaceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressComponents = freezed,
    Object? adrAddress = freezed,
    Object? businessStatus = freezed,
    Object? formattedAddress = freezed,
    Object? formattedPhoneNumber = freezed,
    Object? geometry = freezed,
    Object? icon = freezed,
    Object? iconBackgroundColor = freezed,
    Object? iconMaskBaseUri = freezed,
    Object? internationalPhoneNumber = freezed,
    Object? name = freezed,
    Object? openingHours = freezed,
    Object? photos = freezed,
    Object? placeId = freezed,
    Object? plusCode = freezed,
    Object? rating = freezed,
    Object? reference = freezed,
    Object? reviews = freezed,
    Object? types = freezed,
    Object? url = freezed,
    Object? userRatingsTotal = freezed,
    Object? utcOffset = freezed,
    Object? vicinity = freezed,
    Object? website = freezed,
  }) {
    return _then(_$PlaceImpl(
      addressComponents: freezed == addressComponents
          ? _value._addressComponents
          : addressComponents // ignore: cast_nullable_to_non_nullable
              as List<AddressComponent>?,
      adrAddress: freezed == adrAddress
          ? _value.adrAddress
          : adrAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      businessStatus: freezed == businessStatus
          ? _value.businessStatus
          : businessStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      formattedAddress: freezed == formattedAddress
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      formattedPhoneNumber: freezed == formattedPhoneNumber
          ? _value.formattedPhoneNumber
          : formattedPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      geometry: freezed == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      iconBackgroundColor: freezed == iconBackgroundColor
          ? _value.iconBackgroundColor
          : iconBackgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      iconMaskBaseUri: freezed == iconMaskBaseUri
          ? _value.iconMaskBaseUri
          : iconMaskBaseUri // ignore: cast_nullable_to_non_nullable
              as String?,
      internationalPhoneNumber: freezed == internationalPhoneNumber
          ? _value.internationalPhoneNumber
          : internationalPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      openingHours: freezed == openingHours
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as OpeningHours?,
      photos: freezed == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      plusCode: freezed == plusCode
          ? _value.plusCode
          : plusCode // ignore: cast_nullable_to_non_nullable
              as PlusCode?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      reviews: freezed == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>?,
      types: freezed == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      userRatingsTotal: freezed == userRatingsTotal
          ? _value.userRatingsTotal
          : userRatingsTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      utcOffset: freezed == utcOffset
          ? _value.utcOffset
          : utcOffset // ignore: cast_nullable_to_non_nullable
              as int?,
      vicinity: freezed == vicinity
          ? _value.vicinity
          : vicinity // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceImpl extends _Place {
  const _$PlaceImpl(
      {@JsonKey(name: 'address_components')
      final List<AddressComponent>? addressComponents,
      @JsonKey(name: 'adr_address') this.adrAddress,
      @JsonKey(name: 'business_status') this.businessStatus,
      @JsonKey(name: 'formatted_address') this.formattedAddress,
      @JsonKey(name: 'formatted_phone_number') this.formattedPhoneNumber,
      this.geometry,
      this.icon,
      @JsonKey(name: 'icon_background_color') this.iconBackgroundColor,
      @JsonKey(name: 'icon_mask_base_uri') this.iconMaskBaseUri,
      @JsonKey(name: 'international_phone_number')
      this.internationalPhoneNumber,
      this.name,
      @JsonKey(name: 'opening_hours') this.openingHours,
      final List<Photo>? photos,
      @JsonKey(name: 'place_id') this.placeId,
      @JsonKey(name: 'plus_code') this.plusCode,
      this.rating,
      this.reference,
      final List<Review>? reviews,
      final List<String>? types,
      this.url,
      @JsonKey(name: 'user_ratings_total') this.userRatingsTotal,
      @JsonKey(name: 'utc_offset') this.utcOffset,
      this.vicinity,
      this.website})
      : _addressComponents = addressComponents,
        _photos = photos,
        _reviews = reviews,
        _types = types,
        super._();

  factory _$PlaceImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceImplFromJson(json);

  final List<AddressComponent>? _addressComponents;
  @override
  @JsonKey(name: 'address_components')
  List<AddressComponent>? get addressComponents {
    final value = _addressComponents;
    if (value == null) return null;
    if (_addressComponents is EqualUnmodifiableListView)
      return _addressComponents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'adr_address')
  final String? adrAddress;
  @override
  @JsonKey(name: 'business_status')
  final String? businessStatus;
  @override
  @JsonKey(name: 'formatted_address')
  final String? formattedAddress;
  @override
  @JsonKey(name: 'formatted_phone_number')
  final String? formattedPhoneNumber;
  @override
  final Geometry? geometry;
  @override
  final String? icon;
  @override
  @JsonKey(name: 'icon_background_color')
  final String? iconBackgroundColor;
  @override
  @JsonKey(name: 'icon_mask_base_uri')
  final String? iconMaskBaseUri;
  @override
  @JsonKey(name: 'international_phone_number')
  final String? internationalPhoneNumber;
  @override
  final String? name;
  @override
  @JsonKey(name: 'opening_hours')
  final OpeningHours? openingHours;
  final List<Photo>? _photos;
  @override
  List<Photo>? get photos {
    final value = _photos;
    if (value == null) return null;
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'place_id')
  final String? placeId;
  @override
  @JsonKey(name: 'plus_code')
  final PlusCode? plusCode;
  @override
  final double? rating;
  @override
  final String? reference;
  final List<Review>? _reviews;
  @override
  List<Review>? get reviews {
    final value = _reviews;
    if (value == null) return null;
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _types;
  @override
  List<String>? get types {
    final value = _types;
    if (value == null) return null;
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? url;
  @override
  @JsonKey(name: 'user_ratings_total')
  final int? userRatingsTotal;
  @override
  @JsonKey(name: 'utc_offset')
  final int? utcOffset;
  @override
  final String? vicinity;
  @override
  final String? website;

  @override
  String toString() {
    return 'Place(addressComponents: $addressComponents, adrAddress: $adrAddress, businessStatus: $businessStatus, formattedAddress: $formattedAddress, formattedPhoneNumber: $formattedPhoneNumber, geometry: $geometry, icon: $icon, iconBackgroundColor: $iconBackgroundColor, iconMaskBaseUri: $iconMaskBaseUri, internationalPhoneNumber: $internationalPhoneNumber, name: $name, openingHours: $openingHours, photos: $photos, placeId: $placeId, plusCode: $plusCode, rating: $rating, reference: $reference, reviews: $reviews, types: $types, url: $url, userRatingsTotal: $userRatingsTotal, utcOffset: $utcOffset, vicinity: $vicinity, website: $website)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceImpl &&
            const DeepCollectionEquality()
                .equals(other._addressComponents, _addressComponents) &&
            (identical(other.adrAddress, adrAddress) ||
                other.adrAddress == adrAddress) &&
            (identical(other.businessStatus, businessStatus) ||
                other.businessStatus == businessStatus) &&
            (identical(other.formattedAddress, formattedAddress) ||
                other.formattedAddress == formattedAddress) &&
            (identical(other.formattedPhoneNumber, formattedPhoneNumber) ||
                other.formattedPhoneNumber == formattedPhoneNumber) &&
            (identical(other.geometry, geometry) ||
                other.geometry == geometry) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.iconBackgroundColor, iconBackgroundColor) ||
                other.iconBackgroundColor == iconBackgroundColor) &&
            (identical(other.iconMaskBaseUri, iconMaskBaseUri) ||
                other.iconMaskBaseUri == iconMaskBaseUri) &&
            (identical(
                    other.internationalPhoneNumber, internationalPhoneNumber) ||
                other.internationalPhoneNumber == internationalPhoneNumber) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.openingHours, openingHours) ||
                other.openingHours == openingHours) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.plusCode, plusCode) ||
                other.plusCode == plusCode) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.userRatingsTotal, userRatingsTotal) ||
                other.userRatingsTotal == userRatingsTotal) &&
            (identical(other.utcOffset, utcOffset) ||
                other.utcOffset == utcOffset) &&
            (identical(other.vicinity, vicinity) ||
                other.vicinity == vicinity) &&
            (identical(other.website, website) || other.website == website));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_addressComponents),
        adrAddress,
        businessStatus,
        formattedAddress,
        formattedPhoneNumber,
        geometry,
        icon,
        iconBackgroundColor,
        iconMaskBaseUri,
        internationalPhoneNumber,
        name,
        openingHours,
        const DeepCollectionEquality().hash(_photos),
        placeId,
        plusCode,
        rating,
        reference,
        const DeepCollectionEquality().hash(_reviews),
        const DeepCollectionEquality().hash(_types),
        url,
        userRatingsTotal,
        utcOffset,
        vicinity,
        website
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceImplCopyWith<_$PlaceImpl> get copyWith =>
      __$$PlaceImplCopyWithImpl<_$PlaceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceImplToJson(
      this,
    );
  }
}

abstract class _Place extends Place {
  const factory _Place(
      {@JsonKey(name: 'address_components')
      final List<AddressComponent>? addressComponents,
      @JsonKey(name: 'adr_address') final String? adrAddress,
      @JsonKey(name: 'business_status') final String? businessStatus,
      @JsonKey(name: 'formatted_address') final String? formattedAddress,
      @JsonKey(name: 'formatted_phone_number')
      final String? formattedPhoneNumber,
      final Geometry? geometry,
      final String? icon,
      @JsonKey(name: 'icon_background_color') final String? iconBackgroundColor,
      @JsonKey(name: 'icon_mask_base_uri') final String? iconMaskBaseUri,
      @JsonKey(name: 'international_phone_number')
      final String? internationalPhoneNumber,
      final String? name,
      @JsonKey(name: 'opening_hours') final OpeningHours? openingHours,
      final List<Photo>? photos,
      @JsonKey(name: 'place_id') final String? placeId,
      @JsonKey(name: 'plus_code') final PlusCode? plusCode,
      final double? rating,
      final String? reference,
      final List<Review>? reviews,
      final List<String>? types,
      final String? url,
      @JsonKey(name: 'user_ratings_total') final int? userRatingsTotal,
      @JsonKey(name: 'utc_offset') final int? utcOffset,
      final String? vicinity,
      final String? website}) = _$PlaceImpl;
  const _Place._() : super._();

  factory _Place.fromJson(Map<String, dynamic> json) = _$PlaceImpl.fromJson;

  @override
  @JsonKey(name: 'address_components')
  List<AddressComponent>? get addressComponents;
  @override
  @JsonKey(name: 'adr_address')
  String? get adrAddress;
  @override
  @JsonKey(name: 'business_status')
  String? get businessStatus;
  @override
  @JsonKey(name: 'formatted_address')
  String? get formattedAddress;
  @override
  @JsonKey(name: 'formatted_phone_number')
  String? get formattedPhoneNumber;
  @override
  Geometry? get geometry;
  @override
  String? get icon;
  @override
  @JsonKey(name: 'icon_background_color')
  String? get iconBackgroundColor;
  @override
  @JsonKey(name: 'icon_mask_base_uri')
  String? get iconMaskBaseUri;
  @override
  @JsonKey(name: 'international_phone_number')
  String? get internationalPhoneNumber;
  @override
  String? get name;
  @override
  @JsonKey(name: 'opening_hours')
  OpeningHours? get openingHours;
  @override
  List<Photo>? get photos;
  @override
  @JsonKey(name: 'place_id')
  String? get placeId;
  @override
  @JsonKey(name: 'plus_code')
  PlusCode? get plusCode;
  @override
  double? get rating;
  @override
  String? get reference;
  @override
  List<Review>? get reviews;
  @override
  List<String>? get types;
  @override
  String? get url;
  @override
  @JsonKey(name: 'user_ratings_total')
  int? get userRatingsTotal;
  @override
  @JsonKey(name: 'utc_offset')
  int? get utcOffset;
  @override
  String? get vicinity;
  @override
  String? get website;
  @override
  @JsonKey(ignore: true)
  _$$PlaceImplCopyWith<_$PlaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
