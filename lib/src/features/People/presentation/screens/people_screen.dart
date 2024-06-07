import "package:sell_pro/src/shared/widgets/segmented_button.dart";
import 'package:flutter/material.dart';

class PeopleScreen extends StatefulWidget {
  const PeopleScreen({super.key});

  @override
  State<PeopleScreen> createState() => _PeopleScreenState();
}

class _PeopleScreenState extends State<PeopleScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: AppSegmentedButton(
          childrens: <String, Widget>{
            "all": Text("همه"),
            "costumers": Text("مشتریان"),
            "sellers": Text("فروشندگان")
          },
          selected: "all",
        ));
  }
}
