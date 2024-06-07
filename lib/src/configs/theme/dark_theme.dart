import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

// final primary = HexColor("#3C404B");
// final onPrimary = HexColor("#c9f9ff");
final primaryColor = HexColor("#313B44");
final onPrimaryColor = HexColor("#AAA8AD");
final inversePrimaryColor = HexColor("#cec4bb");
final surfaceColor = HexColor("#1C1D22");
final onSurfaceColor = HexColor("#AAA8AD");
final inversSurfaceColor = HexColor("#74b6bb");
final onInverseSurfaceColor = HexColor("#555752");
final secondaryColor = HexColor("#8B4944");
final onSecondaryColor = HexColor("#606467");
final errorColor = HexColor("#E62815");
final onErrorColor = HexColor("313B44");
ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: surfaceColor,
    useMaterial3: true,
    colorScheme: ColorScheme.dark(
        primary: primaryColor,
        inversePrimary: inversePrimaryColor,
        onPrimary: onPrimaryColor,
        primaryContainer: surfaceColor,
        surface: surfaceColor,
        inverseSurface: inversSurfaceColor,
        onSurface: onSurfaceColor,
        secondary: secondaryColor,
        onSecondary: onSecondaryColor,
        onInverseSurface: onInverseSurfaceColor,
        error: errorColor,
        onError: onErrorColor),
    textTheme: textTheme,
    //text button theme
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        overlayColor: const WidgetStatePropertyAll<Color>(Colors.white38),
        foregroundColor: WidgetStatePropertyAll<Color>(onSurfaceColor),
        // backgroundColor: MaterialStatePropertyAll<Color>(primaryColor)
      ),
    ),
    //outlined button theme
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
      foregroundColor: onSurfaceColor,
      side: BorderSide(color: onSurfaceColor),
    )),
    //filled button
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
          overlayColor: WidgetStatePropertyAll<Color>(secondaryColor),
          foregroundColor: WidgetStatePropertyAll<Color>(onPrimaryColor),
          backgroundColor: WidgetStatePropertyAll<Color>(primaryColor)),
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
