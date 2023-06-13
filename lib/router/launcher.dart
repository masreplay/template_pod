import 'package:url_launcher/url_launcher_string.dart';

Future<void> launchWhatsApp(String phone, {String? message}) async {
  String uri = 'https://wa.me/$phone';

  if (message != null) {
    uri += '?text=${Uri.encodeComponent(message)}';
  }

  await launchUrlString(
    uri,
    mode: LaunchMode.externalApplication,
  );
}

Future<void> launchPhoneCall(String phone) async {
  await launchUrlString(
    'tel:$phone',
    mode: LaunchMode.externalApplication,
  );
}

Future<bool> launchPrivacyPolicy(String localeName) async {
  return await launchUrlString(
    "https://mamnonapp.com/privacy/$localeName",
    mode: LaunchMode.externalApplication,
  );
}

Future<bool> launchGoogleMap(double latitude, double longitude) async {
  final url =
      'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
  return launchUrlString(url, mode: LaunchMode.externalApplication);
}
