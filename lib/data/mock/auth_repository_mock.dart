import 'package:starter/data/repositories/auth_repository.dart';
import 'package:starter/service/service.dart';

class AuthRepositoryMock implements AuthRepository {
  @override
  Future<LoginResponse> login(LoginRequest data) => Future.delayed(
        const Duration(seconds: 2),
        () => const LoginResponse(
          token: "random",
          refreshToken: "random",
        ),
      );

  @override
  Future<LogoutResponse> logout() => Future.delayed(
        const Duration(seconds: 2),
        () => const LogoutResponse(),
      );

  @override
  Future<SignUpResponse> signUp(SignUpRequest data) => Future.delayed(
        const Duration(seconds: 2),
        () => const SignUpResponse(
          token: "random",
          refreshToken: "random",
        ),
      );
}
