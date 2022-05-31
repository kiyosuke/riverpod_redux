import 'package:riverpod_redux/riverpod_redux.dart';
import 'package:todo/src/providers/repository_providers.dart';
import 'package:todo/src/redux/middleware/logger_middleware.dart';
import 'package:todo/src/redux/middleware/todo_middleware.dart';
import 'package:todo/src/redux/model/app_state.dart';
import 'package:todo/src/redux/reducer/app_reducer.dart';

final appStore = StoreProvider((ref) {
  return Store<AppState>(
    appReducer,
    initialState: const AppState(),
    middleware: [
      createLoggerMiddleware(),
      createTodoMiddleware(ref.watch(todoRepo)),
    ],
  );
});
