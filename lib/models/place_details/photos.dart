import 'package:freezed_annotation/freezed_annotation.dart';

part 'photos.freezed.dart';
part 'photos.g.dart';

@freezed
class Photo with _$Photo {
  const factory Photo({
    required num height,
    required List<String> htmlAttributions,
    required String photoReference,
    required num width,
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}
