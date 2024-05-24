import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sell_pro/src/configs/theme/theme_mode_provider.dart';

class ThemeToggler extends StatelessWidget {
  const ThemeToggler({super.key});

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
              theme == ThemeMode.dark ? Icons.light_mode : Icons.dark_mode));
    });
  }
}
