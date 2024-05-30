import 'package:flutter/material.dart';
import 'package:sell_pro/src/features/auth/presentation/screens/login_page.dart';
import 'package:sell_pro/src/features/auth/presentation/screens/register_page.dart';
import 'package:sell_pro/src/features/home/presentation/screens/home.dart';
import 'package:sell_pro/src/shared/widgets/app_appbar.dart';
import 'package:sell_pro/src/shared/widgets/theme_toggler_button.dart';

import '../../../../shared/widgets/primary_elevated_button.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppAppbar(
            context: context,
            title: const Text(
              "شروع",
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontFamily: "Sahel"),
            ),
            centerTitle: true,
            actions: [
              ThemeToggler(iconColor: Theme.of(context).colorScheme.onSurface)
            ],
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("assets/Launching-cuate.png"),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Text(
                    "برای شروع لطفا یکی از گزینه های زیر را انتخاب کنید",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 16,
                        fontFamily: "Sahel",
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10.00,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ));
                      },
                      child: Text("ورود به حساب کاربری",
                          style: Theme.of(context).textTheme.labelMedium)),
                  const SizedBox(
                    height: 10.00,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegisterPage(),
                            ));
                      },
                      child: Text("ایجاد حساب کاربری جدید",
                          style: Theme.of(context).textTheme.labelMedium)),
                  const SizedBox(
                    height: 10.00,
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Home()));
                      },
                      child: Text("ورود به عنوان مهمان",
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium
                              ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground)))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
