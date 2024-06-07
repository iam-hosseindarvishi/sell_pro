import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

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
        backgroundColor: HexColor("#313B44"),
        foregroundColor: HexColor("#AAA8AD"),
        leading: leading,
        elevation: 50,
        actions: actions);
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
