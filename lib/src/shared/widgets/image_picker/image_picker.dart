import 'package:flutter/material.dart';
import 'picker_dialog.dart';

class ImagePicker extends StatelessWidget {
  const ImagePicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 80.0,
        height: 80.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
                width: 1, color: Theme.of(context).colorScheme.inversePrimary)),
        child: Center(
          child: Icon(
            size: 50.0,
            Icons.camera_alt,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return ImagePickerDiolog();
          },
        );
      },
    );
  }
}
