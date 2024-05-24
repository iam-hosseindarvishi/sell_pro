import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sell_pro/src/configs/theme/theme_mode_provider.dart';

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
      actions: [
        Consumer(
          builder: (context, ref, child) {
            final theme = ref.watch(themeModeProvider);
            return IconButton(
                onPressed: () {
                  ref.read(themeModeProvider.notifier).state =
                      theme == ThemeMode.light
                          ? ThemeMode.dark
                          : ThemeMode.light;
                },
                icon: Icon(theme == ThemeData.dark
                    ? Icons.light_mode
                    : Icons.dark_mode));
          },
        )
      ],
      centerTitle: true,
      backgroundColor: Theme.of(context).colorScheme.primary,
      title: Text(
        widget.title,
        style: TextStyle(
            fontFamily: "Sahel",
            fontWeight: widget.fontWeight,
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: widget.fontSize!),
      ),
      elevation: widget.elevation,
      iconTheme: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
    );
  }
}
