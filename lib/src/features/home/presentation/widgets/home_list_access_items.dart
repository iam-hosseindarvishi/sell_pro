import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sell_pro/src/features/home/presentation/widgets/home_quick_access_button.dart';

class HomeListAccessItems extends StatelessWidget {
  const HomeListAccessItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeQuickAccessButton(
            title: "فروش",
            subTitle: "لیست فاکتورهای فروش",
            borderColor: Colors.blue)
      ],
    );
  }
}
