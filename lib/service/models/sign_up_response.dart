import '_models.dart';

part 'sign_up_response.freezed.dart';
part 'sign_up_response.g.dart';

@freezedResponse
class SignUpResponse with _$SignUpResponse {
  const SignUpResponse._();

  @jsonSerializableResponse
  const factory SignUpResponse({
    required String token,
    required String refreshToken,
  }) = _SignUpResponse;

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}
