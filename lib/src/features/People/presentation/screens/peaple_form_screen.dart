import 'package:flutter/material.dart';
import 'package:sell_pro/src/shared/widgets/image_picker/image_picker.dart';
import 'package:sell_pro/src/shared/widgets/app_appbar.dart';
import 'package:sell_pro/src/shared/widgets/text_fields/form_text_field.dart';

import '../../../../shared/widgets/text_fields/app_text_field.dart';

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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppFormTextField(
                          labelText: "نام شخص",
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        AppFormTextField(labelText: "گروه اشخاص"),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: false,
                              onChanged: (value) {},
                            ),
                            Text(
                              "شخص بستانکار است",
                              style: TextStyle(
                                  fontFamily: "IranSans", fontSize: 16),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        AppFormTextField(labelText: "حساب قبلی"),
                        SizedBox(
                          height: 15,
                        ),
                        AppFormTextField(labelText: "شماره موبایل"),
                        SizedBox(
                          height: 15,
                        ),
                        AppFormTextField(labelText: "آدرس"),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
