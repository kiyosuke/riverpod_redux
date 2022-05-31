import 'package:collection/collection.dart';
import 'package:riverpod_redux/riverpod_redux.dart';
import 'package:todo/src/redux/action/filter_action.dart';
import 'package:todo/src/redux/action/todo_action.dart';
import 'package:todo/src/redux/model/app_state.dart';

final Reducer<AppState> appReducer = combineReducers([
  todosReducer,
  filterReducer,
]);

final todosReducer = TypedReducer<AppState, TodoAction>(
  (state, action) => action.maybeWhen(
    load: () => state.copyWith(isLoading: true),
    loaded: (todos) => state.copyWith(isLoading: false, todos: todos),
    saved: (todo) => state.copyWith(
      todos: state.todos.where((e) => e.id != todo.id).toList() + [todo],
    ),
    deleted: (todoId) => state.copyWith(
      todos: state.todos.where((e) => e.id != todoId).toList(),
    ),
    orElse: () => state,
  ),
);

AppState filterReducer(AppState state, dynamic action) {
  if (action is UpdateFilterAction) {
    return state.copyWith(filter: action.newFilter);
  }
  return state;
}
