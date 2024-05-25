import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final handleTab;
  const DrawerItem(
      {super.key,
      required this.title,
      required this.icon,
      required this.handleTab});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: handleTab,
      child: ListTile(
        iconColor: Theme.of(context).colorScheme.onPrimary,
        textColor: Theme.of(context).colorScheme.onPrimary,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon),
            const SizedBox(
              width: 5,
            ),
            Text(
              title,
              style:
                  const TextStyle(fontFamily: "Sahel", fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
