import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sell_pro/src/configs/theme/theme_mode_provider.dart';
import 'package:sell_pro/src/shared/auth/widgets/auth_app_bar.dart';

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
          appBar: const AuthAppBar(),
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
