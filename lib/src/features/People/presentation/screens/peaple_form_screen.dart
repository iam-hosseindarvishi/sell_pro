import 'package:flutter/material.dart';
import 'package:sell_pro/src/configs/theme/dark%20theme/dark_theme_colors.dart';
import 'package:sell_pro/src/configs/utils/responsive_spacers.dart';
import 'package:sell_pro/src/shared/widgets/form_widgets/form_expansion_panel.dart';
import 'package:sell_pro/src/shared/widgets/image_picker/image_picker.dart';
import 'package:sell_pro/src/shared/widgets/app_appbar.dart';
import 'package:sell_pro/src/shared/widgets/text_fields/form_text_field.dart';

import '../../../../shared/widgets/form_widgets/form_bottom_appbar.dart';
import '../../../../shared/widgets/form_widgets/form_floating_action_button.dart';

class PeapleFormScreen extends StatefulWidget {
  const PeapleFormScreen({super.key});

  @override
  State<PeapleFormScreen> createState() => _PeapleFormScreenState();
}

class _PeapleFormScreenState extends State<PeapleFormScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppAppbar(
          context: context,
          centerTitle: true,
          title: const Text("افزودن شخص جدید"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const ImagePicker(),
                const SizedBox(height: 30.0),
                Form(
                    key: formKey,
                    canPop: true,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppFormTextField(
                          labelText: "نام شخص",
                          inputType: TextInputType.name,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "لطفا نام را وارد کنید";
                            } else if (value.length < 3) {
                              return "طول نام نباید کمتر از دو حرف باشد";
                            }
                            return null;
                          },
                        ),
                        const ResponsiveXSpace(
                          precentage: 2,
                        ),
                        AppFormTextField(labelText: "گروه اشخاص"),
                        const ResponsiveXSpace(
                          precentage: 1,
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: false,
                              onChanged: (value) {},
                            ),
                            const Text(
                              "شخص بستانکار است",
                              style: TextStyle(
                                  fontFamily: "IranSans", fontSize: 16),
                            )
                          ],
                        ),
                        const ResponsiveXSpace(
                          precentage: 1,
                        ),
                        AppFormTextField(
                          labelText: "حساب قبلی",
                          inputType: TextInputType.number,
                        ),
                        const ResponsiveXSpace(
                          precentage: 2,
                        ),
                        AppFormTextField(
                          labelText: "شماره موبایل",
                          inputType: TextInputType.phone,
                        ),
                        const ResponsiveXSpace(
                          precentage: 2,
                        ),
                        AppFormTextField(
                          labelText: "آدرس",
                          inputType: TextInputType.streetAddress,
                        ),
                        const ResponsiveXSpace(precentage: 2),
                        FormExpansionPanel(
                          header: Center(
                            child: Text(
                              "اطلاعات تکمیلی",
                              style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.onSurface),
                            ),
                          ),
                          body: Column(
                            children: [
                              const ResponsiveXSpace(precentage: 2),
                              AppFormTextField(labelText: "اطلاعات بیشتر"),
                              const ResponsiveXSpace(precentage: 2),
                              AppFormTextField(
                                labelText: "کد پستی",
                                inputType: TextInputType.number,
                              ),
                              const ResponsiveXSpace(precentage: 2),
                              AppFormTextField(
                                labelText: "تاریخ تولد",
                                inputType: TextInputType.text,
                              ),
                              const ResponsiveXSpace(precentage: 2),
                              AppFormTextField(
                                labelText: "شناسه ملی",
                                inputType: TextInputType.number,
                              ),
                              const ResponsiveXSpace(precentage: 2),
                              AppFormTextField(
                                labelText: "کد اقتصادی",
                                inputType: TextInputType.number,
                              ),
                              const ResponsiveXSpace(precentage: 2),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: false,
                              onChanged: (value) {},
                            ),
                            const Text(
                              "بعد از ذخیره شخص ، برو صفحه ثبت فروش",
                              style: TextStyle(
                                  fontFamily: "IranSans", fontSize: 16),
                            )
                          ],
                        ),
                        const ResponsiveXSpace(precentage: 10),
                      ],
                    ))
              ],
            ),
          ),
        ),
        floatingActionButton: FormFloatingActionButton(
          icon: const Icon(Icons.save),
          handleOnPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        extendBody: true,
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: FormBottomAppBar(
          item: Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.help,
                    color: DarkThemeColors.onSurfaceColor.withOpacity(.5),
                  ))
            ],
          ),
        ),
      ),
    ));
  }
}
