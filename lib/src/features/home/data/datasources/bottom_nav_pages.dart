import 'package:flutter/material.dart';
import 'package:sell_pro/src/features/Financial/presentation/screens/financial_screen.dart';
import 'package:sell_pro/src/features/People/presentation/screens/people_screen.dart';
import 'package:sell_pro/src/features/Product/presentation/screens/product_screen.dart';
import 'package:sell_pro/src/features/home/presentation/screens/home_page.dart';

import '../../../../shared/widgets/notification_button.dart';
import '../../../../shared/widgets/theme_toggler_button.dart';
import '../../../../shared/widgets/search_in_appbar.dart';

final pages = [
  const HomePage(),
  const PeopleScreen(),
  const ProductScreen(),
  const FinancialScreen()
];

final appbarActions = [
  [ThemeToggler(), const NotificationAppbarButton()],
  // peaple appbar
  [
    SearchInAppbar(
      hintText: "جستجو در اشخاص",
      handleOnSubmitted: () {},
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.sort),
        )
      ],
    )
  ],
  // product appbar
  [
    SearchInAppbar(
        hintText: "جستجو در کالاها",
        handleOnSubmitted: () {},
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.sort_by_alpha),
          ),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.filter_alt_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.qr_code)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.store)),
        ])
  ],
  //financial appbar
  [
    SearchInAppbar(
        hintText: "جستجو در هزینه ها",
        handleOnSubmitted: () {},
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.sort),
          ),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.filter_alt_outlined)),
        ])
  ]
];
