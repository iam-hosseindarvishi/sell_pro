import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sell_pro/src/features/home/presentation/widgets/quick_access_items.dart';

import '../widgets/home_list_access_button.dart';

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
            mainAxisAlignment: MainAxisAlignment.start,
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
              const QuickAccessItems(),
              const SizedBox(
                height: 20,
              ),
              Text("لیست ها",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      )),
              const SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  HomeListAccessButton(
                    handleTab: () {},
                    borderColor: Colors.blue,
                    title: "فروش ها",
                    subTitle: "لیست فروش های ثبت شده",
                  ),
                  HomeListAccessButton(
                    handleTab: () {},
                    borderColor: Colors.red,
                    title: "خرید ها",
                    subTitle: "لیست خریدهای ثبت شده",
                  ),
                  HomeListAccessButton(
                    handleTab: () {},
                    borderColor: Colors.green,
                    title: "دریافتی ها",
                    subTitle: "لیست دریافتی های ثبت شده",
                  ),
                  HomeListAccessButton(
                    handleTab: () {},
                    borderColor: Colors.yellow,
                    title: "پرداخت ها",
                    subTitle: "لیست پرداخت های ثبت شده",
                  ),
                  HomeListAccessButton(
                    handleTab: () {},
                    borderColor: Colors.blue,
                    title: "فروش ها",
                    subTitle: "لیست فاکتورهای فروش ثبت شده",
                  ),
                  HomeListAccessButton(
                    handleTab: () {},
                    borderColor: Colors.grey,
                    title: "برگشت از فروش",
                    subTitle: "لیست برگشت از فروش های ثبت شده",
                  ),
                  HomeListAccessButton(
                    handleTab: () {},
                    borderColor: Colors.brown,
                    title: "برگشت از خرید",
                    subTitle: "لیست برگشت از خریدهای ثبت شده",
                  ),
                  HomeListAccessButton(
                    handleTab: () {},
                    borderColor: Colors.blueGrey,
                    title: "پیش فاکتورها",
                    subTitle: "لیست پیش فاکتورهای ثبت شده",
                  ),
                  HomeListAccessButton(
                    handleTab: () {},
                    borderColor: Colors.blueGrey,
                    title: "لیست آخرین تغییرات",
                    subTitle: "لیست اطلاعات ثبت شده،ویرایش شده یا حذف شده",
                  )
                ],
              )
            ],
          ),
        ));
  }
}
