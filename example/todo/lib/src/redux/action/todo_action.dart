import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/src/model/todo/todo.dart';

part 'todo_action.freezed.dart';

@freezed
class TodoAction with _$TodoAction {
  const factory TodoAction.load() = LoadTodoAction;
  const factory TodoAction.loaded(List<Todo> todos) = TodoLoadedAction;
  const factory TodoAction.delete(TodoId todoId) = DeleteTodoAction;
  const factory TodoAction.deleted(TodoId todoId) = TodoDeletedAction;
  const factory TodoAction.save(
    Todo todo, {
    VoidCallback? onSaved,
  }) = SaveTodoAction;
  const factory TodoAction.saved(Todo todo) = TodoSavedAction;
}
