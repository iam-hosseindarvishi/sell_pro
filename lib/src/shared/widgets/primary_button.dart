import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final handlePress;
  final String label;
  const PrimaryButton({super.key, this.handlePress, required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                Theme.of(context).colorScheme.primary)),
        onPressed: handlePress,
        child: Text(
          label,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ));
  }
}
