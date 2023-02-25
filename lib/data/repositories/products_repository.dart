import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sora_studies/data/datasources/requests.dart';
import 'package:sora_studies/data/models/product.dart';
import 'package:sora_studies/data/models/products_list.dart';

class ProductsRepository {
  ProductsDatasource datasource;

  ProductsRepository({required this.datasource});

  Future<Product> getProductById(String id) async {
    return await datasource.loadProduct(id);
  }

  Future<ProductsList> loadProducts() async {
    return await datasource.loadProducts();
  }
}

final productsRepositoryProvider = Provider<ProductsRepository>((ref) {
  return ProductsRepository(datasource: ref.read(productDatasourceProvider)) ;
});