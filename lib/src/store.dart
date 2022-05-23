import 'package:riverpod/riverpod.dart';
import 'package:riverpod_redux/src/middleware.dart';
import 'package:riverpod_redux/src/next_dispatcher.dart';
import 'package:riverpod_redux/src/reducer.dart';

/// Redux Store
///
/// Store instances should be generated and provided by the Provider.
///
/// [StateNotifier.state] is a protected property and cannot be accessed by Middleware.
/// Instead, [Store] provides a [getState] method.
///
/// Example:
/// ```
/// loggingMiddleware(Store<int> store, action, NextDispatcher next) {
///   print('state: ${store.getState()}, action: $action');
///   next(action);
/// }
///
/// final store = StoreProvider<int>((ref) {
///   return Store(
///     counterReducer,
///     middleware: [
///       loggingMiddleware,
///     ],
///   );
/// });
/// ```
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
