import 'package:riverpod/riverpod.dart';
import 'package:riverpod_redux/src/store.dart';

typedef StoreProvider<S> = StateNotifierProvider<Store<S>, S>;
