import 'package:flutter/material.dart';
import 'package:stream_pay/resources/color_manager.dart';
import 'package:stream_pay/resources/font_manager.dart';
import 'package:stream_pay/resources/styles_manager.dart';
import 'package:stream_pay/resources/value_manager.dart';

ThemeData getThemeData() => ThemeData(
      //main app color

      // primaryColor: ColorManager.primary,
      // useMaterial3: true,
      scaffoldBackgroundColor: ColorManager.primary,
      //text theme
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: FontSize.s36,
          fontWeight: FontWeight.bold,
          foreground: Paint()
            ..shader = LinearGradient(
              colors: [ColorManager.logoGrad1, ColorManager.white],
              stops: const [0.69, 0.99],
            ).createShader(
              const Rect.fromLTWH(0.0, 0.0, 186.0, 44.0),
            ),
        ),
        bodyLarge: geTextStyle(
          color: ColorManager.white,
          fontSize: FontSize.s36,
        ).copyWith(fontWeight: FontWeight.bold),
        bodyMedium: geTextStyle(
          color: ColorManager.greyText,
          fontSize: FontSize.s16,
          fontFamily: FontConstants.fontWorkSansFamily,
        ),
        bodySmall: geTextStyle(
          color: ColorManager.greyText,
          fontSize: FontSize.s12,
          fontFamily: FontConstants.fontWorkSansFamily,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: ColorManager.white,
          backgroundColor: ColorManager.blueButton,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          minimumSize: const Size(double.infinity, AppSize.s51),
        ),
      ),
    );
      //appBar theme
    //   appBarTheme: AppBarTheme(
    //     color: ColorManager.white,
    //     centerTitle: true,
    //     elevation: AppSize.s0,
    //     titleTextStyle: getRegular(
    //       fontSize: FontSize.s16,
    //       color: ColorManager.white,
    //     ),
    //   )
    //   elevatedButtonTheme: ElevatedButtonThemeData(
    //     style: ElevatedButton.styleFrom(
    //       foregroundColor: Colors.white,
    //       backgroundColor: Colors.blue,
    //       shape: RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(8.0),
    //       ),
    //     ),
    //   ),
    // );
