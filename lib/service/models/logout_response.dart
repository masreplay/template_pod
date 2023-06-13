import '_models.dart';

part 'logout_response.freezed.dart';
part 'logout_response.g.dart';

@freezedResponse
class LogoutResponse with _$LogoutResponse {
  const LogoutResponse._();

  @jsonSerializableResponse
  const factory LogoutResponse() = _LogoutResponse;

  factory LogoutResponse.fromJson(Map<String, dynamic> json) =>
      _$LogoutResponseFromJson(json);
}
