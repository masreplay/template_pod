import 'dart:io';

import '_models.dart';

part 'sign_up_request.freezed.dart';

@freezedRequest
class SignUpRequest with _$SignUpRequest {
  const SignUpRequest._();

  @jsonSerializableRequest
  const factory SignUpRequest({
    @FileJsonConverter() required File file,
    required String username,
    required String password,
    required String email,
  }) = _SignUpRequest;

  @override
  // ignore: unnecessary_overrides
  Map<String, dynamic> toJson() => super.toJson();
}
