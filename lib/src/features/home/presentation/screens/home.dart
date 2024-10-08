import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sell_pro/src/features/home/data/datasources/bottom_nav_pages.dart';
import 'package:sell_pro/src/features/home/presentation/providers/bottom_navigation_state_provider.dart';
import 'package:sell_pro/src/features/home/presentation/widgets/bottom_navigation_bar.dart';
import 'package:sell_pro/src/features/home/presentation/widgets/home_drawer.dart';
import 'package:sell_pro/src/shared/widgets/open_drawer_button.dart';
import 'package:sell_pro/src/shared/widgets/app_appbar.dart';

class Home extends ConsumerWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indexBottomNavbar = ref.watch(indexBottomNavbarProvider);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          drawer: const HomeDrawer(),
          appBar: AppAppbar(
              context: context,
              leading: const OpenDrawer(),
              title: indexBottomNavbar == 0
                  ? const Text(
                      "کاربر مهمان",
                      style: TextStyle(fontFamily: "IranSans"),
                    )
                  : null,
              actions: appbarActions[indexBottomNavbar]),
          body: pages[indexBottomNavbar],
          bottomNavigationBar: const HomeBottomNavitaionBar(),
        ),
      ),
    );
  }
}
