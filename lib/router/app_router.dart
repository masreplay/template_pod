import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:starter/src/main/home/home_page.dart';
import 'package:starter/src/auth/login/login_page.dart';
import 'package:starter/src/main/main_page.dart';

import 'authentication_guard.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  final WidgetRef ref;

  AppRouter(this.ref);

  List<AutoRouteGuard> get authenticatedGuards => [AuthenticatedGuard(ref)];
  List<AutoRouteGuard> get notAuthenticatedGuards =>
      [NotAuthenticatedGuard(ref)];

  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(
        path: '/login',
        page: LoginRoute.page,
        guards: notAuthenticatedGuards,
      ),
      AutoRoute(
        initial: true,
        page: MainRoute.page,
        guards: authenticatedGuards,
        children: [
          AutoRoute(
            initial: true,
            page: HomeRoute.page,
          ),
        ],
      ),
    ];
  }
}
