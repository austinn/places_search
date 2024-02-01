import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';
part 'review.g.dart';

@freezed
class Review with _$Review {
  const factory Review({
    required String authorName,
    required int rating,
    required String relativeTimeDescription,
    required int time,
    String? authorUrl,
    String? language,
    String? originalLanguage,
    String? profilePhotoUrl,
    String? text,
    bool? translated,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
