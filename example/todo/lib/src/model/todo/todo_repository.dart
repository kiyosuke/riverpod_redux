import 'package:todo/src/model/todo/todo.dart';

abstract class TodoRepository {
  Future<List<Todo>> getAll();

  Future<void> save(Todo todo);

  Future<void> delete(TodoId todoId);
}
