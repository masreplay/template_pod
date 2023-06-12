import 'package:form_validator/form_validator.dart';
import 'package:starter/common_lib.dart';

class FormValidatorLocaleApp implements FormValidatorLocale {
  final BuildContext context;
  const FormValidatorLocaleApp(this.context);

  @override
  String name() => 'ar';

  @override
  String minLength(String v, int n) =>
      'The field must be at least $n characters long';

  @override
  String maxLength(String v, int n) =>
      'The field must be at most $n characters long';

  @override
  String email(String v) => 'The field is not a valid email address';

  @override
  String phoneNumber(String v) => 'The field is not a valid phone number';

  @override
  String required() => 'The field is required';

  @override
  String url(String v) => 'The field is not a valid URL address';

  @override
  String ip(String v) => throw UnimplementedError();

  @override
  String ipv6(String v) => throw UnimplementedError();
}
