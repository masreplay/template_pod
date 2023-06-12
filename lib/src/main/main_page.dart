import 'package:starter/common_lib.dart';
import 'package:starter/router/router.dart';

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
    ];

    final theme = Theme.of(context);

    return AutoTabsRouter(
      routes: [for (final routeData in routesData) routeData.route],
      transitionBuilder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);
        // final selected = tabsRouter.activeIndex;

        return Scaffold(
          body: FadeTransition(opacity: animation, child: child),
          appBar: AppBar(title: Text(context.l10n.appName)),
          bottomNavigationBar: BottomNavigationBar(
            onTap: tabsRouter.setActiveIndex,
            backgroundColor: theme.colorScheme.background,
            items: [
              for (final routeData in routesData)
                BottomNavigationBarItem(
                  icon: Icon(routeData.icon),
                  label: routeData.name,
                ),
            ],
          ),
        );
      },
    );
  }
}
