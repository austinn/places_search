import 'package:flutter_google_places_sdk/flutter_google_places_sdk.dart' as sdk;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_component.freezed.dart';
part 'address_component.g.dart';

@freezed
class AddressComponent with _$AddressComponent {
  const factory AddressComponent({
    required String longName,
    required String shortName,
    required List<String> types,
  }) = _AddressComponent;

  factory AddressComponent.fromSDK(sdk.AddressComponent adrc) {
    return AddressComponent(
      longName: adrc.name,
      shortName: adrc.shortName,
      types: adrc.types,
    );
  }
  factory AddressComponent.fromJson(Map<String, dynamic> json) => _$AddressComponentFromJson(json);
}
