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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          AppSegmentedButton(
            childrens: const <dynamic, Widget>{
              "all": Text("همه"),
              "costumers": Text("مشتریان"),
              "sellers": Text("فروشندگان")
            },
            selected: "all",
          ),
          const Expanded(child: SingleChildScrollView()),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 8),
                child: FloatingActionButton(
                  foregroundColor: Theme.of(context).colorScheme.onPrimary,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: Icon(Icons.person_add),
                  onPressed: () {},
                ),
              ))
        ],
      ),
    );
  }
}
