import 'package:flutter/material.dart';

import '../../../configs/theme/dark theme/dark_theme_colors.dart';

class FormFloatingActionButton extends StatelessWidget {
  const FormFloatingActionButton({
    super.key,
    required this.icon,
    required this.handleOnPressed,
  });
  final Icon icon;
  final Function handleOnPressed;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50))),
      backgroundColor: DarkThemeColors.appBarBg,
      foregroundColor: DarkThemeColors.onSurfaceColor,
      onPressed: () => handleOnPressed,
      child: icon,
    );
  }
}
