// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authenticationHash() => r'be1d596eef6ba4de341e9cb08bdba52874cf6ade';

/// See also [Authentication].
@ProviderFor(Authentication)
final authenticationProvider =
    AutoDisposeNotifierProvider<Authentication, LoginResponse?>.internal(
  Authentication.new,
  name: r'authenticationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authenticationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Authentication = AutoDisposeNotifier<LoginResponse?>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
