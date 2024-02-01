import 'package:freezed_annotation/freezed_annotation.dart';

part 'photos.freezed.dart';
part 'photos.g.dart';

@freezed
class Photo with _$Photo {
  @JsonSerializable(explicitToJson: true)
  const factory Photo({
    required num height,
    @JsonKey(name: 'html_attributions') required List<String> htmlAttributions,
    @JsonKey(name: 'photo_reference') required String photoReference,
    required num width,
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}
