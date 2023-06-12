import '_models.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezedResponse
class LoginResponse with _$LoginResponse {
  const LoginResponse._();

  @jsonSerializableResponse
  const factory LoginResponse() = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
