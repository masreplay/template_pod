// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeDataResponseItems _$$HomeDataResponseItemsFromJson(
        Map<String, dynamic> json) =>
    _$HomeDataResponseItems(
      title: json['title'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => HomeDataProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

_$HomeDataResponseShops _$$HomeDataResponseShopsFromJson(
        Map<String, dynamic> json) =>
    _$HomeDataResponseShops(
      title: json['title'] as String,
      items: (json['items'] as List<dynamic>).map((e) => e as String).toList(),
      $type: json['type'] as String?,
    );

_$_HomeDataProduct _$$_HomeDataProductFromJson(Map<String, dynamic> json) =>
    _$_HomeDataProduct(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String?,
      image: json['image'] as String,
      price: (json['price'] as num).toDouble(),
      rating: (json['rating'] as num).toDouble(),
    );
