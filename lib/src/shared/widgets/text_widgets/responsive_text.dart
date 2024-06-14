import 'package:flutter/material.dart';
import 'package:sell_pro/src/configs/utils/responsive_size.dart';

class ResponsiveText extends StatelessWidget {
  const ResponsiveText(
      {super.key, required this.text, required this.baseFontSize, this.style});
  final String text;
  final double baseFontSize;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final fontSize = getFontSize(context, baseFontSize);
    return Text(
      text,
      style: style?.copyWith(fontSize: fontSize, fontFamily: "IranSans") ??
          TextStyle(fontSize: fontSize, fontFamily: "IranSans"),
    );
  }
}
