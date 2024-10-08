import 'package:flutter/material.dart';
import 'home_quick_access_button.dart';

class QuickAccessItems extends StatelessWidget {
  const QuickAccessItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HomeQuickAccessButton(
              borderColor: Colors.blue,
              icon: "assets/icons/sell.png",
              handleTap: () {
                print("clicked");
              },
              subTitle: "فروش داشتید؟",
              subText: "از این بخش ثبت کنید",
              title: "فروش",
            ),
            HomeQuickAccessButton(
              borderColor: Colors.red,
              icon: "assets/icons/buying.png",
              handleTap: () {},
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
            HomeQuickAccessButton(
              borderColor: Colors.green,
              icon: "assets/icons/request-money.png",
              handleTap: () {},
              subTitle: "دریافتی داشتید",
              subText: "از این بخش ثبت کنید",
              title: "دریافتی جدید",
            ),
            HomeQuickAccessButton(
              borderColor: Colors.amber,
              icon: "assets/icons/pay-money.png",
              handleTap: () {},
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
            HomeQuickAccessButton(
              borderColor: Colors.green,
              icon: "assets/icons/cheque-book-2.png",
              handleTap: () {},
              subTitle: "چک دریافت کردید",
              subText: "از این بخش ثبت کنید",
              title: "چک دریافتنی",
            ),
            HomeQuickAccessButton(
              borderColor: Colors.amber,
              icon: "assets/icons/cheque-book-1.png",
              handleTap: () {},
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
            HomeQuickAccessButton(
              borderColor: Colors.grey,
              icon: "assets/icons/clear-shopping-cart.png",
              handleTap: () {},
              subTitle: "کالا برگشت داده شده",
              subText: "از این قسمت ثبت کنید",
              title: "برگشت از فروش",
            ),
            HomeQuickAccessButton(
              borderColor: Colors.brown,
              icon: "assets/icons/clear-shopping-cart-2.png",
              handleTap: () {},
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
            HomeQuickAccessButton(
              borderColor: Colors.lightGreen,
              icon: "assets/icons/clear-shopping-cart.png",
              handleTap: () {},
              subTitle: "ثبت پیش فاکتور جدید",
              title: "پیش فاکتور",
            ),
            HomeQuickAccessButton(
              borderColor: Colors.blue,
              icon: "assets/icons/clear-shopping-cart-2.png",
              handleTap: () {},
              subTitle: "ابزاری نیاز دارید؟",
              title: "ابزارها",
            )
          ],
        ),
      ],
    );
  }
}
