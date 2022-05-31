import 'package:riverpod_redux/riverpod_redux.dart';
import 'package:todo/src/model/todo/todo_repository.dart';
import 'package:todo/src/redux/action/todo_action.dart';
import 'package:todo/src/redux/model/app_state.dart';

Middleware<AppState> createTodoMiddleware(TodoRepository repository) {
  return TypedMiddleware<AppState, TodoAction>((store, action, next) {
    action.whenOrNull(
      load: () async {
        try {
          final todos = await repository.getAll();
          store.dispatch(TodoAction.loaded(todos));
        } catch (e) {
          print('Failed to load todos. e: $e');
        }
      },
      save: (todo, onSaved) async {
        try {
          await repository.save(todo);
          store.dispatch(TodoAction.saved(todo));
          onSaved?.call();
        } catch (e) {
          print('Failed to save todo. e: $e');
        }
      },
      delete: (todoId) async {
        try {
          await repository.delete(todoId);
          store.dispatch(TodoAction.deleted(todoId));
        } catch (e) {
          print('Failed to delete todo. e: $e');
        }
      },
    );
    next(action);
  });
}
