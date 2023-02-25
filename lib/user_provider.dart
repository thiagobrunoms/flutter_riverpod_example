import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sora_studies/hello_provider.dart';


class UserStateNotifier extends StateNotifier<User> {
  UserStateNotifier(super.state);

  void change() {
  }
  
}

final userStateProvider = StateNotifierProvider<UserStateNotifier, User>((ref) {
  return UserStateNotifier(const User(age: 1, name: ''));
});