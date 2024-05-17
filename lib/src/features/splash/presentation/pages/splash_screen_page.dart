import 'package:flutter/material.dart';
import 'package:sell_pro/src/core/styles/app_text_style.dart';
import 'package:sell_pro/src/features/login/presentation/pages/login_page.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "شروع",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).secondaryHeaderColor,
                fontSize: 25.0),
          ),
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColorDark,
          elevation: 5,
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
                const Text(
                  "برای شروع لطفا یکی از گزینه های زیر را انتخاب کنید",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
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
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        backgroundColor: Colors.red,
                        content: Center(
                            child: Text(
                          "این ویژگی در نسخه های بعدی فعال میشود",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.00),
                        )),
                        behavior: SnackBarBehavior.floating,
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
                    onPressed: () {},
                    child: Text(
                      "ورود به عنوان مهمان",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
