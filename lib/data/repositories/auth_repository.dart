import 'package:starter/data/shared_preferences/shared_preferences.dart';

import '_repositories.dart';

part "auth_repository.g.dart";

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) => AuthRepository(
      ref.read(authClientProvider),
      ref.read(authenticationPreferenceProvider.notifier),
    );

class AuthRepository {
  const AuthRepository(this._client, this._sharedPreference);

  final AuthClient _client;
  final AuthenticationPreference _sharedPreference;

  Future<LoginResponse> login(LoginRequest data) async {
    final result = await _client.login(data).data;
    await _sharedPreference.update((_) => result);
    return result;
  }

  Future<LogoutResponse> logout() => _client.logout().data;

  Future<SignUpResponse> signUp(SignUpRequest data) =>
      _client.signUp(data).data;
}
