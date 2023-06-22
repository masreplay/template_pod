import 'package:starter/common_lib.dart';
import 'package:starter/data/shared_preferences/shared_preferences.dart';

class AuthenticatedGuard extends AutoRouteGuard {
  final WidgetRef ref;
  final bool ensureAuthenticated;

  const AuthenticatedGuard(
    this.ref, {
    required this.ensureAuthenticated,
  });

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final authData = ref.watch(authenticationPreferenceProvider);
    final isLoggedIn = authData != null;

    debugPrint("isLoggedIn $isLoggedIn");

    if (isLoggedIn || !ensureAuthenticated) {
      resolver.next(true);
    } else {
      router.push(const LoginRoute());
    }
  }
}
