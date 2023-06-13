// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getProductHash() => r'88d8e959035f6094df3320b0b255c96203e32c0c';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$GetProduct extends BuildlessAutoDisposeAsyncNotifier<Product> {
  late final int id;

  Future<Product> build({
    required int id,
  });
}

/// See also [GetProduct].
@ProviderFor(GetProduct)
const getProductProvider = GetProductFamily();

/// See also [GetProduct].
class GetProductFamily extends Family<AsyncValue<Product>> {
  /// See also [GetProduct].
  const GetProductFamily();

  /// See also [GetProduct].
  GetProductProvider call({
    required int id,
  }) {
    return GetProductProvider(
      id: id,
    );
  }

  @override
  GetProductProvider getProviderOverride(
    covariant GetProductProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getProductProvider';
}

/// See also [GetProduct].
class GetProductProvider
    extends AutoDisposeAsyncNotifierProviderImpl<GetProduct, Product> {
  /// See also [GetProduct].
  GetProductProvider({
    required this.id,
  }) : super.internal(
          () => GetProduct()..id = id,
          from: getProductProvider,
          name: r'getProductProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getProductHash,
          dependencies: GetProductFamily._dependencies,
          allTransitiveDependencies:
              GetProductFamily._allTransitiveDependencies,
        );

  final int id;

  @override
  bool operator ==(Object other) {
    return other is GetProductProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Future<Product> runNotifierBuild(
    covariant GetProduct notifier,
  ) {
    return notifier.build(
      id: id,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
