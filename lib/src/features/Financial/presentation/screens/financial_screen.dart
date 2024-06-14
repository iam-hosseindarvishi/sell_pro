import 'package:flutter/material.dart';
import 'package:sell_pro/src/features/Financial/presentation/screens/financial_form_screen.dart';

import '../../../../configs/theme/dark theme/dark_theme_colors.dart';
import '../../../../shared/widgets/segmented_button.dart';

class FinancialScreen extends StatefulWidget {
  const FinancialScreen({super.key});

  @override
  State<FinancialScreen> createState() => _FinancialScreenState();
}

class _FinancialScreenState extends State<FinancialScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          AppSegmentedButton(
            childrens: const <dynamic, Widget>{
              "all": Text("هزینه ها"),
              "check": Text("چک"),
              "cash-desk": Text("صندوق"),
              "bank-account": Text("حساب بانکی")
            },
            selected: "all",
          ),
          const Expanded(child: SingleChildScrollView()),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 8),
                child: FloatingActionButton(
                  foregroundColor: DarkThemeColors.onSurfaceColor,
                  backgroundColor: DarkThemeColors.appBarBg,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: const Icon(Icons.person_add),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FinancialFormScreen(),
                        ));
                  },
                ),
              ))
        ],
      ),
    );
    ;
  }
}
