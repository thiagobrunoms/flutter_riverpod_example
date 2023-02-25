import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sora_studies/data/models/products_list.dart';
import 'package:sora_studies/domain/usecases/load_product_usecase.dart';

class ProductsListNotifier extends AutoDisposeAsyncNotifier<ProductsList> {
  @override
  FutureOr<ProductsList> build() async {
    final loadProducts = ref.read(loadProductsProvider);
    return await loadProducts();
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
  }
}

//The .autoDispose modifier can be used to reset the provider's state when all the listeners are removed. 
//For more info, read: The autoDispose modifier
final productsListStateProvider = AsyncNotifierProvider.autoDispose<ProductsListNotifier, ProductsList>(
  ProductsListNotifier.new,
);