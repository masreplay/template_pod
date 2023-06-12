import 'package:auto_route/auto_route.dart';
import 'package:starter/common_lib.dart';
import 'package:starter/data/repositories/home_data_repository.dart';
import 'package:starter/service/models/home_data_response.dart';

part 'home_page.g.dart';

@riverpod
Future<List<HomeDataResponse>> getHomeData(GetHomeDataRef ref) =>
    ref.read(homeDataRepositoryProvider).getHomeData();

@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
