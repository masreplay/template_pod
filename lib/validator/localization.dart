import 'package:form_validator/form_validator.dart';
import 'package:starter/common_lib.dart';

class FormValidatorLocaleApp implements FormValidatorLocale {
  final BuildContext context;
  const FormValidatorLocaleApp(this.context);

  @override
  String name() => context.l10n.localeName;

  @override
  String minLength(String v, int n) => context.l10n.validatorMinLength(n);

  @override
  String maxLength(String v, int n) => context.l10n.validatorMaxLength(n);

  @override
  String email(String v) => context.l10n.validatorEmail;

  @override
  String phoneNumber(String v) => context.l10n.validatorPhoneNumber;

  @override
  String required() => context.l10n.validatorRequired;

  @override
  String url(String v) => context.l10n.validatorUrl;

  @override
  String ip(String v) => throw UnimplementedError();

  @override
  String ipv6(String v) => throw UnimplementedError();
}
