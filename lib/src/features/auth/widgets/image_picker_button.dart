import 'package:flutter/material.dart';

class ImagePickerButton extends StatelessWidget {
  final String text;
  final IconData icon;
  double? iconSize;
  double? fontSize;
  FontWeight? fontWeight;
  final Function onTab;
  ImagePickerButton(
      {super.key,
      required this.text,
      required this.icon,
      required this.onTab,
      this.fontSize = 18.0,
      this.fontWeight = FontWeight.normal,
      this.iconSize = 50.0});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            size: iconSize,
            icon,
            color: Theme.of(context).primaryColor,
          ),
          Text(
            text,
            style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
          )
        ],
      ),
    );
  }
}
