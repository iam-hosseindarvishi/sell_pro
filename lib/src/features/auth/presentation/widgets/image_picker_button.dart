import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ImagePickerButton extends StatelessWidget {
  final String text;
  final IconData icon;
  double? iconSize;
  double? fontSize;
  FontWeight? fontWeight;
  final handleTab;
  ImagePickerButton(
      {super.key,
      required this.text,
      required this.icon,
      required this.handleTab,
      this.fontSize = 18.0,
      this.fontWeight = FontWeight.bold,
      this.iconSize = 50.0});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handleTab,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            size: iconSize,
            icon,
            color: Theme.of(context).colorScheme.onBackground,
          ),
          Text(
            text,
            style: TextStyle(
                fontFamily: "Sahel",
                color: Theme.of(context).colorScheme.onBackground,
                fontSize: fontSize,
                fontWeight: fontWeight),
          )
        ],
      ),
    );
  }
}
