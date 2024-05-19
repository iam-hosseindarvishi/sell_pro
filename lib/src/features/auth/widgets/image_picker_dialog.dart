import 'package:flutter/material.dart';
import 'image_picker_button.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerDiolog extends StatelessWidget {
  ImagePicker _imagePicker = ImagePicker();
  ImagePickerDiolog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // import from gallery
            ImagePickerButton(
              onTab: () {
                _imagePicker.pickImage(source: ImageSource.gallery);
              },
              text: "دوربین",
              icon: Icons.photo_camera,
            ),
            // import from camera
            ImagePickerButton(
                text: "گالری", icon: Icons.photo_library, onTab: () {}),
          ],
        ),
      ),
    );
  }
}
