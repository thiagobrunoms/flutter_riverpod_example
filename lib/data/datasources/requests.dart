
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sora_studies/data/models/product.dart';
import 'package:sora_studies/data/models/products_list.dart';

part 'requests.g.dart';

@RestApi(baseUrl: 'https://dummyjson.com/')
abstract class ProductsDatasource {
  factory ProductsDatasource(Dio dio) = _ProductsDatasource;

  @GET('products/{id}')
  Future<Product> loadProduct(@Path() String id);

  @GET('products/')
  Future<ProductsList> loadProducts();
}

final productDatasourceProvider = Provider<ProductsDatasource>((ref) {
  return ProductsDatasource(ref.read(dioProvider));
});

final dioProvider = Provider((ref) => Dio());