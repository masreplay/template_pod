import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:starter/service/clients/_clients.dart';
import 'package:starter/service/interceptors/authenticator.dart';

part 'dio.g.dart';

@riverpod
Dio dio(DioRef ref) {
  final dio = Dio();
  dio.options
    ..baseUrl = "https://api.github.com"
    ..connectTimeout = const Duration(seconds: 30)
    ..sendTimeout = const Duration(seconds: 60);

  dio.interceptors.addAll(
    [
      // LogInterceptor(),
      AwesomeDioInterceptor(),
      Authenticator(ref),
    ],
  );

  return dio;
}

extension DioRefX on Ref {
  Dio get dio => read(dioProvider);
}
