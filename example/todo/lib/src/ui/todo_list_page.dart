import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/src/model/todo/todo.dart';
import 'package:todo/src/redux/action/filter_action.dart';
import 'package:todo/src/redux/action/todo_action.dart';
import 'package:todo/src/redux/app_store.dart';
import 'package:todo/src/redux/model/visibility_filter.dart';
import 'package:todo/src/ui/visibility_filter_button.dart';

final _filteredTodos = Provider.autoDispose((ref) {
  final state = ref.watch(appStore);
  final List<Todo> filteredTodos;
  switch (state.filter) {
    case VisibilityFilter.all:
      filteredTodos = state.todos;
      break;
    case VisibilityFilter.active:
      filteredTodos = state.todos.where((e) => !e.isCompleted).toList();
      break;
    case VisibilityFilter.completed:
      filteredTodos = state.todos.where((e) => e.isCompleted).toList();
      break;
  }
  return filteredTodos.sortedBy((e) => e.createdAt);
});

final _activeFilter = Provider.autoDispose((ref) => ref.watch(appStore).filter);

class TodoListPage extends ConsumerStatefulWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TodoListState();
}

class _TodoListState extends ConsumerState<TodoListPage> {
  @override
  void initState() {
    super.initState();
    ref.read(appStore.notifier).dispatch(const TodoAction.load());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
        actions: [
          VisibilityFilterButton(
            value: ref.watch(_activeFilter),
            onItemSelected: (filter) {
              ref.read(appStore.notifier).dispatch(UpdateFilterAction(filter));
            },
          ),
        ],
      ),
      body: ListView.separated(
        physics: const AlwaysScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final todo = ref.watch(_filteredTodos)[index];
          return ListTile(
            key: ValueKey(todo.id),
            leading: Checkbox(
                value: todo.isCompleted,
                onChanged: (isChecked) {
                  final action = TodoAction.save(
                    todo.copyWith(
                      isCompleted: isChecked ?? false,
                      updatedAt: DateTime.now(),
                    ),
                  );
                  ref.read(appStore.notifier).dispatch(action);
                }),
            title: Text(todo.task),
            subtitle: (todo.note != null && todo.note!.isNotEmpty)
                ? Text(todo.note ?? '')
                : null,
            onTap: () {
              Navigator.pushNamed(context, 'todo/edit', arguments: todo);
            },
          );
        },
        separatorBuilder: (_, __) => const Divider(height: 0.0),
        itemCount: ref.watch(_filteredTodos).length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, 'todo/add'),
        child: const Icon(Icons.add),
      ),
    );
  }
}
