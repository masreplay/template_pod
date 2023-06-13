import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:starter/common_lib.dart';

class ImagePick extends StatelessWidget {
  const ImagePick({
    super.key,
    required this.image,
    required this.onChanged,
  });

  ImagePick.notifier(ValueNotifier<CroppedFile?> notifier, {super.key})
      : image = notifier.value,
        onChanged = notifier.update;

  final CroppedFile? image;
  final ValueChanged<CroppedFile> onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: () {
        cropImage(context).then((value) {
          if (value != null) {
            onChanged(value);
          }
        });
      },
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(color: theme.colorScheme.outline),
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.add_a_photo,
          color: theme.colorScheme.primary,
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
        toolbarWidgetColor: Colors.white,
        initAspectRatio: CropAspectRatioPreset.original,
        lockAspectRatio: false,
      ),
      IOSUiSettings()
    ],
  );
}
