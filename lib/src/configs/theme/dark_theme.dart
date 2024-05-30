import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sell_pro/src/configs/theme/light_theme.dart';

final primary = HexColor("#3C404B");
final onPrimary = HexColor("#c9f9ff");
final inversePrimary = HexColor("#");
final background = HexColor("#1f1f1b");
final onBackground = HexColor("#f6f6f6");
final surface = HexColor("#272e44");
final onSurface = HexColor("#c9f9ff");
final secondary = HexColor("#424a3a");
final onSecondary = HexColor("#be5136");
final onInverseSurface = HexColor("#424a3a");
final inversPrimary = HexColor("#66cc99");
ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.dark(
      background: background,
      onBackground: onBackground,
      primary: primary,
      inversePrimary: inversPrimary,
      onPrimary: onPrimary,
      primaryContainer: background,
      surface: surface,
      inverseSurface: inverseSurface,
      onSurface: onSurface,
      secondary: secondary,
      onSecondary: onSecondary,
      onInverseSurface: onInverseSurface,
    ),
    textTheme: textTheme,
    //text theme

    //outlined button theme
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
      foregroundColor: onBackground,
      side: BorderSide(color: onBackground),
    )),
    //filled button
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
          overlayColor: MaterialStatePropertyAll<Color>(secondary),
          foregroundColor: MaterialStatePropertyAll<Color>(onPrimary),
          backgroundColor: MaterialStatePropertyAll<Color>(primary)),
    ),
    //elevatedButton theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          overlayColor: MaterialStatePropertyAll<Color>(secondary),
          foregroundColor: MaterialStatePropertyAll<Color>(onPrimary),
          backgroundColor: MaterialStatePropertyAll<Color>(primary)),
    ));

// text theme
const fontFamily = "Sahel";

TextTheme textTheme = TextTheme(
    // body text style
    bodyLarge: TextStyle(
        fontFamily: fontFamily,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: onPrimary),
    bodyMedium: TextStyle(
        fontFamily: fontFamily,
        fontSize: 14.0,
        fontWeight: FontWeight.w600,
        color: onPrimary),
    bodySmall: TextStyle(
        fontFamily: fontFamily,
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: onPrimary),
    // title text style
    titleLarge: TextStyle(
        fontFamily: fontFamily,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: onPrimary),
    titleMedium: TextStyle(
        fontFamily: fontFamily,
        fontSize: 14.0,
        fontWeight: FontWeight.bold,
        color: onPrimary),
    titleSmall: TextStyle(
        fontFamily: fontFamily,
        fontSize: 12.0,
        fontWeight: FontWeight.bold,
        color: onPrimary),
    //for display text style
    displayLarge: TextStyle(
        fontFamily: fontFamily,
        fontSize: 21.0,
        fontWeight: FontWeight.bold,
        color: onPrimary),
    displayMedium: TextStyle(
        fontFamily: fontFamily,
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: onPrimary),
    displaySmall: TextStyle(
        fontFamily: fontFamily,
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
        color: onPrimary),
    // label text style
    labelLarge: TextStyle(
        fontFamily: fontFamily,
        fontSize: 18.0,
        fontWeight: FontWeight.w800,
        color: onPrimary),
    labelMedium: TextStyle(
        fontFamily: fontFamily,
        fontSize: 14.0,
        fontWeight: FontWeight.bold,
        color: onPrimary),
    labelSmall: TextStyle(
        fontFamily: fontFamily,
        fontSize: 12.0,
        fontWeight: FontWeight.bold,
        color: onPrimary),
    // headline styles
    headlineMedium: TextStyle(
        fontFamily: fontFamily,
        fontSize: 14.0,
        wordSpacing: 2,
        fontWeight: FontWeight.w600,
        color: onPrimary),
    headlineLarge: TextStyle(
        fontFamily: fontFamily,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: onPrimary),
    headlineSmall: TextStyle(
        fontFamily: fontFamily,
        fontSize: 12.0,
        wordSpacing: 2,
        fontWeight: FontWeight.w600,
        color: onPrimary));
