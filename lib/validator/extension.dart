import 'package:form_validator/form_validator.dart';

import '../common_lib.dart';
import 'localization.dart';

extension ValidatorX on BuildContext {
  ValidationBuilder get validator {
    final locale = FormValidatorLocaleApp(this);
    return ValidationBuilder(
      optional: false,
      requiredMessage: locale.required(),
      locale: locale,
    );
  }
}

extension FormStateX on GlobalKey<FormState> {
  bool isNotValid() => !currentState!.validate();
}
