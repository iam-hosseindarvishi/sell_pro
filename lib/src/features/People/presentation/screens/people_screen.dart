import 'package:flutter/material.dart';

class PeopleScreen extends StatefulWidget {
  const PeopleScreen({super.key});

  @override
  State<PeopleScreen> createState() => _PeopleScreenState();
}

class _PeopleScreenState extends State<PeopleScreen> {
  Set<String> selected = {"all"};
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Center(
        child: SegmentedButton(
          style: SegmentedButton.styleFrom(
              elevation: 5,
              textStyle: const TextStyle(
                fontFamily: "IranSans",
                fontWeight: FontWeight.bold,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
              disabledBackgroundColor: Colors.grey,
              disabledForegroundColor: Colors.black,
              selectedBackgroundColor: Theme.of(context).colorScheme.surface,
              selectedForegroundColor: Theme.of(context).colorScheme.onSurface,
              foregroundColor: Theme.of(context).colorScheme.onPrimary,
              backgroundColor: Theme.of(context).colorScheme.primary),
          onSelectionChanged: (Set<String> newSelection) {
            selected = {newSelection.first.toString()};
            setState(() {});
          },
          showSelectedIcon: false,
          selected: selected,
          segments: const [
            ButtonSegment<String>(
                value: "title",
                enabled: false,
                label: Text(
                  "نمایش",
                )),
            ButtonSegment<String>(
                value: "all",
                label: Text(
                  "همه",
                )),
            ButtonSegment<String>(
                value: "costumers",
                label: Text(
                  "مشتریان",
                )),
            ButtonSegment<String>(
                value: "sellers",
                label: Text(
                  "فروشندگان",
                )),
          ],
        ),
      ),
    );
  }
}
