import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sell_pro/src/features/home/presentation/widgets/quick_access_items.dart';
import '../widgets/home_list_access_items.dart';

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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Placeholder(
                color: Theme.of(context).colorScheme.secondary,
                // ارتفاع ویجت نمایش امار = 30 درصد از ارتفاع صفحه
                fallbackHeight: MediaQuery.sizeOf(context).height * 0.3,
              ),
              Divider(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              FilledButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.preview),
                  label: Text(
                    "خلاصه امروز",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontFamily: "IranSans"),
                  )),
              const SizedBox(
                height: 20,
              ),
              Text("منو دسترسی سریع",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontFamily: "IranSans")),
              const SizedBox(
                height: 15,
              ),
              // quick access menu
              const QuickAccessItems(),
              const SizedBox(
                height: 20,
              ),
              Text("لیست ها",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontFamily: "IranSans")),
              const SizedBox(
                height: 15,
              ),
              const HomeListAccessItems(),
              const SizedBox(
                height: 150,
              )
            ],
          ),
        ));
  }
}
