import 'package:flutter/material.dart' show immutable, FontWeight;

@immutable
class FontConstants {
  const FontConstants._();
  static const String fontGilroyFamily = 'Gilroy';
  static const String fontWorkSansFamily = 'WorkSans';
}

@immutable
class FontWeightManager {
  const FontWeightManager._();
  static const FontWeight light = FontWeight.w300;
  static const FontWeight bold = FontWeight.w800;
}

@immutable
class FontSize {
  const FontSize._();
  static const double s12 = 12.0;
  static const double s16 = 16.0;
  static const double s36 = 36.0;
}
