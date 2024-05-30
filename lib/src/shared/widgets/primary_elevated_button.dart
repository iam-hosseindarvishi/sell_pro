import 'package:flutter/material.dart';

class PrimaryElevatedButton extends StatelessWidget {
  final handlePress;
  final String text;
  const PrimaryElevatedButton({
    super.key,
    this.handlePress,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            overlayColor: MaterialStatePropertyAll<Color>(
                Theme.of(context).colorScheme.secondary),
            foregroundColor: MaterialStatePropertyAll<Color>(
                Theme.of(context).colorScheme.onPrimary),
            backgroundColor: MaterialStatePropertyAll<Color>(
                Theme.of(context).colorScheme.primary)),
        onPressed: () {
          handlePress();
        },
        child: Text(
          text,
          style: Theme.of(context).textTheme.labelMedium,
        ));
  }
}
