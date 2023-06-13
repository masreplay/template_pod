import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:starter/src/auth/login/login_page.dart';
import 'package:starter/src/main/home/home_page.dart';
import 'package:starter/src/main/main_page.dart';
import 'package:starter/src/main/more/more_page.dart';
import 'package:starter/src/products/all/products_page.dart';
import 'package:starter/src/products/details/product_page.dart';

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
        initial: true,
        page: MainRoute.page,
        guards: authenticatedGuards,
        children: [
          AutoRoute(
            initial: true,
            page: HomeRoute.page,
          ),
          AutoRoute(
            path: 'more',
            page: MoreRoute.page,
          ),
        ],
      ),
      AutoRoute(
        path: '/login',
        page: LoginRoute.page,
        guards: notAuthenticatedGuards,
      ),
      AutoRoute(
        path: '/signUp',
        page: SignUpRoute.page,
        guards: notAuthenticatedGuards,
      ),
      AutoRoute(
        path: '/products',
        page: ProductsRoute.page,
        guards: authenticatedGuards,
      ),
      // :id
      AutoRoute(
        path: '/products/:id',
        page: ProductDetailsRoute.page,
        guards: authenticatedGuards,
      ),
    ];
  }
}
