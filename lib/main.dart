import 'package:flutter/material.dart';

import 'src/features/splash/presentation/screens/splash_screen_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sell Pro',
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey)),
      home: const SplashScreenPage(),
    );
  }
}
