import 'package:flutter/material.dart';
import 'package:sell_pro/src/configs/utils/responsive_size.dart';

class AppFormTextField extends StatefulWidget {
  final String labelText;
  String? Function(String?)? validator;
  TextInputType inputType;
  AppFormTextField(
      {super.key,
      required this.labelText,
      this.validator,
      this.inputType = TextInputType.text});

  @override
  State<AppFormTextField> createState() => _AppFormTextFieldState();
}

class _AppFormTextFieldState extends State<AppFormTextField> {
  bool hasValue = false;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.inputType,
      enableSuggestions: true,
      controller: controller,
      validator: (value) => widget.validator!(value),
      onChanged: (value) => setState(() {
        controller.text.isEmpty ? hasValue = false : hasValue = true;
      }),
      style:
          TextStyle(fontSize: getFontSize(context, 21), fontFamily: "IranSans"),
      decoration: InputDecoration(
          labelText: widget.labelText,
          errorMaxLines: 1,
          errorStyle: TextStyle(
              wordSpacing: 1,
              backgroundColor: Theme.of(context).colorScheme.error,
              color: Theme.of(context).colorScheme.onError,
              fontFamily: "IranSans",
              fontSize: getFontSize(context, 18),
              fontWeight: FontWeight.bold),
          labelStyle: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontFamily: "IranSans",
              fontSize: 16),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  width: 1, color: Theme.of(context).colorScheme.secondary)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  width: 1, color: Theme.of(context).colorScheme.error)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  width: 1, color: Theme.of(context).colorScheme.error)),
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
                    color: Theme.of(context).colorScheme.onSurface,
                  ))
              : null),
    );
  }
}
