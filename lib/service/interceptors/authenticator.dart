import 'package:starter/common_lib.dart';
import 'package:starter/data/shared_preferences/shared_preferences.dart';
import 'package:starter/service/clients/_clients.dart';

class Authenticator extends Interceptor {
  final Ref ref;

  Authenticator(this.ref);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = ref.read(authenticationPreferenceProvider)?.token;

    if (token != null) {
      options.headers.addAll({
        "token": token,
      });
    }

    super.onRequest(options, handler);
  }
}
