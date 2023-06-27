import 'package:flutter/material.dart' show immutable, Color;
import 'package:stream_pay/extensions/views/color_extension.dart';

@immutable
class ColorManager {
  const ColorManager._();
  static Color primary = "#17043b".stringToColor();
  static Color primary2 = "#351391".stringToColor();
  static Color background = "#55559C".stringToColor();
  static Color white = "#FFFFFF".stringToColor();
  static Color logoGrad1 = "#5B5BFF".stringToColor();
  static Color greyText = "#C3C3D6".stringToColor();
  static Color blueButton = "#5050FF".stringToColor();
  static Color redPink = "#FE53BB".stringToColor();
  static Color borderColor = "#D1D1FF24".stringToColor();
  static Color backGroundPink = const Color(0xFFFE53BB);
  static Color backGroundPurple1 = const Color(0x7F54549C);
  static Color backGroundPurple2 = const Color(0xFF454578);
  static Color backGroundAsh = const Color(0xB2FAFAFF);
}
