import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';
part 'review.g.dart';

@freezed
class Review with _$Review {
  @JsonSerializable(explicitToJson: true)
  const factory Review({
    @JsonKey(name: 'author_name') required String authorName,
    required int rating,
    @JsonKey(name: 'relative_time_description') required String relativeTimeDescription,
    required int time,
    @JsonKey(name: 'author_url') String? authorUrl,
    String? language,
    @JsonKey(name: 'original_language') String? originalLanguage,
    @JsonKey(name: 'profile_photo_url') String? profilePhotoUrl,
    String? text,
    bool? translated,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
