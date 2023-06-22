import 'package:riverpod_state/riverpod_state.dart';
import 'package:starter/common_lib.dart';
import 'package:starter/data/repositories/auth_repository.dart';
import 'package:starter/data/shared_preferences/authentication_provider.dart';
import 'package:starter/service/clients/_clients.dart';

part 'logout_provider.g.dart';

@riverpod
class Logout extends _$Logout with AsyncXNotifierMixin<LogoutResponse> {
  @override
  BuildXCallback<LogoutResponse> build() => idle();

  @useResult
  RunXCallback<LogoutResponse> run() =>
      handle(() => ref.read(authRepositoryProvider).logout());
}

Future<void> logout({
  required WidgetRef ref,
}) async {
  // ignore: unused_result
  await ref.read(logoutProvider.notifier).run();
  await ref.read(authenticationPreferenceProvider.notifier).clear();
  await ref.context.router.replace(const LoginRoute());
}
