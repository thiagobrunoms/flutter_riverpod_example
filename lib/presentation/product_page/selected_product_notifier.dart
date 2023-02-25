import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sora_studies/data/models/product.dart';

class SelectedProductNotifier extends StateNotifier<String> {

  SelectedProductNotifier() : super('-1');

  void setSelectedId(String id) {
    state = id;
  }

}


final selectedProductNotifier = StateNotifierProvider<SelectedProductNotifier, String>((ref) {
  return SelectedProductNotifier();
});