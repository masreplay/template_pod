import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:starter/data/repositories/_repositories.dart';
import 'package:starter/service/clients/_clients.dart';

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
      LogInterceptor(),
      Authenticator(),
    ],
  );

  return dio;
}

extension DioRefX on Ref {
  Dio get dio => read(dioProvider);
}
