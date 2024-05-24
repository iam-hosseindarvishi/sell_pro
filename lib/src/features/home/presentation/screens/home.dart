import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sell_pro/src/features/home/data/datasources/temp_nav_items.dart';
import 'package:sell_pro/src/features/home/presentation/providers/bottom_navigation_state_provider.dart';
import 'package:sell_pro/src/features/home/presentation/widgets/bottom_navigation_bar.dart';
import 'package:sell_pro/src/shared/widgets/notification_button.dart';
import 'package:sell_pro/src/shared/widgets/open_drawer_button.dart';
import 'package:sell_pro/src/shared/widgets/app_appbar.dart';
import 'package:sell_pro/src/shared/widgets/theme_toggler_button.dart';

class Home extends ConsumerWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indexBottomNavbar = ref.watch(indexBottomNavbarProvider);

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
          body: bodies[indexBottomNavbar],
          bottomNavigationBar: const HomeBottomNavitaionBar(),
        ),
      ),
    );
  }
}
