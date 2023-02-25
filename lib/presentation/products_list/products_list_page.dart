import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora_studies/data/models/product.dart';
import 'package:sora_studies/data/models/products_list.dart';
import 'package:sora_studies/presentation/product_page/selected_product_notifier.dart';
import 'package:sora_studies/presentation/products_list/products_list_notifier.dart';

class ProductsListPage extends HookConsumerWidget {
  const ProductsListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var productListWatch = ref.watch(productsListStateProvider);
    var productListNotifier = ref.read(productsListStateProvider.notifier);

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: productListNotifier.refresh,
        child: productListWatch.when(
        data: (productsList) {
          return _buildProductList(productsList, ref);
        }, 
        error: (obj, stack) => Center(child: Text('Erro $obj')), 
        loading: () => const Center(child: CircularProgressIndicator())),
      )
    );
  }

  Widget _buildProductList(ProductsList productList, WidgetRef ref) {
    List<Product> products = productList.products;
    
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            String id = productList.products[index].id.toString();
            ref.read(selectedProductNotifier.notifier).setSelectedId(id);
            Navigator.pushNamed(context, '/to_product');
          },
          child: Text(products[index].description));
      });
  }
  
}