import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:starter/common_lib.dart';
import 'package:starter/router/router.dart';
import 'package:starter/theme/app_theme.dart';

import 'data/shared_preferences/settings_provider.dart';

class MainApp extends StatefulHookConsumerWidget {
  const MainApp({super.key});

  @override
  ConsumerState<MainApp> createState() => _MainAppState();
}

class _MainAppState extends ConsumerState<MainApp> {
  late AppRouter _appRouter;

  @override
  void initState() {
    super.initState();

    _appRouter = AppRouter(ref);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    final theme = AppTheme();
    final settings = ref.watch(settingsProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: kDebugMode,
      // Router
      routerDelegate: AutoRouterDelegate(
        _appRouter,
        navigatorObservers: () => [if (kDebugMode) RouteLoggerObserver()],
      ),
      routeInformationProvider: _appRouter.routeInfoProvider(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerConfig: _appRouter.config(),
      // Locale
      locale: settings.locale,
      onGenerateTitle: (context) => context.l10n.appName,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      // Theme
      themeMode: settings.themeMode,
      darkTheme: theme.buildDarkTheme(),
      theme: theme.buildLightTheme(),
    );
  }
}
