import 'package:flutter/material.dart';
import '../../../../shared/widgets/app_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColorDark,
          title: Text(
            "ورود به برنامه",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).secondaryHeaderColor,
                fontSize: 25.0),
          ),
          elevation: 5.00,
          iconTheme:
              IconThemeData(color: Theme.of(context).secondaryHeaderColor),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 40.0),
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
                    icon: Icon(Icons.login),
                    label: Text("ورود به حساب کاربری")),
                const SizedBox(height: 10.0),
                // buttons
                OutlinedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.phone_android),
                    label: Text("ورود با شماره تلفن")),
                const SizedBox(
                  height: 20.0,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.person),
                    label: Text("ثبت نام نکرده اید ؟ ثبت نام کنید"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
