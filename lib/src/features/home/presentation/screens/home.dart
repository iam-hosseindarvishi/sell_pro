import 'package:flutter/material.dart';
import 'package:sell_pro/src/shared/widgets/notification_button.dart';
import 'package:sell_pro/src/shared/widgets/open_drawer_button.dart';
import 'package:sell_pro/src/shared/widgets/app_appbar.dart';
import 'package:sell_pro/src/shared/widgets/theme_toggler_button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          drawer: const Drawer(),
          appBar: AppAppbar(
            leading: const OpenDrawer(),
            title: const Text("کاربر مهمان"),
            actions: const [ThemeToggler(), NotificationAppbarButton()],
          ),
          body: Container(),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            selectedItemColor: Theme.of(context).colorScheme.inversePrimary,
            unselectedItemColor: Theme.of(context).colorScheme.onPrimary,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard), label: "داشبورد"),
              BottomNavigationBarItem(icon: Icon(Icons.people), label: "اشخاص"),
              BottomNavigationBarItem(icon: Icon(Icons.store), label: "کالاها"),
              // BottomNavigationBarItem(
              //     icon: Icon(Icons.attach_money_sharp), label: "امور مالی"),
              // BottomNavigationBarItem(
              //     icon: Icon(Icons.report), label: "گزارش ها")
            ],
          ),
        ),
      ),
    );
  }
}
