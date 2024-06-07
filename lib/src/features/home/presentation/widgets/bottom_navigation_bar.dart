import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sell_pro/src/features/home/presentation/providers/bottom_navigation_state_provider.dart';

class HomeBottomNavitaionBar extends ConsumerWidget {
  const HomeBottomNavitaionBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indexBottomNavbar = ref.watch(indexBottomNavbarProvider);
    return BottomNavigationBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      selectedItemColor: Theme.of(context).colorScheme.secondary,
      unselectedItemColor: Theme.of(context).colorScheme.onPrimary,
      selectedLabelStyle:
          const TextStyle(fontFamily: "IranSans", fontWeight: FontWeight.bold),
      unselectedLabelStyle: const TextStyle(
          fontFamily: "IranSans", fontWeight: FontWeight.normal),
      currentIndex: indexBottomNavbar,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: "داشبورد"),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: "اشخاص",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.store), label: "کالاها"),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet), label: "امور مالی"),
        BottomNavigationBarItem(icon: Icon(Icons.summarize), label: "گزارش ها")
      ],
      // handle tap and change tabs
      onTap: (value) =>
          ref.read(indexBottomNavbarProvider.notifier).update((state) => value),
    );
  }
}
