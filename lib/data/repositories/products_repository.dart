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

  Future<Product> get(Id id) => _client.getItem(id).data;

  Future<Product> favorite(int id) => _client.favorite(id).data;

  Future<Product> unfavorite(int id) => _client.unfavorite(id).data;
}
