import 'package:flutter/material.dart';

class AppFormTextField extends StatefulWidget {
  final String labelText;

  const AppFormTextField({super.key, required this.labelText});

  @override
  State<AppFormTextField> createState() => _AppFormTextFieldState();
}

class _AppFormTextFieldState extends State<AppFormTextField> {
  bool hasValue = false;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: (value) {
        setState(() {
          controller.text.isEmpty ? hasValue = false : hasValue = true;
        });
      },
      style: TextStyle(fontSize: 16, fontFamily: "IranSans"),
      decoration: InputDecoration(
          labelText: widget.labelText,
          labelStyle: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontFamily: "IranSans",
              fontSize: 16),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  width: 1, color: Theme.of(context).colorScheme.secondary)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
                width: 1, color: Theme.of(context).colorScheme.secondary),
          ),
          suffixIcon: hasValue
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      controller.clear();
                      hasValue = false;
                    });
                  },
                  icon: Icon(
                    Icons.clear,
                    color: Colors.white,
                  ))
              : null),
    );
  }
}
