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
    required List<HomeDataItem> items,
  }) = _HomeDataResponseItems;

  @jsonSerializableResponse
  const factory HomeDataResponse.shops() = _HomeDataResponseShops;

  factory HomeDataResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeDataResponseFromJson(json);
}

@freezedResponse
class HomeDataItem with _$HomeDataItem {
  @jsonSerializableResponse
  factory HomeDataItem({
    required Id id,
    required String name,
    required String? description,
    required String image,
    required double price,
    required double rating,
  }) = _HomeDataItem;

  factory HomeDataItem.fromJson(Map<String, dynamic> json) =>
      _$HomeDataItemFromJson(json);
}
