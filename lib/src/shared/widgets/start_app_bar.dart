import 'package:flutter/material.dart';
import 'package:sell_pro/src/configs/theme/theme_manager.dart';

// ignore: must_be_immutable
class StartAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  FontWeight? fontWeight;
  double? fontSize;
  double? elevation;
  StartAppBar({
    super.key,
    required this.title,
    this.fontWeight = FontWeight.bold,
    this.fontSize = 25.00,
    this.elevation = 10.00,
  });

  @override
  State<StartAppBar> createState() => _StartAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(65.0);
}

class _StartAppBarState extends State<StartAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Theme.of(context).colorScheme.background,
      title: Text(
        widget.title,
        style: TextStyle(
            fontFamily: "Sahel",
            fontWeight: widget.fontWeight,
            color: Theme.of(context).colorScheme.primary,
            fontSize: widget.fontSize!),
      ),
      elevation: widget.elevation,
      iconTheme: IconThemeData(color: Theme.of(context).colorScheme.primary),
    );
  }
}
