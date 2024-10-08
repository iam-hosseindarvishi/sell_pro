import 'package:flutter/material.dart';
import 'package:sell_pro/src/shared/widgets/app_appbar.dart';
import '../../../../shared/widgets/text_fields/app_text_field.dart';
import '../../../../shared/widgets/theme_toggler_button.dart';
import '../../../../shared/widgets/image_picker/image_picker.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            appBar: AppAppbar(
              context: context,
              title: const Text(
                "ایجاد حساب کاربری",
                style: TextStyle(
                    fontWeight: FontWeight.normal, fontFamily: "IranSams"),
              ),
              centerTitle: true,
              actions: [ThemeToggler()],
            ),
            body: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 40.0, horizontal: 40.0),
              child: SingleChildScrollView(
                child: Column(children: [
                  // iamge or logo picker
                  const ImagePicker(),
                  const SizedBox(height: 60.0),
                  // shop name field
                  AppTextField(
                      hintText: "نام فروشگاه",
                      keyboardType: TextInputType.name),
                  const SizedBox(height: 20.0),
                  // user name field
                  AppTextField(
                      hintText: "نام کاربری", keyboardType: TextInputType.name),
                  const SizedBox(height: 20.0),
                  // password
                  AppTextField(
                    hintText: "کلمه عبور",
                    keyboardType: TextInputType.visiblePassword,
                    enableObscureText: true,
                    enableAutoCorrect: false,
                    enableSuggestions: false,
                  ),
                  const SizedBox(height: 20.0),
                  // confirm password
                  AppTextField(
                    hintText: "تکرار کلمه عبور",
                    keyboardType: TextInputType.visiblePassword,
                    enableObscureText: true,
                    enableAutoCorrect: false,
                    enableSuggestions: false,
                  ),
                  const SizedBox(height: 30.0),
                  AppTextField(
                      hintText: "شماره موبایل",
                      keyboardType: TextInputType.number),
                  const SizedBox(height: 30.0),
                  // buttons
                  ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.login,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                      label: const Text(
                        "ایجاد حساب کاربری",
                        style: TextStyle(
                            fontFamily: "IranSans",
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      )),
                ]),
              ),
            ),
          )),
    );
  }
}
