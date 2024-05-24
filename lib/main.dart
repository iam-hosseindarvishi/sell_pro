import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sell_pro/src/configs/theme/theme_mode_provider.dart';

import 'src/features/splash/presentation/screens/splash_screen_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sell Pro',
      themeMode: themeMode,
      darkTheme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey)),
      home: const SplashScreenPage(),
    );
  }
}
