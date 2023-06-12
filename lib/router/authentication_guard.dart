import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:starter/data/shared_preferences/authentication_provider.dart';

import 'app_router.dart';

class AuthenticatedGuard extends AutoRouteGuard {
  final WidgetRef ref;

  AuthenticatedGuard(this.ref);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final authData = ref.watch(authenticationProvider);
    final isLoggedIn = authData != null;

    debugPrint("${toString()} $isLoggedIn");

    if (isLoggedIn) {
      resolver.next(true);
    } else {
      router.push(const LoginRoute());
    }
  }
}

class NotAuthenticatedGuard extends AutoRouteGuard {
  final WidgetRef ref;

  NotAuthenticatedGuard(this.ref);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final authData = ref.watch(authenticationProvider);
    final isLoggedIn = authData != null;

    debugPrint("${toString()} $isLoggedIn");

    if (isLoggedIn) {
      router.push(const LoginRoute());
    } else {
      resolver.next(true);
    }
  }
}
