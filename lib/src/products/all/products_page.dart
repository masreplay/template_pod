import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:starter/common_lib.dart';
import 'package:starter/data/repositories/_repositories.dart';
import 'package:starter/data/repositories/products_repository.dart';
import 'package:starter/paging/pagination_controller.dart';
import 'package:starter/paging/paging_list_delegate.dart';

part 'products_page.g.dart';

@riverpod
Future<Pagination<Product>> getProducts(GetProductsRef ref,
        {required ProductsFilters filter}) =>
    ref.watch(productsRepositoryProvider).getAll(filter);

@RoutePage()
class ProductsPage extends StatefulHookConsumerWidget {
  const ProductsPage({super.key});

  @override
  ConsumerState<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends ConsumerState<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    final filter = useState(const ProductsFilters(page: 1, prePage: 25));
    final pagingController = usePagingController(
      listen: (page) {
        return ref.read(
          getProductsProvider(filter: filter.value.copyWith(page: page)).future,
        );
      },
    );

    return Scaffold(
      appBar: AppBar(title: const Text("items")),
      body: RefreshIndicator(
        onRefresh: () async => pagingController.refresh(),
        child: PagedListView<int, Product>(
          pagingController: pagingController,
          builderDelegate: defaultListPagedChildBuilderDelegate(
            context: context,
            controller: pagingController,
            itemBuilder: (context, item, index) {
              return ProductListTile(item: item);
            },
          ),
        ),
      ),
    );
  }
}

class ProductListTile extends StatelessWidget {
  const ProductListTile({super.key, required this.item});

  final Product item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        context.router.push(ProductDetailsRoute(id: item.id));
      },
      title: Text(item.name),
      subtitle: Text(item.description),
    );
  }
}
