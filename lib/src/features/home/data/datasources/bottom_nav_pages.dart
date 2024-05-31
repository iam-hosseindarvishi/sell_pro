import 'package:flutter/material.dart';
import 'package:sell_pro/src/features/People/presentation/screens/people_screen.dart';
import 'package:sell_pro/src/features/home/presentation/screens/home_page.dart';

final pages = [
  const HomePage(),
  const PeopleScreen(),
  const Center(
    child: Text('شما در کالاها هستید'),
  ),
  const Center(
    child: Text('شما در امور مالی هستید'),
  ),
  const Center(
    child: Text('شما در گزارش ها هستید'),
  )
];
