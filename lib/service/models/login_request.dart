import '_models.dart';

part 'login_request.freezed.dart';
part 'login_request.g.dart';

@freezedRequest
class LoginRequest with _$LoginRequest {
  const LoginRequest._();

  @jsonSerializableRequest
  const factory LoginRequest() = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);
}
