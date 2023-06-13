import 'package:starter/common_lib.dart';

class PasswordTextInput extends StatelessWidget {
  const PasswordTextInput({
    super.key,
    required this.controller,
    required this.passwordObscure,
    this.label,
  });

  final TextEditingController controller;
  final ValueNotifier<bool> passwordObscure;
  final Widget? label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: context.validator.required().build(),
      obscureText: passwordObscure.value,
      textInputAction: TextInputAction.done,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        label: label ?? Text(context.l10n.password),
        suffixIcon: PasswordObscureIcon.notifier(passwordObscure),
      ),
    );
  }
}
