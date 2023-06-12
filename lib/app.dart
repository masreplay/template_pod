import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:starter/router/router.dart';
import 'package:starter/theme/app_theme.dart';

import 'data/shared_preferences/settings_provider.dart';

class MainApp extends StatefulHookConsumerWidget {
  const MainApp({super.key});

  @override
  ConsumerState<MainApp> createState() => _MainAppState();
}

class _MainAppState extends ConsumerState<MainApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme();
    final settings = ref.watch(settingsProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: kDebugMode,
      routerDelegate: AutoRouterDelegate(
        _appRouter,
        navigatorObservers: () => [if (kDebugMode) RouteLoggerObserver()],
      ),
      routeInformationProvider: _appRouter.routeInfoProvider(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      themeMode: settings.themeMode,
      locale: settings.locale,
      darkTheme: theme.buildDarkTheme(),
      theme: theme.buildLightTheme(),
    );
  }
}
