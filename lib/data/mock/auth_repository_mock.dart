import 'package:starter/data/repositories/auth_repository.dart';
import 'package:starter/service/service.dart';

class AuthRepositoryMock implements AuthRepository {
  @override
  Future<LoginResponse> login(LoginRequest data) async {
    await Future.delayed(const Duration(seconds: 2));
    return const LoginResponse(
      token: "random",
      refreshToken: "random",
    );
  }

  @override
  Future<dynamic> logout() {
    return Future.delayed(const Duration(seconds: 2));
  }
}
