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
                    icon: "assets/icons/sell.png",
                    subTitle: "فروش داشتید؟",
                    subText: "از این بخش ثبت کنید",
                    title: "فروش",
                  ),
                  QuickAccessMenuItem(
                    borderColor: Colors.red,
                    icon: "assets/icons/buying.png",
                    subTitle: "خرید داشتید؟",
                    title: "خرید",
                    subText: "از این بخش ثبت کنید",
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  QuickAccessMenuItem(
                    borderColor: Colors.green,
                    icon: "assets/icons/request-money.png",
                    subTitle: "دریافتی داشتید",
                    subText: "از این بخش ثبت کنید",
                    title: "دریافتی جدید",
                  ),
                  QuickAccessMenuItem(
                    borderColor: Colors.amber,
                    icon: "assets/icons/pay-money.png",
                    subTitle: "پرداختی داشتید؟",
                    title: "پرداختی جدید",
                    subText: "از این بخش ثبت کنید",
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  QuickAccessMenuItem(
                    borderColor: Colors.green,
                    icon: "assets/icons/cheque-book-2.png",
                    subTitle: "چک دریافت کردید",
                    subText: "از این بخش ثبت کنید",
                    title: "چک دریافتنی",
                  ),
                  QuickAccessMenuItem(
                    borderColor: Colors.amber,
                    icon: "assets/icons/cheque-book-1.png",
                    subTitle: "چک پرداخت کردید",
                    subText: "از این بخش ثبت کنید",
                    title: "چک پرداختی",
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  QuickAccessMenuItem(
                    borderColor: Colors.grey,
                    icon: "assets/icons/clear-shopping-cart.png",
                    subTitle: "کالا برگشت داده شده",
                    subText: "از این قسمت ثبت کنید",
                    title: "برگشت از فروش",
                  ),
                  QuickAccessMenuItem(
                    borderColor: Colors.brown,
                    icon: "assets/icons/clear-shopping-cart-2.png",
                    subTitle: "کالا برگشت داده شده",
                    subText: "از این قسمت ثبت کنید",
                    title: "برگشت از خرید",
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  QuickAccessMenuItem(
                    borderColor: Colors.lightGreen,
                    icon: "assets/icons/clear-shopping-cart.png",
                    subTitle: "ثبت پیش فاکتور جدید",
                    title: "پیش فاکتور",
                  ),
                  QuickAccessMenuItem(
                    borderColor: Colors.blue,
                    icon: "assets/icons/clear-shopping-cart-2.png",
                    subTitle: "ابزاری نیاز دارید؟",
                    title: "ابزارها",
                  )
                ],
              )
            ],
          ),
        ));
  }
}
