import 'package:flutter_riverpod/flutter_riverpod.dart';

// class SelectedProductNotifier extends StateNotifier<String?> {
//   SelectedProductNotifier() : super(null);

//   void setSelectedId(String id) {
//     state = id;
//   }
// }

// final selectedProductNotifier = StateNotifierProvider<SelectedProductNotifier, String?>((ref) {
//   return SelectedProductNotifier();
// });
final selectedProductNotifier = StateProvider<String?>((ref) => null);