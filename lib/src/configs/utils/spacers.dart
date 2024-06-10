// spacer  با ارتفاع ثابت
import 'package:flutter/material.dart';

class XSpace extends StatelessWidget {
  const XSpace({super.key, required this.height});
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
// Spacer با عرض ثابت

class YSpace extends StatelessWidget {
  const YSpace({super.key, required this.width});
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
