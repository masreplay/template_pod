import 'dart:math';

import 'package:dio/dio.dart';
import 'package:starter/data/repositories/products_repository.dart';
import 'package:starter/service/service.dart';

final List<Product> _products = List.generate(
  100,
  (index) {
    return Product(
      id: index,
      name: "Product $index",
      description: "Description $index",
      image: "https://picsum.photos/200/300?random=$index",
      price: Random().nextInt(1000).toDouble() * index,
      isFavorite: Random().nextBool(),
    );
  },
);

class ProductsRepositoryMock implements ProductsRepository {
  @override
  Future<Pagination<Product>> getAll(ProductsFilters filter) async {
    await Future.delayed(const Duration(seconds: 2));

    if (filter.page == 2) {
      throw DioException(
        requestOptions: RequestOptions(path: ''),
        error: 'Error',
        response: Response(
          requestOptions: RequestOptions(path: ''),
          data: 'Error',
          statusCode: 400,
        ),
      );
    }

    final start = (filter.page - 1) * filter.prePage;
    final end = start + filter.prePage;
    final products = _products.sublist(start, end);

    return Pagination(
      total: _products.length,
      items: products,
    );
  }

  @override
  Future<Product> get(Id id) {
    return Future.delayed(
      const Duration(seconds: 2),
      () => _products.firstWhere((element) => element.id == id),
    );
  }

  @override
  Future<Product> favorite(int id) {
    return Future.delayed(
      const Duration(seconds: 2),
      () {
        final product = _products.firstWhere((element) => element.id == id);
        return product.copyWith(isFavorite: !product.isFavorite);
      },
    );
  }

  @override
  Future<Product> unfavorite(int id) {
    return Future.delayed(
      const Duration(seconds: 2),
      () {
        final product = _products.firstWhere((element) => element.id == id);
        return product.copyWith(isFavorite: !product.isFavorite);
      },
    );
  }
}
