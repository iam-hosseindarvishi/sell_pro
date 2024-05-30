import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

final primary = HexColor("#424a3a");
final inversPrimary = HexColor("#010407");
final background = HexColor("#f6f6f6");
final onBackground = HexColor("#424a3a");
final onPrimary = HexColor("#d6ecd7");
final surface = HexColor("#272e44");
final onSurface = HexColor("#c9f9ff");
final inverseSurface = HexColor("#c9f9ff");
final onInverseSurface = HexColor("#424a3a");
final secondary = HexColor("#424a3a");
final onSecondary = HexColor("#be5136");
ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.light(
        background: background,
        primary: primary,
        onPrimary: onPrimary,
        inversePrimary: inversPrimary,
        primaryContainer: background,
        onBackground: onBackground,
        surface: surface,
        inverseSurface: inverseSurface,
        onSurface: onSurface,
        secondary: secondary,
        onSecondary: onSecondary,
        onInverseSurface: onInverseSurface),
    textTheme: textTheme,
    //filled button theme
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
          overlayColor: MaterialStatePropertyAll<Color>(secondary),
          foregroundColor: MaterialStatePropertyAll<Color>(onPrimary),
          backgroundColor: MaterialStatePropertyAll<Color>(primary)),
    ),
    //outlined button theme
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
      side: BorderSide(color: onBackground),
    )),
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
