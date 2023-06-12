import 'package:starter/data/repositories/auth_repository.dart';
import 'package:starter/data/repositories/home_data_repository.dart';

import 'auth_repository.dart';
import 'home_repository.dart';

get mockOverrides {
  return [
    authRepositoryProvider.overrideWithValue(AuthRepositoryMock()),
    homeDataRepositoryProvider.overrideWithValue(HomeDataRepositoryMock()),
  ];
}
