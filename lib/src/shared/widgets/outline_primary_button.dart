import 'package:flutter/material.dart';

class OutlinePrimaryButton extends StatelessWidget {
  final handlePress;
  final String label;
  const OutlinePrimaryButton(
      {super.key, this.handlePress, required this.label});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: handlePress,
        child: Text(label,
            style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.bold)));
  }
}
