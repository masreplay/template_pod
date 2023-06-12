import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:starter/data/repositories/_repositories.dart';
import 'package:starter/service/clients/_clients.dart';

part 'dio.g.dart';

@riverpod
Dio dio(DioRef ref) {
  final dio = Dio();
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
