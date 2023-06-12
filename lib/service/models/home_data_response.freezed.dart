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
      return _HomeDataResponseItems.fromJson(json);
    case 'Shops':
      return _HomeDataResponseShops.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'HomeDataResponse',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$HomeDataResponse {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<HomeDataItem> items) items,
    required TResult Function() shops,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<HomeDataItem> items)? items,
    TResult? Function()? shops,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<HomeDataItem> items)? items,
    TResult Function()? shops,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeDataResponseItems value) items,
    required TResult Function(_HomeDataResponseShops value) shops,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeDataResponseItems value)? items,
    TResult? Function(_HomeDataResponseShops value)? shops,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeDataResponseItems value)? items,
    TResult Function(_HomeDataResponseShops value)? shops,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDataResponseCopyWith<$Res> {
  factory $HomeDataResponseCopyWith(
          HomeDataResponse value, $Res Function(HomeDataResponse) then) =
      _$HomeDataResponseCopyWithImpl<$Res, HomeDataResponse>;
}

/// @nodoc
class _$HomeDataResponseCopyWithImpl<$Res, $Val extends HomeDataResponse>
    implements $HomeDataResponseCopyWith<$Res> {
  _$HomeDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_HomeDataResponseItemsCopyWith<$Res> {
  factory _$$_HomeDataResponseItemsCopyWith(_$_HomeDataResponseItems value,
          $Res Function(_$_HomeDataResponseItems) then) =
      __$$_HomeDataResponseItemsCopyWithImpl<$Res>;
  @useResult
  $Res call({List<HomeDataItem> items});
}

/// @nodoc
class __$$_HomeDataResponseItemsCopyWithImpl<$Res>
    extends _$HomeDataResponseCopyWithImpl<$Res, _$_HomeDataResponseItems>
    implements _$$_HomeDataResponseItemsCopyWith<$Res> {
  __$$_HomeDataResponseItemsCopyWithImpl(_$_HomeDataResponseItems _value,
      $Res Function(_$_HomeDataResponseItems) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$_HomeDataResponseItems(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<HomeDataItem>,
    ));
  }
}

/// @nodoc

@jsonSerializableResponse
class _$_HomeDataResponseItems implements _HomeDataResponseItems {
  const _$_HomeDataResponseItems(
      {required final List<HomeDataItem> items, final String? $type})
      : _items = items,
        $type = $type ?? 'products';

  factory _$_HomeDataResponseItems.fromJson(Map<String, dynamic> json) =>
      _$$_HomeDataResponseItemsFromJson(json);

  final List<HomeDataItem> _items;
  @override
  List<HomeDataItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'HomeDataResponse.items(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeDataResponseItems &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeDataResponseItemsCopyWith<_$_HomeDataResponseItems> get copyWith =>
      __$$_HomeDataResponseItemsCopyWithImpl<_$_HomeDataResponseItems>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<HomeDataItem> items) items,
    required TResult Function() shops,
  }) {
    return items(this.items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<HomeDataItem> items)? items,
    TResult? Function()? shops,
  }) {
    return items?.call(this.items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<HomeDataItem> items)? items,
    TResult Function()? shops,
    required TResult orElse(),
  }) {
    if (items != null) {
      return items(this.items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeDataResponseItems value) items,
    required TResult Function(_HomeDataResponseShops value) shops,
  }) {
    return items(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeDataResponseItems value)? items,
    TResult? Function(_HomeDataResponseShops value)? shops,
  }) {
    return items?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeDataResponseItems value)? items,
    TResult Function(_HomeDataResponseShops value)? shops,
    required TResult orElse(),
  }) {
    if (items != null) {
      return items(this);
    }
    return orElse();
  }
}

abstract class _HomeDataResponseItems implements HomeDataResponse {
  const factory _HomeDataResponseItems(
      {required final List<HomeDataItem> items}) = _$_HomeDataResponseItems;

  factory _HomeDataResponseItems.fromJson(Map<String, dynamic> json) =
      _$_HomeDataResponseItems.fromJson;

  List<HomeDataItem> get items;
  @JsonKey(ignore: true)
  _$$_HomeDataResponseItemsCopyWith<_$_HomeDataResponseItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HomeDataResponseShopsCopyWith<$Res> {
  factory _$$_HomeDataResponseShopsCopyWith(_$_HomeDataResponseShops value,
          $Res Function(_$_HomeDataResponseShops) then) =
      __$$_HomeDataResponseShopsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HomeDataResponseShopsCopyWithImpl<$Res>
    extends _$HomeDataResponseCopyWithImpl<$Res, _$_HomeDataResponseShops>
    implements _$$_HomeDataResponseShopsCopyWith<$Res> {
  __$$_HomeDataResponseShopsCopyWithImpl(_$_HomeDataResponseShops _value,
      $Res Function(_$_HomeDataResponseShops) _then)
      : super(_value, _then);
}

/// @nodoc

@jsonSerializableResponse
class _$_HomeDataResponseShops implements _HomeDataResponseShops {
  const _$_HomeDataResponseShops({final String? $type})
      : $type = $type ?? 'Shops';

  factory _$_HomeDataResponseShops.fromJson(Map<String, dynamic> json) =>
      _$$_HomeDataResponseShopsFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'HomeDataResponse.shops()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HomeDataResponseShops);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<HomeDataItem> items) items,
    required TResult Function() shops,
  }) {
    return shops();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<HomeDataItem> items)? items,
    TResult? Function()? shops,
  }) {
    return shops?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<HomeDataItem> items)? items,
    TResult Function()? shops,
    required TResult orElse(),
  }) {
    if (shops != null) {
      return shops();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeDataResponseItems value) items,
    required TResult Function(_HomeDataResponseShops value) shops,
  }) {
    return shops(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeDataResponseItems value)? items,
    TResult? Function(_HomeDataResponseShops value)? shops,
  }) {
    return shops?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeDataResponseItems value)? items,
    TResult Function(_HomeDataResponseShops value)? shops,
    required TResult orElse(),
  }) {
    if (shops != null) {
      return shops(this);
    }
    return orElse();
  }
}

abstract class _HomeDataResponseShops implements HomeDataResponse {
  const factory _HomeDataResponseShops() = _$_HomeDataResponseShops;

  factory _HomeDataResponseShops.fromJson(Map<String, dynamic> json) =
      _$_HomeDataResponseShops.fromJson;
}

HomeDataItem _$HomeDataItemFromJson(Map<String, dynamic> json) {
  return _HomeDataItem.fromJson(json);
}

/// @nodoc
mixin _$HomeDataItem {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeDataItemCopyWith<HomeDataItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDataItemCopyWith<$Res> {
  factory $HomeDataItemCopyWith(
          HomeDataItem value, $Res Function(HomeDataItem) then) =
      _$HomeDataItemCopyWithImpl<$Res, HomeDataItem>;
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
class _$HomeDataItemCopyWithImpl<$Res, $Val extends HomeDataItem>
    implements $HomeDataItemCopyWith<$Res> {
  _$HomeDataItemCopyWithImpl(this._value, this._then);

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
abstract class _$$_HomeDataItemCopyWith<$Res>
    implements $HomeDataItemCopyWith<$Res> {
  factory _$$_HomeDataItemCopyWith(
          _$_HomeDataItem value, $Res Function(_$_HomeDataItem) then) =
      __$$_HomeDataItemCopyWithImpl<$Res>;
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
class __$$_HomeDataItemCopyWithImpl<$Res>
    extends _$HomeDataItemCopyWithImpl<$Res, _$_HomeDataItem>
    implements _$$_HomeDataItemCopyWith<$Res> {
  __$$_HomeDataItemCopyWithImpl(
      _$_HomeDataItem _value, $Res Function(_$_HomeDataItem) _then)
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
    return _then(_$_HomeDataItem(
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
class _$_HomeDataItem implements _HomeDataItem {
  _$_HomeDataItem(
      {required this.id,
      required this.name,
      required this.description,
      required this.image,
      required this.price,
      required this.rating});

  factory _$_HomeDataItem.fromJson(Map<String, dynamic> json) =>
      _$$_HomeDataItemFromJson(json);

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
    return 'HomeDataItem(id: $id, name: $name, description: $description, image: $image, price: $price, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeDataItem &&
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
  _$$_HomeDataItemCopyWith<_$_HomeDataItem> get copyWith =>
      __$$_HomeDataItemCopyWithImpl<_$_HomeDataItem>(this, _$identity);
}

abstract class _HomeDataItem implements HomeDataItem {
  factory _HomeDataItem(
      {required final int id,
      required final String name,
      required final String? description,
      required final String image,
      required final double price,
      required final double rating}) = _$_HomeDataItem;

  factory _HomeDataItem.fromJson(Map<String, dynamic> json) =
      _$_HomeDataItem.fromJson;

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
  _$$_HomeDataItemCopyWith<_$_HomeDataItem> get copyWith =>
      throw _privateConstructorUsedError;
}
