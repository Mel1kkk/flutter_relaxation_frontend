import 'package:figma_frontend_relaxation/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class TextTypography {
  TextTypography._();

  static $TextTypographyHeadline get headline => $TextTypographyHeadline();
  static $TextTypographyParagraph get paragraph => $TextTypographyParagraph();
}

abstract interface class $TextTypographyBase {
  List<String> get names;
  List<TextStyle> get values;
}

class $TextTypographyHeadline implements $TextTypographyBase {
  $TextTypographyHeadline();

  final _baseStyle = const TextStyle(
    fontFamily: FontFamily.manrope,
    fontWeight: FontWeight.w600,
  );

  TextStyle get large =>
      _baseStyle.copyWith(fontSize: 24, height: 31 / 26);

  TextStyle get medium => _baseStyle.copyWith(fontSize: 18, height: 22 / 18);

  TextStyle get small => _baseStyle.copyWith(fontSize: 16, height: 21 / 16);


  @override
  List<String> get names => [
    r'large',
    r'medium',
    r'small',
  ];

  @override
  List<TextStyle> get values => [large, medium, small];
}

class $TextTypographyParagraph implements $TextTypographyBase {
  $TextTypographyParagraph();

  final _baseStyle = const TextStyle(
    fontFamily: FontFamily.manrope,
    fontWeight: FontWeight.w400,
  );

  TextStyle get large => _baseStyle.copyWith(fontSize: 18, height: 26 / 18);

  TextStyle get xMedium => _baseStyle.copyWith(fontSize: 16, height: 22 / 16);

  TextStyle get medium => _baseStyle.copyWith(fontSize: 14, height: 18 / 14);

  TextStyle get small => _baseStyle.copyWith(fontSize: 12, height: 15 / 12);

  @override
  List<String> get names => [r'large', r'xMedium', r'medium', r'small'];

  @override
  List<TextStyle> get values => [large, xMedium, medium, small];
}
