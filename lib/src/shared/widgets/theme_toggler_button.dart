import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sell_pro/src/configs/theme/dark%20theme/dark_theme_colors.dart';
import 'package:sell_pro/src/configs/theme/theme_mode_provider.dart';

class ThemeToggler extends StatelessWidget {
  final Color? iconColor;

  ThemeToggler({super.key, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, childe) {
      final theme = ref.watch(themeModeProvider);
      return IconButton(
          onPressed: () {
            ref.read(themeModeProvider.notifier).state =
                theme == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
          },
          icon: Icon(
            theme == ThemeMode.dark ? Icons.light_mode : Icons.dark_mode,
            color: iconColor ?? DarkThemeColors.onSurfaceColor.withOpacity(.6),
          ));
    });
  }
}
