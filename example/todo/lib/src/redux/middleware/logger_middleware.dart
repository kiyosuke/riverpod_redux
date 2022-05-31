import 'package:riverpod_redux/riverpod_redux.dart';

Middleware<S> createLoggerMiddleware<S>() => (store, action, next) {
      print('state: ${store.getState()}, action: $action');
      next(action);
    };
