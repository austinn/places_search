// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'structured_formatting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StructuredFormattingImpl _$$StructuredFormattingImplFromJson(
        Map<String, dynamic> json) =>
    _$StructuredFormattingImpl(
      mainText: json['main_text'] as String,
      mainTextMatchedSubstrings:
          (json['main_text_matched_substrings'] as List<dynamic>)
              .map((e) => MatchedSubstring.fromJson(e as Map<String, dynamic>))
              .toList(),
      secondaryText: json['secondary_text'] as String?,
      secondaryTextMatchedSubstrings:
          (json['secondary_text_matched_substrings'] as List<dynamic>?)
              ?.map((e) => MatchedSubstring.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$StructuredFormattingImplToJson(
        _$StructuredFormattingImpl instance) =>
    <String, dynamic>{
      'main_text': instance.mainText,
      'main_text_matched_substrings': instance.mainTextMatchedSubstrings,
      'secondary_text': instance.secondaryText,
      'secondary_text_matched_substrings':
          instance.secondaryTextMatchedSubstrings,
    };
