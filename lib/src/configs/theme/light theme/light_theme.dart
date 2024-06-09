import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sell_pro/src/configs/theme/dark%20theme/dark_theme_colors.dart';

import 'light_theme_colors.dart';

// static final primary = HexColor("#8d8d8d");
// static final onPrimary = HexColor("#1d1d1d");

ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: LightThemeColors.surfaceColor,
    primaryColorDark: DarkThemeColors.primaryColor,
    primaryColorLight: LightThemeColors.primaryColor,
    colorScheme: ColorScheme.light(
        primary: LightThemeColors.primaryColor,
        onPrimary: LightThemeColors.onPrimaryColor,
        inversePrimary: LightThemeColors.inversPrimaryColor,
        primaryContainer: LightThemeColors.surfaceColor,
        surface: LightThemeColors.surfaceColor,
        inverseSurface: LightThemeColors.inverseSurfaceColor,
        onSurface: LightThemeColors.onSurfaceColor,
        secondary: LightThemeColors.secondaryColor,
        onSecondary: LightThemeColors.onSecondaryColor,
        onInverseSurface: LightThemeColors.onInverseSurfaceColor,
        error: LightThemeColors.errorColor,
        onError: LightThemeColors.onErrorColor),
    textTheme: textTheme,
    //filled button theme
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
          overlayColor:
              WidgetStatePropertyAll<Color>(LightThemeColors.secondaryColor),
          foregroundColor:
              WidgetStatePropertyAll<Color>(LightThemeColors.onPrimaryColor),
          backgroundColor:
              WidgetStatePropertyAll<Color>(LightThemeColors.primaryColor)),
    ),
    //outlined button theme
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
      foregroundColor: LightThemeColors.onSurfaceColor,
      side: BorderSide(color: LightThemeColors.onSurfaceColor),
    )),
    //text button theme
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        overlayColor: const WidgetStatePropertyAll<Color>(Colors.white38),
        foregroundColor:
            WidgetStatePropertyAll<Color>(LightThemeColors.onSurfaceColor),
        // backgroundColor: MaterialStatePropertyAll<Color>(primaryColor)
      ),
    ),
    //elevatedButton theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          overlayColor:
              WidgetStatePropertyAll<Color>(LightThemeColors.secondaryColor),
          foregroundColor:
              WidgetStatePropertyAll<Color>(LightThemeColors.onPrimaryColor),
          backgroundColor:
              WidgetStatePropertyAll<Color>(LightThemeColors.primaryColor)),
    ));

// text theme
const fontFamily = "IranSans";

TextTheme textTheme = const TextTheme(
    // body text style
    bodyLarge: TextStyle(
      fontFamily: fontFamily,
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: TextStyle(
      fontFamily: fontFamily,
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
    ),
    bodySmall: TextStyle(
      fontFamily: fontFamily,
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
    ),
    // title text style
    titleLarge: TextStyle(
      fontFamily: fontFamily,
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: TextStyle(
      fontFamily: fontFamily,
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
    ),
    titleSmall: TextStyle(
      fontFamily: fontFamily,
      fontSize: 12.0,
      fontWeight: FontWeight.bold,
    ),
    //for display text style
    displayLarge: TextStyle(
      fontFamily: fontFamily,
      fontSize: 21.0,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      fontFamily: fontFamily,
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
    ),
    displaySmall: TextStyle(
      fontFamily: fontFamily,
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
    ),
    // label text style
    labelLarge: TextStyle(
      fontFamily: fontFamily,
      fontSize: 18.0,
      fontWeight: FontWeight.w800,
    ),
    labelMedium: TextStyle(
      fontFamily: fontFamily,
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
    ),
    labelSmall: TextStyle(
      fontFamily: fontFamily,
      fontSize: 12.0,
      fontWeight: FontWeight.bold,
    ),
    // headline styles
    headlineMedium: TextStyle(
      fontFamily: fontFamily,
      fontSize: 14.0,
      wordSpacing: 2,
      fontWeight: FontWeight.w600,
    ),
    headlineLarge: TextStyle(
      fontFamily: fontFamily,
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: TextStyle(
      fontFamily: fontFamily,
      fontSize: 12.0,
      wordSpacing: 2,
      fontWeight: FontWeight.w600,
    ));
