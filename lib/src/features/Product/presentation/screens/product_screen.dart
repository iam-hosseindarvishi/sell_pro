import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sell_pro/src/configs/theme/dark%20theme/dark_theme_colors.dart';
import 'package:sell_pro/src/features/Product/presentation/screens/product_form_screen.dart';
import 'package:sell_pro/src/shared/widgets/segmented_button.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {},
      child: Column(
        children: [
          const Expanded(child: SingleChildScrollView()),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 8),
              child: FloatingActionButton(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                foregroundColor: DarkThemeColors.onSurfaceColor,
                backgroundColor: DarkThemeColors.appBarBg,
                child: const Icon(Icons.add_circle),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProductFormScreen(),
                      ));
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
