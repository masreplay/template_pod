import 'package:starter/common_lib.dart';

class PasswordObscureIcon extends StatelessWidget {
  const PasswordObscureIcon({
    super.key,
    required this.value,
    required this.valueChanged,
  });

  PasswordObscureIcon.notifier(
    ValueNotifier<bool> notifier, {
    super.key,
  })  : value = notifier.value,
        valueChanged = notifier.update;

  final bool value;
  final ValueChanged<bool> valueChanged;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => valueChanged(!value),
      icon: Icon(
        value ? Icons.visibility_off : Icons.visibility,
      ),
    );
  }
}
