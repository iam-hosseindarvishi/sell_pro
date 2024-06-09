import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../configs/theme/dark theme/dark_theme_colors.dart';

class AppAppbar extends StatelessWidget implements PreferredSizeWidget {
  Widget? title;
  Widget? leading;
  List<Widget>? actions;
  bool centerTitle;
  final BuildContext context;
  AppAppbar(
      {super.key,
      required this.context,
      this.title,
      this.leading,
      this.actions,
      this.centerTitle = false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: title,
        centerTitle: centerTitle,
        backgroundColor: DarkThemeColors.appBarBg,
        foregroundColor: DarkThemeColors.onSurfaceColor.withOpacity(.6),
        leading: leading,
        elevation: 50,
        actions: actions);
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
