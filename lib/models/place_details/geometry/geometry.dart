import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:places_search/models/place_details/geometry/bounds.dart';
import 'package:places_search/models/place_details/geometry/latlngliteral.dart';

part 'geometry.freezed.dart';
part 'geometry.g.dart';

@freezed
class Geometry with _$Geometry {
  const factory Geometry({
    required LatLngLiteral location,
    required Bounds viewport,
  }) = _Geometry;

  factory Geometry.fromJson(Map<String, dynamic> json) => _$GeometryFromJson(json);
}
