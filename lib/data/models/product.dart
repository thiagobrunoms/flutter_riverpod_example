import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.g.dart';
part 'product.freezed.dart';

@freezed
class Product with _$Product {
  factory Product({
    required int id, 
    required String title, 
    required String description, 
    required int price, 
    required double discountPercentage, 
    required double rating, 
    required int stock, 
    required String brand, 
    required String category, 
    required String thumbnail, 
    required List<String> images}) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

}
  