import 'package:starter/common_lib.dart';
import 'package:starter/data/repositories/products_repository.dart';
import 'package:starter/service/service.dart';

part 'product_page.g.dart';

@riverpod
class GetProduct extends _$GetProduct {
  @override
  Future<Product> build({required Id id}) =>
      ref.watch(productsRepositoryProvider).get(id);

  Future<void> favorite() async {
    await ref.read(productsRepositoryProvider).favorite(id);
    state.whenOrNull(
      data: (data) => state = AsyncData(data.copyWith(isFavorite: true)),
    );
  }

  Future<void> unfavorite() async {
    await ref.read(productsRepositoryProvider).favorite(id);
    state.whenOrNull(
      data: (data) => state = AsyncData(data.copyWith(isFavorite: false)),
    );
  }
}

@RoutePage()
class ProductDetailsPage extends ConsumerStatefulWidget {
  const ProductDetailsPage({
    super.key,
    @pathParam required this.id,
  });

  final Id id;

  @override
  ConsumerState<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends ConsumerState<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final product = ref.watch(getProductProvider(id: widget.id));

    return Scaffold(
      body: product.when(
        data: (product) {
          return CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 200,
                pinned: true,
                actions: [
                  ProductFavoriteIcon(
                    id: product.id,
                    isFavorite: product.isFavorite,
                  ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(product.name),
                  background: Image.network(
                    product.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate.fixed([
                  ListTile(
                    title: Text(product.name),
                    subtitle: Text(product.description),
                  ),
                ]),
              ),
              const SliverFillRemaining()
            ],
          );
        },
        error: (error, stackTrace) {
          return DefaultErrorWidget(
            error,
            stackTrace,
            onRetry: () => ref.refresh(getProductProvider(id: widget.id)),
          );
        },
        loading: LoadingWidget.new,
      ),
    );
  }
}

class ProductFavoriteIcon extends ConsumerWidget {
  const ProductFavoriteIcon({
    super.key,
    required this.isFavorite,
    required this.id,
  });

  final Id id;
  final bool isFavorite;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return IconButton(
      onPressed: () {
        final notifier = ref.read(getProductProvider(id: id).notifier);

        isFavorite ? notifier.unfavorite() : notifier.favorite();
      },
      icon: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: isFavorite
            ? Icon(
                Icons.favorite,
                color: theme.colorScheme.error,
              )
            : const Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
      ),
    );
  }
}
