// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logout_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LogoutResponse _$LogoutResponseFromJson(Map<String, dynamic> json) {
  return _LogoutResponse.fromJson(json);
}

/// @nodoc
mixin _$LogoutResponse {}

/// @nodoc
abstract class $LogoutResponseCopyWith<$Res> {
  factory $LogoutResponseCopyWith(
          LogoutResponse value, $Res Function(LogoutResponse) then) =
      _$LogoutResponseCopyWithImpl<$Res, LogoutResponse>;
}

/// @nodoc
class _$LogoutResponseCopyWithImpl<$Res, $Val extends LogoutResponse>
    implements $LogoutResponseCopyWith<$Res> {
  _$LogoutResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LogoutResponseCopyWith<$Res> {
  factory _$$_LogoutResponseCopyWith(
          _$_LogoutResponse value, $Res Function(_$_LogoutResponse) then) =
      __$$_LogoutResponseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutResponseCopyWithImpl<$Res>
    extends _$LogoutResponseCopyWithImpl<$Res, _$_LogoutResponse>
    implements _$$_LogoutResponseCopyWith<$Res> {
  __$$_LogoutResponseCopyWithImpl(
      _$_LogoutResponse _value, $Res Function(_$_LogoutResponse) _then)
      : super(_value, _then);
}

/// @nodoc

@jsonSerializableResponse
class _$_LogoutResponse extends _LogoutResponse {
  const _$_LogoutResponse() : super._();

  factory _$_LogoutResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LogoutResponseFromJson(json);

  @override
  String toString() {
    return 'LogoutResponse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LogoutResponse);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _LogoutResponse extends LogoutResponse {
  const factory _LogoutResponse() = _$_LogoutResponse;
  const _LogoutResponse._() : super._();

  factory _LogoutResponse.fromJson(Map<String, dynamic> json) =
      _$_LogoutResponse.fromJson;
}
