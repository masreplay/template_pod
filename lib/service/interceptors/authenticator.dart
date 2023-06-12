import 'package:starter/service/clients/_clients.dart';

class Authenticator extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll({
      "token": "token",
    });

    super.onRequest(options, handler);
  }
}
