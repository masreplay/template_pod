// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeDataResponseItems _$$_HomeDataResponseItemsFromJson(
        Map<String, dynamic> json) =>
    _$_HomeDataResponseItems(
      items: (json['items'] as List<dynamic>)
          .map((e) => HomeDataItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

_$_HomeDataResponseShops _$$_HomeDataResponseShopsFromJson(
        Map<String, dynamic> json) =>
    _$_HomeDataResponseShops(
      $type: json['type'] as String?,
    );

_$_HomeDataItem _$$_HomeDataItemFromJson(Map<String, dynamic> json) =>
    _$_HomeDataItem(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String?,
      image: json['image'] as String,
      price: (json['price'] as num).toDouble(),
      rating: (json['rating'] as num).toDouble(),
    );
