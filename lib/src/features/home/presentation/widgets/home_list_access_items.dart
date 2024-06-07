import 'package:flutter/material.dart';

import 'home_list_access_button.dart';

class HomeListAccessItems extends StatelessWidget {
  const HomeListAccessItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
        ),
        Divider(
          endIndent: 20,
          indent: 20,
          color: Theme.of(context).colorScheme.onSurface,
        ),
        HomeListAccessButton(
          handleTab: () {},
          borderColor: Colors.amber,
          title: "خدمات",
          subTitle: "لیست خدمات ثبت شده",
          mt: 10,
        ),
        HomeListAccessButton(
          handleTab: () {},
          borderColor: Colors.red,
          title: "هزینه های فاکتورها",
          subTitle: "لیست هزینه های فاکتور (هزینه ارسال و..)",
        ),
        Divider(
          endIndent: 20,
          indent: 20,
          color: Theme.of(context).colorScheme.onSurface,
        ),
        HomeListAccessButton(
          handleTab: () {},
          borderColor: Colors.blue,
          title: "کاتالوگ کالا",
          subTitle: "ساخت کاتالوگ کالا برای سفارش گیری سریع",
          mt: 10,
        ),
        HomeListAccessButton(
          handleTab: () {},
          borderColor: Colors.blue,
          title: "سفارشات",
          subTitle: "لیست سفارشات ثبت شده - ثبت سفارش جدید با کاتالوگ",
        ),
      ],
    );
  }
}
