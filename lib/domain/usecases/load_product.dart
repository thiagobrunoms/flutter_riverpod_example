import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sora_studies/data/models/product.dart';
import 'package:sora_studies/data/repositories/products_repository.dart';

class LoadProduct {
  LoadProduct(this._repository);

  final ProductsRepository _repository;

  Future<Product> call(String id) async {
    return await _repository.getProductById(id);
  }
}

final loadProductProvider = Provider((ref) {
  return LoadProduct(ref.read(productsRepositoryProvider));
});