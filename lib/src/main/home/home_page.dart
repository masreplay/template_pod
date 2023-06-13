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
    final homeData = ref.watch(getHomeDataProvider);

    return homeData.when(
      data: (data) {
        return Scaffold(
          body: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              final HomeDataResponse item = data[index];

              return item.map(
                items: (value) {
                  return HomeProductsSection(value: value);
                },
                shops: (value) {
                  return Container();
                },
              );
            },
          ),
        );
      },
      error: (error, stackTrace) {
        return Scaffold(
          body: Center(
            child: Text(context.l10n.defaultErrorMessage),
          ),
        );
      },
      loading: () {
        return const Center(child: LoadingWidget());
      },
    );
  }
}

class HomeProductsSection extends StatelessWidget {
  const HomeProductsSection({super.key, required this.value});

  final HomeDataResponseItems value;

  @override
  Widget build(BuildContext context) {
    return ColumnPadded(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Insets.large),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                value.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              TextButton(
                onPressed: () {
                  context.router.push(const ProductsRoute());
                },
                child: Text(context.l10n.seeAll),
              ),
            ],
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: value.items.length,
          padding: EdgeInsets.zero,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: Insets.medium,
            mainAxisSpacing: Insets.medium,
            childAspectRatio: 1.0,
          ),
          itemBuilder: (context, index) {
            final HomeDataProduct item = value.items[index];

            return HomeProductsSectionTile(item: item);
          },
        ),
      ],
    );
  }
}

class HomeProductsSectionTile extends StatelessWidget {
  const HomeProductsSectionTile({super.key, required this.item});

  final HomeDataProduct item;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(1000);
    return ColumnPadded(
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(borderRadius: borderRadius),
              child: ClipRRect(
                borderRadius: borderRadius,
                child: Image.network(item.image, fit: BoxFit.cover),
              ),
            ),
          ),
        ),
        Text(
          item.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
