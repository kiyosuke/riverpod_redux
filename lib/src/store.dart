import 'package:riverpod/riverpod.dart';
import 'package:riverpod_redux/src/middleware.dart';
import 'package:riverpod_redux/src/next_dispatcher.dart';
import 'package:riverpod_redux/src/reducer.dart';

class Store<S> extends StateNotifier<S> {
  final Reducer<S> reducer;
  late final NextDispatcher _initialDispatcher;

  S getState() => state;

  Store(
    this.reducer, {
    required S initialState,
    List<Middleware<S>> middleware = const [],
  }) : super(initialState) {
    _initialDispatcher = _createDispatchers(middleware, _reduceAndNotify).first;
  }

  void _reduceAndNotify(dynamic action) {
    state = reducer(state, action);
  }

  List<NextDispatcher> _createDispatchers(
    List<Middleware<S>> middleware,
    NextDispatcher reduceAndNotify,
  ) {
    final dispatchers = <NextDispatcher>[reduceAndNotify];

    for (final nextMiddleware in middleware.reversed) {
      final next = dispatchers.last;

      dispatchers.add((dynamic action) => nextMiddleware(this, action, next));
    }
    return dispatchers.reversed.toList();
  }

  void dispatch(dynamic action) {
    _initialDispatcher(action);
  }
}
