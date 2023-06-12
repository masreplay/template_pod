import 'package:flutter/material.dart';
import 'package:starter/data/repositories/_repositories.dart';

import 'object_preference_provider.dart';
import 'preferences.dart';

part 'authentication_provider.g.dart';

@riverpod
class Authentication extends _$Authentication
    with NullableObjectPreferenceProvider {
  @override
  @protected
  String get key => Preferences.authentication;

  @override
  LoginResponse? build() => firstBuild();

  @override
  LoginResponse? fromJson(Map<String, dynamic>? map) =>
      map == null ? null : LoginResponse.fromJson(map);

  @override
  Map<String, dynamic>? toJson(LoginResponse? value) => value?.toJson();

  Future<void> logout() async {
    await clear();
  }
}
