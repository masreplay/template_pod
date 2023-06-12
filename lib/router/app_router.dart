import 'package:auto_route/auto_route.dart';
import 'package:starter/src/main/home/home_page.dart';
import 'package:starter/src/main/main_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(
        page: MainRoute.page,
        children: [
          AutoRoute(
            page: HomeRoute.page,
          ),
        ],
      ),
    ];
  }
}
