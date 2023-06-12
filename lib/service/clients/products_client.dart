import 'package:starter/service/models/_models.dart';

import '_clients.dart';

part 'products_client.freezed.dart';
part 'products_client.g.dart';

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
  @jsonSerializable
  const factory ProductsFilters({
    required int page,
    required int prePage,
  }) = _ProductsFilters;

  factory ProductsFilters.fromJson(Map<String, dynamic> json) =>
      _$ProductsFiltersFromJson(json);
}
