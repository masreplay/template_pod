import '_repositories.dart';

part "auth_repository.g.dart";

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) =>
    AuthRepository(ref.read(authClientProvider));

class AuthRepository {
  const AuthRepository(this._client);

  final AuthClient _client;

  Future<LoginResponse> login(LoginRequest data) => _client.login(data).data;

  Future<dynamic> logout() => _client.logout().data;
}
