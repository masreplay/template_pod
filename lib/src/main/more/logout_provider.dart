import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:starter/common_lib.dart';
import 'package:starter/data/repositories/auth_repository.dart';
import 'package:starter/data/shared_preferences/authentication_provider.dart';
import 'package:starter/riverpod/state.dart';

part 'logout_provider.g.dart';

@riverpod
class Logout extends _$Logout with AsyncXProvider {
  @override
  Future<AsyncX<dynamic>> build() => AsyncX.idle();

  @useResult
  Future<AsyncValue<AsyncX<dynamic>>> run() =>
      handle(() => ref.read(authRepositoryProvider).logout());
}

Future<void> logout({
  required WidgetRef ref,
}) async {
  // ignore: unused_result
  await ref.read(logoutProvider.notifier).run();
  await ref.read(authenticationProvider.notifier).clear();
  await ref.context.router.replace(const LoginRoute());
}
