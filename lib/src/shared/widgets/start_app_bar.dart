import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StartAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  FontWeight? fontWeight;
  double? fontSize;
  double? elevation;
  StartAppBar({
    super.key,
    required this.title,
    this.fontWeight = FontWeight.bold,
    this.fontSize = 25.00,
    this.elevation = 5.00,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Theme.of(context).primaryColor,
      title: Text(
        title,
        style: TextStyle(
            fontWeight: fontWeight,
            color: Theme.of(context).secondaryHeaderColor,
            fontSize: fontSize!),
      ),
      elevation: elevation,
      iconTheme: IconThemeData(color: Theme.of(context).secondaryHeaderColor),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(65.0);
}
