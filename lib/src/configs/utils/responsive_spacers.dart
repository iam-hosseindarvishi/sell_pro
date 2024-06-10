// Spacer با ارتفاع رسپانسیو
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResponsiveXSpace extends StatelessWidget {
  const ResponsiveXSpace({super.key, required this.precentage});
  final double precentage;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    final double height = (screenHeight * precentage) / 100;
    return SizedBox(
      height: height,
    );
  }
}

// Spacer با عرض رسپانسیو
class ResponsiveYSpace extends StatelessWidget {
  const ResponsiveYSpace({super.key, required this.precentage});
  final double precentage;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).height;
    final width = (screenWidth * precentage) / 100;
    return SizedBox(
      width: width,
    );
  }
}
