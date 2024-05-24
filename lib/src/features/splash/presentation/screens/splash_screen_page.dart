import 'package:flutter/material.dart';
import 'package:sell_pro/src/core/styles/app_text_style.dart';
import 'package:sell_pro/src/features/auth/presentation/screens/login_page.dart';
import 'package:sell_pro/src/features/auth/presentation/screens/register_page.dart';
import 'package:sell_pro/src/features/home/presentation/screens/home.dart';
import 'package:sell_pro/src/shared/guest/widgets/guest_app_bar.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: StartAppBar(
          title: "شروع",
          // elevation: 1,
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
                      color: Theme.of(context).colorScheme.secondary,
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
                    child: const Text(
                      "ورود به حساب کاربری",
                      style: AppTextStyle.xLargeBlackBold,
                    )),
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
                    child: const Text(
                      "ایجاد حساب کاربری جدید",
                      style: AppTextStyle.xLargeBlackBold,
                    )),
                const SizedBox(
                  height: 10.00,
                ),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(
                            color:
                                Theme.of(context).colorScheme.inversePrimary)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: const Text(
                      "ورود به عنوان مهمان",
                      style: AppTextStyle.xLargeBlackBold,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
