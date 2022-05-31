import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

const _uuid = Uuid();

class TodoId {
  final String id;

  const TodoId(this.id);

  factory TodoId.create() => TodoId(_uuid.v4());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TodoId && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() => id;
}

@freezed
class Todo with _$Todo {
  const Todo._();
  const factory Todo({
    @_TodoIdConverter() required TodoId id,
    required String task,
    String? note,
    @Default(false) bool isCompleted,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Todo;

  factory Todo.create({
    required String task,
    String? note,
  }) {
    final createdAt = DateTime.now();
    return Todo(
      id: TodoId.create(),
      task: task,
      note: note,
      isCompleted: false,
      createdAt: createdAt,
      updatedAt: createdAt,
    );
  }

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}

class _TodoIdConverter implements JsonConverter<TodoId, String> {
  const _TodoIdConverter();
  @override
  TodoId fromJson(String json) => TodoId(json);

  @override
  String toJson(TodoId object) => object.id;
}
