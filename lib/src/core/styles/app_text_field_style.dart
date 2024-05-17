import 'package:flutter/material.dart';

class AppTextFieldBorderStyle {
  final Color borderColor;
  AppTextFieldBorderStyle(this.borderColor);

  // enabled outline
  OutlineInputBorder get enabledBorder {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.0),
        borderSide: BorderSide(width: 2.0, color: borderColor));
  }

  // focused border
  OutlineInputBorder get focusedBorder {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.0),
        borderSide: BorderSide(width: 2.0, color: borderColor));
  }

  // error Border
  OutlineInputBorder get errorBorder {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.0),
        borderSide: BorderSide(width: 2, color: borderColor));
  }
}
