import 'package:starter/service/models/_models.dart';

import 'id.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezedResponse
class Product with _$Product {
  const Product._();
  @jsonSerializableResponse
  const factory Product({
    required Id id,
    required String name,
    required String description,
    required String image,
    required double price,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
