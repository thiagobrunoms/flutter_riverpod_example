// import 'package:dio/dio.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:sora_studies/data/datasources/requests.dart';
// import 'package:sora_studies/data/models/product.dart';
// import 'package:sora_studies/data/repositories/products_repository.dart';
// import 'package:sora_studies/domain/product_notifier.dart';

// final dioProvider = Provider((ref) => Dio());

// final productDataSourceProvider = Provider<ProductsDatasource>((ref) => 
//   ProductsDatasource(ref.read(dioProvider)) );

// final productRepositoryProvider = Provider<ProductsRepository>((ref) => 
//   ProductsRepository(datasource: ref.read(productDataSourceProvider)));

// final productStateProvider = AsyncNotifierProvider<ProductNotifier, AsyncValue<Product>>((ref) {
//   return ProductNotifier(ref.read(productRepositoryProvider));
// });