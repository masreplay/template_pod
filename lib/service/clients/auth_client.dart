import '_clients.dart';

part "auth_client.g.dart";

@riverpod
AuthClient authClient(AuthClientRef ref) => AuthClient(ref.dio);

@RestApi()
abstract class AuthClient {
  factory AuthClient(Dio dio, {String baseUrl}) = _AuthClient;

  @POST("/login")
  Future<HttpResponse<LoginResponse>> login(LoginRequest data);
}
