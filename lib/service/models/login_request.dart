import '_models.dart';

part 'login_request.freezed.dart';
part 'login_request.g.dart';

@freezedRequest
class LoginRequest with _$LoginRequest {
  const LoginRequest._();

  @jsonSerializableRequest
  const factory LoginRequest({
    required String email,
    required String password,
  }) = _LoginRequest;
}
