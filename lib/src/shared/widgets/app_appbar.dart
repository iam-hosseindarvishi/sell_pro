import 'package:flutter/material.dart';

class AppAppbar extends StatelessWidget implements PreferredSizeWidget {
  Widget? title;
  Widget? leading;
  List<Widget>? actions;
  bool centerTitle;
  AppAppbar(
      {super.key,
      this.title,
      this.leading,
      this.actions,
      this.centerTitle = false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: title,
        centerTitle: centerTitle,
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        leading: leading,
        actions: actions);
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(65.0);
}
