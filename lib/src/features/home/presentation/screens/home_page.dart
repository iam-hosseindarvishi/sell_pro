import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/quick_access_menu_item.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Placeholder(
                color: Theme.of(context).colorScheme.secondary,
                // ارتفاع ویجت نمایش امار = 30 درصد از ارتفاع صفحه
                fallbackHeight: MediaQuery.sizeOf(context).height * 0.3,
              ),
              const Divider(),
              FilledButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.preview),
                  label: Text(
                    "خلاصه امروز",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary),
                  )),
              const SizedBox(
                height: 20,
              ),
              Text("منو دسترسی سریع",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      )),
              const SizedBox(
                height: 15,
              ),
              // quick access menu
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  QuickAccessMenuItem(
                    borderColor: Colors.blue,
                    icon: Icons.store,
                    subTitle: "فروش داشتید؟",
                    subText: "از این بخش ثبت کنید",
                    title: "فروش",
                  ),
                  QuickAccessMenuItem(
                    borderColor: Colors.red,
                    icon: Icons.shopping_cart,
                    subTitle: "خرید داشتید؟",
                    title: "خرید",
                    subText: "از این بخش ثبت کنید",
                  )
                ],
              )
            ],
          ),
        ));
  }
}
