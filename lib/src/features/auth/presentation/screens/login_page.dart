import 'package:flutter/material.dart';
import 'package:sell_pro/src/shared/widgets/app_appbar.dart';
import '../../../../shared/widgets/app_text_field.dart';
import '../../../../shared/widgets/theme_toggler_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppAppbar(
            context: context,
            title: const Text(
              "ورود به برنامه",
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontFamily: "Sahel"),
            ),
            centerTitle: true,
            actions: [
              ThemeToggler(iconColor: Theme.of(context).colorScheme.onSurface)
            ],
          ),
          body: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 40.0, horizontal: 40.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset("assets/login_page_hero_image.png"),
                  const SizedBox(
                    width: 20.0,
                  ),
                  AppTextField(
                      hintText: "نام کاربری", keyboardType: TextInputType.name),
                  const SizedBox(height: 40.0),
                  AppTextField(
                    hintText: "کلمه عبور",
                    keyboardType: TextInputType.visiblePassword,
                    enableObscureText: true,
                    enableAutoCorrect: false,
                    enableSuggestions: false,
                  ),
                  const SizedBox(height: 30.0),
                  // buttons
                  ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.login),
                      label: const Text(
                        "ورود به حساب کاربری",
                      )),
                  const SizedBox(height: 10.0),
                  // buttons
                  OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.phone_android),
                      label: const Text(
                        "ورود با شماره تلفن",
                      )),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.person),
                      label: const Text(
                        "ثبت نام نکرده اید ؟ ثبت نام کنید",
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
