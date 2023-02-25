import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sora_studies/data/models/product.dart';
import 'package:sora_studies/domain/usecases/load_product.dart';
import 'package:sora_studies/presentation/product_page/selected_product_notifier.dart';

part 'product_notifier.g.dart';

@riverpod
class ProductNotifier extends _$ProductNotifier {
  @override
  Future<Product> build() async {
    final selectedId = ref.watch(selectedProductNotifier);
    final requestProduct = ref.read(loadProductProvider);
    return requestProduct(selectedId);
  }
}