import 'package:flutter/material.dart';

import 'font_manager.dart';

TextStyle _getTextStyle({
  required double fontSize,
  required String fontFamily,
  required Color color,
  required FontWeight fontWeight,
}) =>
    TextStyle(
      fontFamily: fontFamily,
      fontSize: fontSize,
      color: color,
    );
TextStyle geTextStyle({
  double fontSize = FontSize.s36,
  required Color color,
  String fontFamily = FontConstants.fontGilroyFamily,
}) =>
    _getTextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      color: color,
      fontWeight: FontWeightManager.bold,
    );
