import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:places_search/models/place_details/geometry/latlngliteral.dart';

part 'bounds.freezed.dart';
part 'bounds.g.dart';

@freezed
class Bounds with _$Bounds {
  @JsonSerializable(explicitToJson: true)
  const factory Bounds({
    required LatLngLiteral northeast,
    required LatLngLiteral southwest,
  }) = _Bounds;

  factory Bounds.fromJson(Map<String, dynamic> json) => _$BoundsFromJson(json);
}
