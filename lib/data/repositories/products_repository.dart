import '_repositories.dart';

part 'products_repository.g.dart';

@riverpod
ProductsRepository productsRepository(ProductsRepositoryRef ref) =>
    ProductsRepository(ref.read(productsClientProvider));

class ProductsRepository {
  const ProductsRepository(this._client);

  final ProductsClient _client;

  Future<Pagination<Product>> getAll(ProductsFilters filter) =>
      _client.getAll(filter).data;
}
