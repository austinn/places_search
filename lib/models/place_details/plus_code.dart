import 'package:freezed_annotation/freezed_annotation.dart';

part 'plus_code.freezed.dart';
part 'plus_code.g.dart';

@freezed
class PlusCode with _$PlusCode {
  @JsonSerializable(explicitToJson: true)
  const factory PlusCode({
    @JsonKey(name: 'global_code') required String globalCode,
    @JsonKey(name: 'compound_code') String? compoundCode,
  }) = _PlusCode;

  factory PlusCode.fromJson(Map<String, dynamic> json) => _$PlusCodeFromJson(json);
}
