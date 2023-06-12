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

  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(page: LoginRoute.page),
      AutoRoute(
        page: MainRoute.page,
        children: [
          AutoRoute(
            page: HomeRoute.page,
            guards: [
              AuthenticatedGuard(ref),
            ],
          ),
        ],
      ),
    ];
  }
}
