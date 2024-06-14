// تابعی برای محاسبه اندازه فونت بر اساس اندازه صفحه

import 'package:flutter/material.dart';
import 'dart:math';

double getFontSize(BuildContext context, double baseSize) {
  final screenWidth = MediaQuery.sizeOf(context).width;
  final screenHeight = MediaQuery.sizeOf(context).height;
  final size = min(screenWidth, screenHeight);
  return baseSize * (size / 640);
}
