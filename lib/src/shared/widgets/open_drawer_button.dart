import 'package:flutter/material.dart';

class OpenDrawer extends StatelessWidget {
  const OpenDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: const Icon(Icons.menu));
      },
    );
  }
}
