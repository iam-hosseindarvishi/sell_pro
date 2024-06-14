import 'package:flutter/material.dart';

import '../../../../configs/theme/dark theme/dark_theme_colors.dart';
import '../../../../configs/utils/responsive_spacers.dart';
import '../../../../shared/widgets/app_appbar.dart';
import '../../../../shared/widgets/form_widgets/form_bottom_appbar.dart';
import '../../../../shared/widgets/form_widgets/form_expansion_panel.dart';
import '../../../../shared/widgets/form_widgets/form_floating_action_button.dart';
import '../../../../shared/widgets/image_picker/image_picker.dart';
import '../../../../shared/widgets/text_fields/form_text_field.dart';

class FinancialFormScreen extends StatefulWidget {
  const FinancialFormScreen({super.key});

  @override
  State<FinancialFormScreen> createState() => _FinancialFormScreenState();
}

class _FinancialFormScreenState extends State<FinancialFormScreen> {
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
          title: const Text("افزودن هزینه جدید"),
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
                          labelText: "عنوان هزینه",
                          inputType: TextInputType.name,
                        ),
                        const ResponsiveXSpace(
                          precentage: 2,
                        ),
                        AppFormTextField(labelText: "گروه هزینه"),
                        const ResponsiveXSpace(
                          precentage: 1,
                        ),
                        AppFormTextField(labelText: "مبلغ هزینه"),
                        const ResponsiveXSpace(
                          precentage: 1,
                        ),
                        AppFormTextField(
                          labelText: "تاریخ و ساعت ثبت",
                          inputType: TextInputType.number,
                        ),
                        const ResponsiveXSpace(
                          precentage: 2,
                        ),
                        AppFormTextField(
                          labelText: "اطلاعات بیشتر",
                          inputType: TextInputType.phone,
                        ),
                        const ResponsiveXSpace(
                          precentage: 2,
                        ),
                        AppFormTextField(
                          labelText: "صندوق اولیه ",
                          inputType: TextInputType.streetAddress,
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
