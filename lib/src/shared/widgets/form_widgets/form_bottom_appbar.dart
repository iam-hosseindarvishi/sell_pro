
import 'package:flutter/material.dart';

import '../../../configs/theme/dark theme/dark_theme_colors.dart';

class FormBottomAppBar extends StatelessWidget {
  FormBottomAppBar({
    super.key,
    this.item,
  });
  final Widget? item;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: BottomAppBar(
          color: DarkThemeColors.appBarBg,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          shape: const CircularNotchedRectangle(),
          notchMargin: 8,
          height: kBottomNavigationBarHeight,
          child: item),
    );
  }
}