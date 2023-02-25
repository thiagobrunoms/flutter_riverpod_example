// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductsList _$$_ProductsListFromJson(Map<String, dynamic> json) =>
    _$_ProductsList(
      (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductsListToJson(_$_ProductsList instance) =>
    <String, dynamic>{
      'products': instance.products,
    };
