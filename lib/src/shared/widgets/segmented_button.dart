import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppSegmentedButton extends StatefulWidget {
  dynamic selected;
  final Map<dynamic, Widget> childrens;
  AppSegmentedButton(
      {super.key, required this.selected, required this.childrens});

  @override
  State<AppSegmentedButton> createState() => _AppSegmentedButtonState();
}

class _AppSegmentedButtonState extends State<AppSegmentedButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoSlidingSegmentedControl(
        groupValue: widget.selected,
        children: widget.childrens,
        onValueChanged: (value) {
          setState(() {
            widget.selected = value!;
          });
        },
      ),
    );
  }
}
