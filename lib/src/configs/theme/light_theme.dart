import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

final primary = HexColor("#254222");
final background = HexColor("#cae4c5");
final onPrimary = HexColor("#cae4c5");
final secondary = HexColor("#99cc66");
final inversPrimary = HexColor("#ece2b1");
ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.light(
      background: background,
      primary: primary,
      primaryContainer: background,
      onBackground: primary,
      onPrimary: onPrimary,
      secondary: secondary,
      secondaryContainer: onPrimary,
      onSecondary: primary,
      onSecondaryContainer: primary,
      inversePrimary: background,
    ),
    textTheme: textTheme,
    //text theme

    //outlined button theme
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
      side: BorderSide(color: primary),
    )),
    //elevatedButton theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        overlayColor: MaterialStatePropertyAll<Color>(primary),
        backgroundColor: MaterialStatePropertyAll<Color>(primary),
        padding: const MaterialStatePropertyAll<EdgeInsets>(
            EdgeInsets.symmetric(horizontal: 12, vertical: 8)),
      ),
    ));

// text theme
final fontFamily = "Sahel";

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
