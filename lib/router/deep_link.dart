import 'package:starter/common_lib.dart';
import 'package:url_launcher/url_launcher_string.dart';

const String baseurl = "http://example.com";

/// if url start with [baseurl] then it is a deep link
/// otherwise it is a url
Future<void> launchUrlOrDeepLink(
  BuildContext context, {
  required String url,
}) async {
  if (url.startsWith(baseurl)) {
    await context.router.pushNamed(url.substring(baseurl.length));
  } else {
    await launchUrlString(
      url,
      mode: LaunchMode.externalApplication,
    );
  }
}
