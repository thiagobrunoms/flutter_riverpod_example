import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sora_studies/data/models/product.dart';

part 'products_list.freezed.dart';
part 'products_list.g.dart';

@freezed
class ProductsList with _$ProductsList {

  factory ProductsList(
    List<Product> products
  ) = _ProductsList;

  factory ProductsList.fromJson(Map<String, dynamic> json) => _$ProductsListFromJson(json);
}