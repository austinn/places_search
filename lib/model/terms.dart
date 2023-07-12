import 'package:freezed_annotation/freezed_annotation.dart';

part 'terms.freezed.dart';
part 'terms.g.dart';

@freezed
class Terms with _$Terms {
  factory Terms({
    int? offset,
    String? value,
  }) = _Terms;

  factory Terms.fromJson(Map<String, dynamic> json) => _$TermsFromJson(json);
}
