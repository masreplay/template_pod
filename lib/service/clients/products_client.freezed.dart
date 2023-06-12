// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductsFilters _$ProductsFiltersFromJson(Map<String, dynamic> json) {
  return _ProductsFilters.fromJson(json);
}

/// @nodoc
mixin _$ProductsFilters {
  int get page => throw _privateConstructorUsedError;
  int get prePage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductsFiltersCopyWith<ProductsFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsFiltersCopyWith<$Res> {
  factory $ProductsFiltersCopyWith(
          ProductsFilters value, $Res Function(ProductsFilters) then) =
      _$ProductsFiltersCopyWithImpl<$Res, ProductsFilters>;
  @useResult
  $Res call({int page, int prePage});
}

/// @nodoc
class _$ProductsFiltersCopyWithImpl<$Res, $Val extends ProductsFilters>
    implements $ProductsFiltersCopyWith<$Res> {
  _$ProductsFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? prePage = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      prePage: null == prePage
          ? _value.prePage
          : prePage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductsFiltersCopyWith<$Res>
    implements $ProductsFiltersCopyWith<$Res> {
  factory _$$_ProductsFiltersCopyWith(
          _$_ProductsFilters value, $Res Function(_$_ProductsFilters) then) =
      __$$_ProductsFiltersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, int prePage});
}

/// @nodoc
class __$$_ProductsFiltersCopyWithImpl<$Res>
    extends _$ProductsFiltersCopyWithImpl<$Res, _$_ProductsFilters>
    implements _$$_ProductsFiltersCopyWith<$Res> {
  __$$_ProductsFiltersCopyWithImpl(
      _$_ProductsFilters _value, $Res Function(_$_ProductsFilters) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? prePage = null,
  }) {
    return _then(_$_ProductsFilters(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      prePage: null == prePage
          ? _value.prePage
          : prePage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@jsonSerializable
class _$_ProductsFilters implements _ProductsFilters {
  const _$_ProductsFilters({required this.page, required this.prePage});

  factory _$_ProductsFilters.fromJson(Map<String, dynamic> json) =>
      _$$_ProductsFiltersFromJson(json);

  @override
  final int page;
  @override
  final int prePage;

  @override
  String toString() {
    return 'ProductsFilters(page: $page, prePage: $prePage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductsFilters &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.prePage, prePage) || other.prePage == prePage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, prePage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductsFiltersCopyWith<_$_ProductsFilters> get copyWith =>
      __$$_ProductsFiltersCopyWithImpl<_$_ProductsFilters>(this, _$identity);
}

abstract class _ProductsFilters implements ProductsFilters {
  const factory _ProductsFilters(
      {required final int page,
      required final int prePage}) = _$_ProductsFilters;

  factory _ProductsFilters.fromJson(Map<String, dynamic> json) =
      _$_ProductsFilters.fromJson;

  @override
  int get page;
  @override
  int get prePage;
  @override
  @JsonKey(ignore: true)
  _$$_ProductsFiltersCopyWith<_$_ProductsFilters> get copyWith =>
      throw _privateConstructorUsedError;
}
