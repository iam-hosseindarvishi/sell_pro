import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sell_pro/src/configs/theme/dark%20theme/dark_theme_colors.dart';

import '../light theme/light_theme_colors.dart';

ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: DarkThemeColors.surfaceColor,
    useMaterial3: true,
    primaryColorDark: DarkThemeColors.primaryColor,
    primaryColorLight: LightThemeColors.primaryColor,
    colorScheme: ColorScheme.dark(
        primary: DarkThemeColors.primaryColor,
        inversePrimary: DarkThemeColors.inversePrimaryColor,
        onPrimary: DarkThemeColors.onPrimaryColor,
        primaryContainer: DarkThemeColors.surfaceColor,
        surface: DarkThemeColors.surfaceColor,
        inverseSurface: DarkThemeColors.inversSurfaceColor,
        onSurface: DarkThemeColors.onSurfaceColor,
        secondary: DarkThemeColors.secondaryColor,
        onSecondary: DarkThemeColors.onSecondaryColor,
        onInverseSurface: DarkThemeColors.onInverseSurfaceColor,
        error: DarkThemeColors.errorColor,
        onError: DarkThemeColors.onErrorColor),
    textTheme: textTheme,
    //text button theme
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        overlayColor: const WidgetStatePropertyAll<Color>(Colors.white38),
        foregroundColor:
            WidgetStatePropertyAll<Color>(DarkThemeColors.onSurfaceColor),
        // backgroundColor: MaterialStatePropertyAll<Color>(primaryColor)
      ),
    ),
    //outlined button theme
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
      foregroundColor: DarkThemeColors.onSurfaceColor,
      side: BorderSide(color: DarkThemeColors.onSurfaceColor),
    )),
    //filled button
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
          overlayColor:
              WidgetStatePropertyAll<Color>(DarkThemeColors.secondaryColor),
          foregroundColor:
              WidgetStatePropertyAll<Color>(DarkThemeColors.onPrimaryColor),
          backgroundColor:
              WidgetStatePropertyAll<Color>(DarkThemeColors.primaryColor)),
    ),
    //elevatedButton theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          overlayColor:
              WidgetStatePropertyAll<Color>(DarkThemeColors.secondaryColor),
          foregroundColor:
              WidgetStatePropertyAll<Color>(DarkThemeColors.onPrimaryColor),
          backgroundColor:
              WidgetStatePropertyAll<Color>(DarkThemeColors.primaryColor)),
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
