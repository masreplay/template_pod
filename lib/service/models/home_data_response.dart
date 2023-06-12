import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:starter/service/annotations/annotations.dart';

import 'id.dart';

part 'home_data_response.freezed.dart';
part 'home_data_response.g.dart';

@freezedUnionResponse
class HomeDataResponse with _$HomeDataResponse {
  @FreezedUnionValue("products")
  @jsonSerializableResponse
  const factory HomeDataResponse.items({
    required String title,
    required List<HomeDataProduct> items,
  }) = HomeDataResponseItems;

  @jsonSerializableResponse
  const factory HomeDataResponse.shops({
    required String title,
    required List<String> items,
  }) = HomeDataResponseShops;

  factory HomeDataResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeDataResponseFromJson(json);
}

@freezedResponse
class HomeDataProduct with _$HomeDataProduct {
  @jsonSerializableResponse
  factory HomeDataProduct({
    required Id id,
    required String name,
    required String? description,
    required String image,
    required double price,
    required double rating,
  }) = _HomeDataProduct;

  factory HomeDataProduct.fromJson(Map<String, dynamic> json) =>
      _$HomeDataProductFromJson(json);
}
