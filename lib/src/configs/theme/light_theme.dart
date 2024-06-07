import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

// final primary = HexColor("#8d8d8d");
// final onPrimary = HexColor("#1d1d1d");
final primaryColor = HexColor("#e6ba23");
final onPrimaryColor = HexColor("#272525");
final inversPrimaryColor = HexColor("#010407");
final surfaceColor = HexColor("#f6f6f6");
final onSurfaceColor = HexColor("#424a3a");
final inverseSurfaceColor = HexColor("#c9f9ff");
final onInverseSurfaceColor = HexColor("#424a3a");
final secondaryColor = HexColor("#424a3a");
final onSecondaryColor = HexColor("#be5136");
final errorColor = HexColor("#b52127");
final onErrorColor = HexColor("1e1e1e");
ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.light(
        primary: primaryColor,
        onPrimary: onPrimaryColor,
        inversePrimary: inversPrimaryColor,
        primaryContainer: surfaceColor,
        surface: surfaceColor,
        inverseSurface: inverseSurfaceColor,
        onSurface: onSurfaceColor,
        secondary: secondaryColor,
        onSecondary: onSecondaryColor,
        onInverseSurface: onInverseSurfaceColor,
        error: errorColor,
        onError: onErrorColor),
    textTheme: textTheme,
    //filled button theme
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
          overlayColor: WidgetStatePropertyAll<Color>(secondaryColor),
          foregroundColor: WidgetStatePropertyAll<Color>(onPrimaryColor),
          backgroundColor: WidgetStatePropertyAll<Color>(primaryColor)),
    ),
    //outlined button theme
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
      foregroundColor: onSurfaceColor,
      side: BorderSide(color: onSurfaceColor),
    )),
    //text button theme
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        overlayColor: const WidgetStatePropertyAll<Color>(Colors.white38),
        foregroundColor: WidgetStatePropertyAll<Color>(onSurfaceColor),
        // backgroundColor: MaterialStatePropertyAll<Color>(primaryColor)
      ),
    ),
    //elevatedButton theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          overlayColor: WidgetStatePropertyAll<Color>(secondaryColor),
          foregroundColor: WidgetStatePropertyAll<Color>(onPrimaryColor),
          backgroundColor: WidgetStatePropertyAll<Color>(primaryColor)),
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
