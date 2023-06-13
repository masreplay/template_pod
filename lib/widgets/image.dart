import 'dart:io';

import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:starter/common_lib.dart';

class ImageFormField extends StatelessWidget {
  const ImageFormField({
    super.key,
    required this.dimension,
    required this.text,
    required this.image,
    required this.onChanged,
  });

  ImageFormField.notifier(
    ValueNotifier<CroppedFile?> notifier, {
    super.key,
    required this.dimension,
    required this.text,
  })  : image = notifier.value,
        onChanged = notifier.update;

  final CroppedFile? image;
  final ValueChanged<CroppedFile> onChanged;
  final double dimension;
  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: image == null
          ? FormField(
              initialValue: image,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == null) return context.l10n.validatorRequired;
                return null;
              },
              builder: (field) {
                return InkWell(
                  onTap: () {
                    cropImage(context).then((value) {
                      if (value != null) onChanged(value);
                    });
                  },
                  child: ColumnPadded(
                    gap: 4,
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
                      Text(
                        text,
                        style: theme.textTheme.titleLarge,
                      ),
                      if (field.hasError)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            field.errorText!,
                            style: theme.textTheme.bodySmall!.copyWith(
                              color: theme.colorScheme.error,
                            ),
                          ),
                        )
                    ],
                  ),
                );
              },
            )
          : InkWell(
              onTap: () {
                cropImage(context).then((value) {
                  if (value != null) onChanged(value);
                });
              },
              child: Column(
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
                  Text(
                    text,
                    style: theme.textTheme.titleLarge,
                  ),
                ],
              ),
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
        toolbarWidgetColor: theme.colorScheme.onPrimary,
        initAspectRatio: CropAspectRatioPreset.original,
        lockAspectRatio: false,
      ),
      IOSUiSettings(
        title: context.l10n.crop,
      )
    ],
  );
}
