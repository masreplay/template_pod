import 'package:starter/service/clients/_clients.dart';

extension HttpResponseX<T> on Future<HttpResponse<T>> {
  Future<T> get data => then((value) => value.data);
}
