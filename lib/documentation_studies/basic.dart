import 'package:flutter_riverpod/flutter_riverpod.dart';

//Providers types

final helloWorkdProvider = Provider<String>((ref) {
  return 'Hello!';
});

//How to get? Providers live outside the widget tree. Thus, we need an additional ref object. There are 3 ways:
//1. class that extends ConsumerWidget, with build methods (context, ref)
//2. use a Consumer widget (//not used at Sora), which has its own "builder" with params (_, ref, __). This may seem like a small detail, but if you have a big widget class with a complex layout, you can use Consumer to rebuild only the widgets that depend on the provider. Though as I said in a previous article:
//3. ConsumerStatefulWidget //not used at Sora

//Main providiers
//1. Provider - for those that don't change their states
//2. StateProvider (legacy) - for those that change their states. is ideal for storing simple state variables, 
//   such as enums, strings, booleans, and numbers. Notifier can also be used for the same purpose and is more 
//   flexible. For more complex or asynchronous state, use AsyncNotifierProvider, FutureProvider, or StreamProvider as described below.
//3. StateNotifierProvider (legacy): to listen and expose StateNotifier. Are ideal for managing state that my change in reaction to an event or user interaction
//   As of Riverpod 2.0, StateNotifier is considered legacy and can be replaced by the new AsyncNotifier 
//4. 