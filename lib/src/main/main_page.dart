import 'package:starter/common_lib.dart';

import 'cart_icon.dart';

@RoutePage()
class MainPage extends ConsumerStatefulWidget {
  const MainPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> {
  @override
  Widget build(BuildContext context) {
    final routesData = <({
      PageRouteInfo route,
      IconData icon,
      String name,
    })>[
      (
        route: const HomeRoute(),
        icon: Icons.home,
        name: context.l10n.home,
      ),
      (
        route: const MoreRoute(),
        icon: Icons.more_horiz,
        name: context.l10n.more,
      ),
    ];

    final theme = Theme.of(context);

    return AutoTabsRouter(
      routes: [for (final routeData in routesData) routeData.route],
      transitionBuilder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          appBar: AppBar(
            title: const Slogan(),
            actions: const [
              CartIcon(),
            ],
          ),
          body: FadeTransition(opacity: animation, child: child),
          bottomNavigationBar: NavigationBar(
            onDestinationSelected: tabsRouter.setActiveIndex,
            selectedIndex: tabsRouter.activeIndex,
            backgroundColor: theme.colorScheme.background,
            destinations: [
              for (final routeData in routesData)
                NavigationDestination(
                  icon: Icon(routeData.icon),
                  label: routeData.name,
                )
            ],
          ),
        );
      },
    );
  }
}
