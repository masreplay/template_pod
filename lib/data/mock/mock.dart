import '../repositories/auth_repository.dart';
import '../repositories/home_data_repository.dart';
import '../repositories/products_repository.dart';
import 'auth_repository_mock.dart';
import 'home_repository_mock.dart';
import 'products_repository_mock.dart';

get mockOverrides {
  return [
    authRepositoryProvider.overrideWithValue(AuthRepositoryMock()),
    homeDataRepositoryProvider.overrideWithValue(HomeDataRepositoryMock()),
    productsRepositoryProvider.overrideWithValue(ProductsRepositoryMock()),
  ];
}
