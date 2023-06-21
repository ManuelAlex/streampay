import 'package:flutter/material.dart' show immutable, Color;
import 'package:stream_pay/extensions/views/color_extension.dart';

@immutable
class ColorManager {
  const ColorManager._();
  static Color primary = "#17043b".stringToColor();
  static Color primary2 = "#351391".stringToColor();
  static Color white = "#FFFFFF".stringToColor();
  static Color logoGrad1 = "#5B5BFF".stringToColor();
  static Color greyText = "#C3C3D6".stringToColor();
  static Color blueButton = "#5050FF".stringToColor();
}
