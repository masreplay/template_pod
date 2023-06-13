import '_clients.dart';

part "products_client.freezed.dart";
part "products_client.g.dart";

@riverpod
ProductsClient productsClient(ProductsClientRef ref) => ProductsClient(ref.dio);

@RestApi()
abstract class ProductsClient {
  factory ProductsClient(Dio dio, {String baseUrl}) = _ProductsClient;

  @GET("/products/getList")
  Future<HttpResponse<Pagination<Product>>> getAll(
    @Queries() ProductsFilters filter,
  );
}

@freezedRequest
class ProductsFilters with _$ProductsFilters {
  @jsonSerializableRequest
  const factory ProductsFilters({
    required int page,
    required int prePage,
  }) = _ProductsFilters;
}
