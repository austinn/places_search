import 'package:freezed_annotation/freezed_annotation.dart';

part 'plus_code.freezed.dart';
part 'plus_code.g.dart';

@freezed
class PlusCode with _$PlusCode {
  const factory PlusCode({
    required String globalCode,
    String? compoundCode,
  }) = _PlusCode;

  factory PlusCode.fromJson(Map<String, dynamic> json) => _$PlusCodeFromJson(json);
}
