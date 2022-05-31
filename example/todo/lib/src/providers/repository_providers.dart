import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/src/infra/repository/todo_hive_repository.dart';
import 'package:todo/src/model/todo/todo_repository.dart';

final todoRepo = Provider<TodoRepository>((ref) {
  return TodoHiveRepository();
});
