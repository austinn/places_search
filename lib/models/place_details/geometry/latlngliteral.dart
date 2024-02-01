import 'package:freezed_annotation/freezed_annotation.dart';

part 'latlngliteral.freezed.dart';
part 'latlngliteral.g.dart';

@freezed
class LatLngLiteral with _$LatLngLiteral {
  const factory LatLngLiteral({
    required double lat,
    required double lng,
  }) = _LatLngLiteral;

  factory LatLngLiteral.fromJson(Map<String, dynamic> json) => _$LatLngLiteralFromJson(json);
}
