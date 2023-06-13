import 'dart:io';

import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:starter/common_lib.dart';

class ImagePick extends StatelessWidget {
  const ImagePick({
    super.key,
    required this.dimension,
    required this.label,
    required this.image,
    required this.onChanged,
  });

  ImagePick.notifier(
    ValueNotifier<CroppedFile?> notifier, {
    super.key,
    required this.dimension,
    required this.label,
  })  : image = notifier.value,
        onChanged = notifier.update;

  final CroppedFile? image;
  final ValueChanged<CroppedFile> onChanged;
  final double dimension;
  final Text label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: image == null
          ? InkWell(
              onTap: () {
                cropImage(context).then((value) {
                  if (value != null) onChanged(value);
                });
              },
              child: ColumnPadded(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: dimension,
                    height: dimension,
                    decoration: BoxDecoration(
                      border: Border.all(color: theme.colorScheme.outline),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.add_a_photo,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  label,
                ],
              ),
            )
          : Column(
              children: [
                Container(
                  width: dimension,
                  height: dimension,
                  decoration: BoxDecoration(
                    border: Border.all(color: theme.colorScheme.outline),
                    shape: BoxShape.circle,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(dimension),
                    child: Image.file(
                      File(image!.path),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                label,
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
