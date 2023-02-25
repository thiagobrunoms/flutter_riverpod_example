// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductsList _$ProductsListFromJson(Map<String, dynamic> json) {
  return _ProductsList.fromJson(json);
}

/// @nodoc
mixin _$ProductsList {
  List<Product> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsListCopyWith<ProductsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsListCopyWith<$Res> {
  factory $ProductsListCopyWith(
          ProductsList value, $Res Function(ProductsList) then) =
      _$ProductsListCopyWithImpl<$Res, ProductsList>;
  @useResult
  $Res call({List<Product> products});
}

/// @nodoc
class _$ProductsListCopyWithImpl<$Res, $Val extends ProductsList>
    implements $ProductsListCopyWith<$Res> {
  _$ProductsListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductsListCopyWith<$Res>
    implements $ProductsListCopyWith<$Res> {
  factory _$$_ProductsListCopyWith(
          _$_ProductsList value, $Res Function(_$_ProductsList) then) =
      __$$_ProductsListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product> products});
}

/// @nodoc
class __$$_ProductsListCopyWithImpl<$Res>
    extends _$ProductsListCopyWithImpl<$Res, _$_ProductsList>
    implements _$$_ProductsListCopyWith<$Res> {
  __$$_ProductsListCopyWithImpl(
      _$_ProductsList _value, $Res Function(_$_ProductsList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$_ProductsList(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductsList implements _ProductsList {
  _$_ProductsList(final List<Product> products) : _products = products;

  factory _$_ProductsList.fromJson(Map<String, dynamic> json) =>
      _$$_ProductsListFromJson(json);

  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ProductsList(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductsList &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductsListCopyWith<_$_ProductsList> get copyWith =>
      __$$_ProductsListCopyWithImpl<_$_ProductsList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductsListToJson(
      this,
    );
  }
}

abstract class _ProductsList implements ProductsList {
  factory _ProductsList(final List<Product> products) = _$_ProductsList;

  factory _ProductsList.fromJson(Map<String, dynamic> json) =
      _$_ProductsList.fromJson;

  @override
  List<Product> get products;
  @override
  @JsonKey(ignore: true)
  _$$_ProductsListCopyWith<_$_ProductsList> get copyWith =>
      throw _privateConstructorUsedError;
}
