// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeDataResponse _$HomeDataResponseFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'products':
      return HomeDataResponseItems.fromJson(json);
    case 'Shops':
      return HomeDataResponseShops.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'HomeDataResponse',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$HomeDataResponse {
  String get title => throw _privateConstructorUsedError;
  List<Object> get items => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, List<HomeDataProduct> items) items,
    required TResult Function(String title, List<String> items) shops,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, List<HomeDataProduct> items)? items,
    TResult? Function(String title, List<String> items)? shops,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, List<HomeDataProduct> items)? items,
    TResult Function(String title, List<String> items)? shops,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeDataResponseItems value) items,
    required TResult Function(HomeDataResponseShops value) shops,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeDataResponseItems value)? items,
    TResult? Function(HomeDataResponseShops value)? shops,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeDataResponseItems value)? items,
    TResult Function(HomeDataResponseShops value)? shops,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeDataResponseCopyWith<HomeDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDataResponseCopyWith<$Res> {
  factory $HomeDataResponseCopyWith(
          HomeDataResponse value, $Res Function(HomeDataResponse) then) =
      _$HomeDataResponseCopyWithImpl<$Res, HomeDataResponse>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class _$HomeDataResponseCopyWithImpl<$Res, $Val extends HomeDataResponse>
    implements $HomeDataResponseCopyWith<$Res> {
  _$HomeDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeDataResponseItemsCopyWith<$Res>
    implements $HomeDataResponseCopyWith<$Res> {
  factory _$$HomeDataResponseItemsCopyWith(_$HomeDataResponseItems value,
          $Res Function(_$HomeDataResponseItems) then) =
      __$$HomeDataResponseItemsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, List<HomeDataProduct> items});
}

/// @nodoc
class __$$HomeDataResponseItemsCopyWithImpl<$Res>
    extends _$HomeDataResponseCopyWithImpl<$Res, _$HomeDataResponseItems>
    implements _$$HomeDataResponseItemsCopyWith<$Res> {
  __$$HomeDataResponseItemsCopyWithImpl(_$HomeDataResponseItems _value,
      $Res Function(_$HomeDataResponseItems) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? items = null,
  }) {
    return _then(_$HomeDataResponseItems(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<HomeDataProduct>,
    ));
  }
}

/// @nodoc

@jsonSerializableResponse
class _$HomeDataResponseItems implements HomeDataResponseItems {
  const _$HomeDataResponseItems(
      {required this.title,
      required final List<HomeDataProduct> items,
      final String? $type})
      : _items = items,
        $type = $type ?? 'products';

  factory _$HomeDataResponseItems.fromJson(Map<String, dynamic> json) =>
      _$$HomeDataResponseItemsFromJson(json);

  @override
  final String title;
  final List<HomeDataProduct> _items;
  @override
  List<HomeDataProduct> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'HomeDataResponse.items(title: $title, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeDataResponseItems &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeDataResponseItemsCopyWith<_$HomeDataResponseItems> get copyWith =>
      __$$HomeDataResponseItemsCopyWithImpl<_$HomeDataResponseItems>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, List<HomeDataProduct> items) items,
    required TResult Function(String title, List<String> items) shops,
  }) {
    return items(title, this.items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, List<HomeDataProduct> items)? items,
    TResult? Function(String title, List<String> items)? shops,
  }) {
    return items?.call(title, this.items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, List<HomeDataProduct> items)? items,
    TResult Function(String title, List<String> items)? shops,
    required TResult orElse(),
  }) {
    if (items != null) {
      return items(title, this.items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeDataResponseItems value) items,
    required TResult Function(HomeDataResponseShops value) shops,
  }) {
    return items(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeDataResponseItems value)? items,
    TResult? Function(HomeDataResponseShops value)? shops,
  }) {
    return items?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeDataResponseItems value)? items,
    TResult Function(HomeDataResponseShops value)? shops,
    required TResult orElse(),
  }) {
    if (items != null) {
      return items(this);
    }
    return orElse();
  }
}

abstract class HomeDataResponseItems implements HomeDataResponse {
  const factory HomeDataResponseItems(
      {required final String title,
      required final List<HomeDataProduct> items}) = _$HomeDataResponseItems;

  factory HomeDataResponseItems.fromJson(Map<String, dynamic> json) =
      _$HomeDataResponseItems.fromJson;

  @override
  String get title;
  @override
  List<HomeDataProduct> get items;
  @override
  @JsonKey(ignore: true)
  _$$HomeDataResponseItemsCopyWith<_$HomeDataResponseItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeDataResponseShopsCopyWith<$Res>
    implements $HomeDataResponseCopyWith<$Res> {
  factory _$$HomeDataResponseShopsCopyWith(_$HomeDataResponseShops value,
          $Res Function(_$HomeDataResponseShops) then) =
      __$$HomeDataResponseShopsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, List<String> items});
}

/// @nodoc
class __$$HomeDataResponseShopsCopyWithImpl<$Res>
    extends _$HomeDataResponseCopyWithImpl<$Res, _$HomeDataResponseShops>
    implements _$$HomeDataResponseShopsCopyWith<$Res> {
  __$$HomeDataResponseShopsCopyWithImpl(_$HomeDataResponseShops _value,
      $Res Function(_$HomeDataResponseShops) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? items = null,
  }) {
    return _then(_$HomeDataResponseShops(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@jsonSerializableResponse
class _$HomeDataResponseShops implements HomeDataResponseShops {
  const _$HomeDataResponseShops(
      {required this.title,
      required final List<String> items,
      final String? $type})
      : _items = items,
        $type = $type ?? 'Shops';

  factory _$HomeDataResponseShops.fromJson(Map<String, dynamic> json) =>
      _$$HomeDataResponseShopsFromJson(json);

  @override
  final String title;
  final List<String> _items;
  @override
  List<String> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'HomeDataResponse.shops(title: $title, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeDataResponseShops &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeDataResponseShopsCopyWith<_$HomeDataResponseShops> get copyWith =>
      __$$HomeDataResponseShopsCopyWithImpl<_$HomeDataResponseShops>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, List<HomeDataProduct> items) items,
    required TResult Function(String title, List<String> items) shops,
  }) {
    return shops(title, this.items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, List<HomeDataProduct> items)? items,
    TResult? Function(String title, List<String> items)? shops,
  }) {
    return shops?.call(title, this.items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, List<HomeDataProduct> items)? items,
    TResult Function(String title, List<String> items)? shops,
    required TResult orElse(),
  }) {
    if (shops != null) {
      return shops(title, this.items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeDataResponseItems value) items,
    required TResult Function(HomeDataResponseShops value) shops,
  }) {
    return shops(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeDataResponseItems value)? items,
    TResult? Function(HomeDataResponseShops value)? shops,
  }) {
    return shops?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeDataResponseItems value)? items,
    TResult Function(HomeDataResponseShops value)? shops,
    required TResult orElse(),
  }) {
    if (shops != null) {
      return shops(this);
    }
    return orElse();
  }
}

abstract class HomeDataResponseShops implements HomeDataResponse {
  const factory HomeDataResponseShops(
      {required final String title,
      required final List<String> items}) = _$HomeDataResponseShops;

  factory HomeDataResponseShops.fromJson(Map<String, dynamic> json) =
      _$HomeDataResponseShops.fromJson;

  @override
  String get title;
  @override
  List<String> get items;
  @override
  @JsonKey(ignore: true)
  _$$HomeDataResponseShopsCopyWith<_$HomeDataResponseShops> get copyWith =>
      throw _privateConstructorUsedError;
}

HomeDataProduct _$HomeDataProductFromJson(Map<String, dynamic> json) {
  return _HomeDataProduct.fromJson(json);
}

/// @nodoc
mixin _$HomeDataProduct {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeDataProductCopyWith<HomeDataProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDataProductCopyWith<$Res> {
  factory $HomeDataProductCopyWith(
          HomeDataProduct value, $Res Function(HomeDataProduct) then) =
      _$HomeDataProductCopyWithImpl<$Res, HomeDataProduct>;
  @useResult
  $Res call(
      {int id,
      String name,
      String? description,
      String image,
      double price,
      double rating});
}

/// @nodoc
class _$HomeDataProductCopyWithImpl<$Res, $Val extends HomeDataProduct>
    implements $HomeDataProductCopyWith<$Res> {
  _$HomeDataProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? image = null,
    Object? price = null,
    Object? rating = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeDataProductCopyWith<$Res>
    implements $HomeDataProductCopyWith<$Res> {
  factory _$$_HomeDataProductCopyWith(
          _$_HomeDataProduct value, $Res Function(_$_HomeDataProduct) then) =
      __$$_HomeDataProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String? description,
      String image,
      double price,
      double rating});
}

/// @nodoc
class __$$_HomeDataProductCopyWithImpl<$Res>
    extends _$HomeDataProductCopyWithImpl<$Res, _$_HomeDataProduct>
    implements _$$_HomeDataProductCopyWith<$Res> {
  __$$_HomeDataProductCopyWithImpl(
      _$_HomeDataProduct _value, $Res Function(_$_HomeDataProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? image = null,
    Object? price = null,
    Object? rating = null,
  }) {
    return _then(_$_HomeDataProduct(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@jsonSerializableResponse
class _$_HomeDataProduct implements _HomeDataProduct {
  _$_HomeDataProduct(
      {required this.id,
      required this.name,
      required this.description,
      required this.image,
      required this.price,
      required this.rating});

  factory _$_HomeDataProduct.fromJson(Map<String, dynamic> json) =>
      _$$_HomeDataProductFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String image;
  @override
  final double price;
  @override
  final double rating;

  @override
  String toString() {
    return 'HomeDataProduct(id: $id, name: $name, description: $description, image: $image, price: $price, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeDataProduct &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, image, price, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeDataProductCopyWith<_$_HomeDataProduct> get copyWith =>
      __$$_HomeDataProductCopyWithImpl<_$_HomeDataProduct>(this, _$identity);
}

abstract class _HomeDataProduct implements HomeDataProduct {
  factory _HomeDataProduct(
      {required final int id,
      required final String name,
      required final String? description,
      required final String image,
      required final double price,
      required final double rating}) = _$_HomeDataProduct;

  factory _HomeDataProduct.fromJson(Map<String, dynamic> json) =
      _$_HomeDataProduct.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  String get image;
  @override
  double get price;
  @override
  double get rating;
  @override
  @JsonKey(ignore: true)
  _$$_HomeDataProductCopyWith<_$_HomeDataProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
