import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:todo/src/model/todo/todo.dart';
import 'package:todo/src/model/todo/todo_repository.dart';

class TodoHiveRepository implements TodoRepository {
  Future<Box<String>> get _box => Hive.openBox('todo');

  @override
  Future<List<Todo>> getAll() async {
    final box = await _box;
    return box.values.map(jsonDecode).map((e) => Todo.fromJson(e)).toList();
  }

  @override
  Future<void> save(Todo todo) async {
    final box = await _box;
    await box.put(todo.id.toString(), jsonEncode(todo.toJson()));
  }

  @override
  Future<void> delete(TodoId todoId) async {
    final box = await _box;
    await box.delete(todoId.toString());
  }
}
