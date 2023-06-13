import 'dart:io';

import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:starter/common_lib.dart';

class ImageProfile extends StatelessWidget {
  const ImageProfile({Key? key, required this.image}) : super(key: key);

  final CroppedFile? image;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: 100,
      height: 100,
      child: Stack(
        children: [
          if (image != null)
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.file(
                File(image!.path),
                fit: BoxFit.cover,
                width: 100,
                height: 100,
              ),
            ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              width: 30,
              height: 30,
              child: FloatingActionButton(
                onPressed: () async {},
                backgroundColor: theme.primaryColor,
                child: const Icon(Icons.edit),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Future<CroppedFile?> cropImage(BuildContext context) async {
  final result = await ImagePicker().pickImage(source: ImageSource.gallery);

  final theme = Theme.of(context);
  return await ImageCropper().cropImage(
    sourcePath: result!.path,
    aspectRatioPresets: [
      CropAspectRatioPreset.original,
      CropAspectRatioPreset.square,
      CropAspectRatioPreset.ratio3x2,
      CropAspectRatioPreset.ratio4x3,
      CropAspectRatioPreset.ratio16x9
    ],
    uiSettings: [
      AndroidUiSettings(
        toolbarTitle: context.l10n.crop,
        statusBarColor: theme.colorScheme.primary,
        toolbarColor: theme.colorScheme.primary,
        cropGridColor: theme.colorScheme.outline,
        backgroundColor: theme.colorScheme.background,
        activeControlsWidgetColor: theme.colorScheme.primary,
        toolbarWidgetColor: Colors.white,
        initAspectRatio: CropAspectRatioPreset.original,
        lockAspectRatio: false,
      ),
      IOSUiSettings()
    ],
  );
}
