import 'package:riverpod_redux/src/next_dispatcher.dart';
import 'package:riverpod_redux/src/store.dart';

typedef Middleware<S> = void Function(
  Store<S> store,
  dynamic action,
  NextDispatcher next,
);

abstract class MiddlewareClass<S> {
  void call(Store<S> store, dynamic action, NextDispatcher next);
}

class TypedMiddleware<S, A> implements MiddlewareClass<S> {
  final void Function(Store<S> store, A action, NextDispatcher next) middleware;

  TypedMiddleware(this.middleware);

  @override
  void call(Store<S> store, dynamic action, NextDispatcher next) {
    if (action is A) {
      middleware(store, action, next);
    } else {
      next(action);
    }
  }
}
