import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora_studies/data/models/product.dart';
import 'package:sora_studies/presentation/product_page/product_notifier.dart';

class ProductPage extends HookConsumerWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productState = ref.watch(productNotifierProvider);

    return Scaffold(
      body: productState.when(
        data: _buildData, 
        error: _onError, 
        loading: () => const Center(child: CircularProgressIndicator())
      ),
    );
  }

  Widget _buildData(Product product) {
    return Center(
      child: Text(product.description),
    );
  }

  Widget _onError(_, StackTrace trace) {
    return Text('Error $trace');
  }
}