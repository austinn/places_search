import 'package:freezed_annotation/freezed_annotation.dart';

part 'terms.freezed.dart';
part 'terms.g.dart';

@freezed
class Terms with _$Terms {
  factory Terms({
    required num offset,
    required String value,
  }) = _Terms;

  factory Terms.fromJson(Map<String, dynamic> json) => _$TermsFromJson(json);
}
