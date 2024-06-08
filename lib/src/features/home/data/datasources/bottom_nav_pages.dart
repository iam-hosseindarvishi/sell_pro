import 'package:flutter/material.dart';
import 'package:sell_pro/src/features/People/presentation/screens/people_screen.dart';
import 'package:sell_pro/src/features/home/presentation/screens/home_page.dart';

import '../../../../shared/widgets/notification_button.dart';
import '../../../../shared/widgets/theme_toggler_button.dart';
import '../../../../shared/widgets/search_in_appbar.dart';

final pages = [
  const HomePage(),
  const PeopleScreen(),
];

final appbarActions = [
  [ThemeToggler(), NotificationAppbarButton()],
  [
    SearchInAppbar(
      hintText: "جستجو در اشخاص",
      handleOnSubmitted: () {},
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.sort),
        )
      ],
    )
  ]
];
