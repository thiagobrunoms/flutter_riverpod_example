// import 'package:flutter_riverpod/flutter_riverpod.dart';
// class Counter {
//   final int count;

//   const Counter(this.count);
// }


// class CounterNotifier extends StateNotifier<Counter> {
//   CounterNotifier(super.state);

//   void increment() {
//     state = Counter(state.count + 1);
//   }
// }

// final provider = StateNotifierProvider<CounterNotifier, Counter>(
//   (ref) => CounterNotifier(const Counter(0)),
// );
import 'package:flutter_riverpod/flutter_riverpod.dart';
class User {
  final String name;
  final int age;

  const User({required this.name, required  this.age});

  User copyWith({String? name, int? age}) {
    return User(name: name ?? this.name, age: age ?? this.age);
  }
}

class UserNotifier extends StateNotifier<User> {
  UserNotifier(super.state);

  void updateName(String name) {
    state = state.copyWith(name: name);
  }

  void updateAge(int age) {
    state = state.copyWith(age: age);
  }
}

final provider = StateNotifierProvider<UserNotifier, User>(
  (ref) => UserNotifier(const User(name: '', age: 0)),
);