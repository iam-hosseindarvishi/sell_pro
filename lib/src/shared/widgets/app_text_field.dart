// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
  int? maxLines = 1;
  final TextInputType keyboardType;
  bool? enableObscureText;
  bool? enableAutoCorrect;
  bool? enableSuggestions;
  AppTextField(
      {super.key,
      required this.hintText,
      this.maxLines,
      this.enableObscureText = false,
      this.enableAutoCorrect = true,
      this.enableSuggestions = true,
      required this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 5.0,
        shadowColor: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(20.0),
        child: TextField(
          keyboardType: keyboardType,
          obscureText: enableObscureText!,
          autocorrect: enableAutoCorrect!,
          enableSuggestions: enableSuggestions!,
          maxLines: 1,
          //decoration of field
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Sahel",
                fontSize: 15.0,
                color: Theme.of(context).colorScheme.onPrimary),
            filled: true,
            fillColor: Theme.of(context).colorScheme.primary,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20.0)),
            contentPadding: EdgeInsets.all(16.0),
          ),
          style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
              fontFamily: "Sahel",
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
              wordSpacing: 2.0,
              fontSize: 16),
        ));
  }
}
