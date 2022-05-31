import 'package:flutter_test/flutter_test.dart';
import 'package:todo/src/model/todo/todo.dart';
import 'package:todo/src/redux/action/filter_action.dart';
import 'package:todo/src/redux/action/todo_action.dart';
import 'package:todo/src/redux/model/app_state.dart';
import 'package:todo/src/redux/model/visibility_filter.dart';
import 'package:todo/src/redux/reducer/app_reducer.dart';

void main() {
  test('handle TodoLoadedAction', () {
    const initialState = AppState();
    final action = TodoLoadedAction([
      Todo(
        id: const TodoId('1'),
        task: 'Run test',
        createdAt: DateTime(2022, 1, 1, 10, 0),
        updatedAt: DateTime(2022, 1, 1, 10, 0),
      ),
    ]);
    expect(
      appReducer(initialState, action),
      AppState(todos: [
        Todo(
          id: const TodoId('1'),
          task: 'Run test',
          createdAt: DateTime(2022, 1, 1, 10, 0),
          updatedAt: DateTime(2022, 1, 1, 10, 0),
        ),
      ]),
    );
  });

  test('handle TodoDeletedAction', () {
    final initialState = AppState(todos: [
      Todo(
        id: const TodoId('1'),
        task: 'Run test',
        createdAt: DateTime(2022, 1, 1, 10, 0),
        updatedAt: DateTime(2022, 1, 1, 10, 0),
      ),
      Todo(
        id: const TodoId('2'),
        task: 'Fix code',
        createdAt: DateTime(2022, 1, 1, 10, 1),
        updatedAt: DateTime(2022, 1, 1, 10, 1),
      ),
    ]);
    expect(
      appReducer(initialState, const TodoDeletedAction(TodoId('2'))).todos,
      [
        Todo(
          id: const TodoId('1'),
          task: 'Run test',
          createdAt: DateTime(2022, 1, 1, 10, 0),
          updatedAt: DateTime(2022, 1, 1, 10, 0),
        )
      ],
    );
  });

  test('handle new TodoSavedAction', () {
    const initialState = AppState();
    expect(
      appReducer(
        initialState,
        TodoSavedAction(Todo(
          id: const TodoId('1'),
          task: 'Run test',
          createdAt: DateTime(2022, 1, 1, 10, 0),
          updatedAt: DateTime(2022, 1, 1, 10, 0),
        )),
      ).todos,
      containsAll([
        Todo(
          id: const TodoId('1'),
          task: 'Run test',
          createdAt: DateTime(2022, 1, 1, 10, 0),
          updatedAt: DateTime(2022, 1, 1, 10, 0),
        ),
      ]),
    );
  });

  test('handle update TodoSavedAction', () {
    final initialState = AppState(todos: [
      Todo(
        id: const TodoId('1'),
        task: 'Run test',
        createdAt: DateTime(2022, 1, 1, 10, 0),
        updatedAt: DateTime(2022, 1, 1, 10, 0),
      ),
      Todo(
        id: const TodoId('2'),
        task: 'Fix code',
        createdAt: DateTime(2022, 1, 1, 10, 0),
        updatedAt: DateTime(2022, 1, 1, 10, 0),
      ),
    ]);
    final newState = appReducer(
      initialState,
      TodoSavedAction(
        Todo(
          id: const TodoId('2'),
          task: 'Fix code',
          createdAt: DateTime(2022, 1, 1, 10, 0),
          updatedAt: DateTime(2022, 1, 1, 10, 1),
          isCompleted: true,
        ),
      ),
    );
    final todo = newState.todos.firstWhere(
      (todo) => todo.id == const TodoId('2'),
    );
    expect(todo.isCompleted, isTrue);
  });

  test('handle UpdateFilterAction', () {
    var state = const AppState(filter: VisibilityFilter.all);

    state = appReducer(
      state,
      const UpdateFilterAction(VisibilityFilter.active),
    );
    expect(state.filter, VisibilityFilter.active);

    state = appReducer(
      state,
      const UpdateFilterAction(VisibilityFilter.completed),
    );
    expect(state.filter, VisibilityFilter.completed);

    state = appReducer(state, const UpdateFilterAction(VisibilityFilter.all));
    expect(state.filter, VisibilityFilter.all);
  });
}
