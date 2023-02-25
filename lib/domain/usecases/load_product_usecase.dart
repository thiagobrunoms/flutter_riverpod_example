import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sora_studies/data/models/products_list.dart';
import 'package:sora_studies/data/repositories/products_repository.dart';

class LoadAllProducts {
  LoadAllProducts(this._repository);

  final ProductsRepository _repository;

  Future<ProductsList> call() async {
    return await _repository.loadProducts();
  }
}

final loadProductsProvider = Provider<LoadAllProducts>((ref) {
  return LoadAllProducts(ref.read(productsRepositoryProvider));
});