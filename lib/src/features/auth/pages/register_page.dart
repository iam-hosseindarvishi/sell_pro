import 'package:flutter/material.dart';
import 'package:sell_pro/src/shared/widgets/start_app_bar.dart';

import '../../../shared/widgets/app_text_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            appBar: StartAppBar(
              title: "ایجاد حساب کاربری",
            ),
            body: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 40.0, horizontal: 40.0),
              child: SingleChildScrollView(
                child: Column(children: [
                  // iamge or logo picker
                  InkWell(
                    child: Container(
                      width: 80.0,
                      height: 80.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                              width: 2,
                              color: Theme.of(context).colorScheme.secondary)),
                      child: Center(
                        child: Icon(
                          size: 50.0,
                          Icons.camera_alt,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 10.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  // import from gallery
                                  InkWell(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          size: 50.0,
                                          Icons.photo_camera,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        const Text("دوربین")
                                      ],
                                    ),
                                  ),
                                  // import from camera
                                  InkWell(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          size: 50.0,
                                          Icons.photo_library,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        const Text("گالری")
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
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
                      icon: const Icon(Icons.login),
                      label: const Text("ایجاد حساب کاربری")),
                ]),
              ),
            ),
          )),
    );
  }
}
