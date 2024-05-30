import 'package:flutter/material.dart';

import 'drawer_item.dart';
import '../../../../shared/widgets/theme_toggler_button.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "مدیریت فروشگاه و انبار",
                    style: TextStyle(
                        fontFamily: "Sahel",
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onBackground),
                  ),
                  ThemeToggler(
                    iconColor: Theme.of(context).colorScheme.onBackground,
                  )
                ],
              ),
            ],
          )),
          DrawerItem(
            title: "خرید اشتراک و افزونه",
            icon: Icons.diamond,
            handleTab: () {},
          ),
          DrawerItem(
            title: "مرکز پیام",
            icon: Icons.email,
            handleTab: () {},
          ),
          DrawerItem(
            title: "تنظیمات",
            icon: Icons.settings,
            handleTab: () {},
          ),
          DrawerItem(
            title: "راهنما - فیلم آموزشی",
            icon: Icons.question_mark,
            handleTab: () {},
          ),
          DrawerItem(
            title: "ارتباط با پشتیبانی",
            icon: Icons.support_agent,
            handleTab: () {},
          ),
          DrawerItem(
            title: "ارسال برنامه",
            icon: Icons.share,
            handleTab: () {},
          ),
        ],
      ),
    );
  }
}
