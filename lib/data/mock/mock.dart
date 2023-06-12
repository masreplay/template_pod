import 'package:starter/data/repositories/auth_repository.dart';

import 'auth_repository.dart';

get mockOverrides {
  return [
    authRepositoryProvider.overrideWithValue(AuthRepositoryMock()),
  ];
}
