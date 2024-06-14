import 'package:flutter/material.dart';

import '../../../../configs/theme/dark theme/dark_theme_colors.dart';
import '../../../../configs/utils/responsive_spacers.dart';
import '../../../../shared/widgets/app_appbar.dart';
import '../../../../shared/widgets/form_widgets/form_bottom_appbar.dart';
import '../../../../shared/widgets/form_widgets/form_expansion_panel.dart';
import '../../../../shared/widgets/form_widgets/form_floating_action_button.dart';
import '../../../../shared/widgets/image_picker/image_picker.dart';
import '../../../../shared/widgets/text_fields/form_text_field.dart';

class ProductFormScreen extends StatefulWidget {
  const ProductFormScreen({super.key});

  @override
  State<ProductFormScreen> createState() => _ProductFormScreenState();
}

class _ProductFormScreenState extends State<ProductFormScreen> {
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
          title: const Text("افزودن کالا جدید"),
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
                          labelText: "نام کالا",
                          inputType: TextInputType.name,
                        ),
                        const ResponsiveXSpace(
                          precentage: 2,
                        ),
                        AppFormTextField(labelText: "کد کالا"),
                        const ResponsiveXSpace(
                          precentage: 1,
                        ),
                        AppFormTextField(labelText: "گروه کالایی"),
                        const ResponsiveXSpace(
                          precentage: 1,
                        ),
                        AppFormTextField(labelText: "واحد شمارش"),
                        const ResponsiveXSpace(
                          precentage: 1,
                        ),
                        const ResponsiveXSpace(
                          precentage: 1,
                        ),
                        AppFormTextField(
                          labelText: "موجودی اولیه کالا",
                          inputType: TextInputType.number,
                        ),
                        const ResponsiveXSpace(
                          precentage: 2,
                        ),
                        AppFormTextField(
                          labelText: "قیمت خرید",
                          inputType: TextInputType.phone,
                        ),
                        const ResponsiveXSpace(
                          precentage: 2,
                        ),
                        AppFormTextField(
                          labelText: "قیمت فروش",
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
                                labelText: "شرح در فاکتور",
                                inputType: TextInputType.number,
                              ),
                              const ResponsiveXSpace(precentage: 2),
                              AppFormTextField(
                                labelText: "بارکد",
                                inputType: TextInputType.number,
                              ),
                              const ResponsiveXSpace(precentage: 2),
                              AppFormTextField(
                                labelText: "حداقل روز برای هشدار تاریخ انقضا",
                                inputType: TextInputType.number,
                              ),
                              const ResponsiveXSpace(precentage: 2),
                              AppFormTextField(labelText: "حداقل موجودی"),
                              const ResponsiveXSpace(
                                precentage: 1,
                              ),
                              AppFormTextField(
                                  labelText: "درصد مالیات بر ارزش افزوده"),
                              const ResponsiveXSpace(
                                precentage: 1,
                              ),
                              AppFormTextField(labelText: "وزن(گرم)"),
                              const ResponsiveXSpace(
                                precentage: 1,
                              ),
                            ],
                          ),
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
