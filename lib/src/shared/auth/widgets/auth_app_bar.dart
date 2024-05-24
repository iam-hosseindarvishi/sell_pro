import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sell_pro/src/configs/theme/theme_mode_provider.dart';

class AuthAppBar extends ConsumerStatefulWidget implements PreferredSizeWidget {
  const AuthAppBar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AuthAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(65.0);
}

class _AuthAppBarState extends ConsumerState<AuthAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "کاربر مهمان",
        style: TextStyle(fontFamily: "Sahel"),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
      leading: Builder(
        builder: (context) {
          return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: const Icon(Icons.menu));
        },
      ),
      actions: [
        Consumer(builder: (context, ref, childe) {
          final theme = ref.watch(themeModeProvider);
          return IconButton(
              onPressed: () {
                ref.read(themeModeProvider.notifier).state =
                    theme == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
              },
              icon: Icon(theme == ThemeMode.dark
                  ? Icons.light_mode
                  : Icons.dark_mode));
        }),
        IconButton(onPressed: () {}, icon: Icon(Icons.email)),
      ],
    );
  }
}
