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

  @GET("/products/{id}")
  Future<HttpResponse<Product>> getItem(@Path("id") Id id);

  @PATCH("/products/{id}/favorite")
  Future<HttpResponse<Product>> favorite(@Path("id") int id);

  @GET("/products/{id}/unfavorite")
  Future<HttpResponse<Product>> unfavorite(@Path("id") int id);
}

@freezedRequest
class ProductsFilters with _$ProductsFilters {
  @jsonSerializableRequest
  const factory ProductsFilters({
    required int page,
    required int prePage,
  }) = _ProductsFilters;
}
