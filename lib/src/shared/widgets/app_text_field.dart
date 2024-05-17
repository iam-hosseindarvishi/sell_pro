// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../core/styles/app_text_field_style.dart';

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
    return TextField(
      keyboardType: keyboardType,
      obscureText: enableObscureText!,
      autocorrect: enableAutoCorrect!,
      enableSuggestions: enableSuggestions!,
      maxLines: 1,
      decoration: InputDecoration(
          hintText: hintText,
          enabledBorder:
              AppTextFieldBorderStyle(Theme.of(context).colorScheme.secondary)
                  .enabledBorder,
          focusedBorder: AppTextFieldBorderStyle(Theme.of(context).primaryColor)
              .focusedBorder,
          errorBorder:
              AppTextFieldBorderStyle(Theme.of(context).colorScheme.error)
                  .errorBorder),
    );
  }
}
