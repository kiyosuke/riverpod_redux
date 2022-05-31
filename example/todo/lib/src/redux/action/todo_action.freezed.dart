// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<Todo> todos) loaded,
    required TResult Function(TodoId todoId) delete,
    required TResult Function(TodoId todoId) deleted,
    required TResult Function(Todo todo, VoidCallback? onSaved) save,
    required TResult Function(Todo todo) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(TodoId todoId)? delete,
    TResult Function(TodoId todoId)? deleted,
    TResult Function(Todo todo, VoidCallback? onSaved)? save,
    TResult Function(Todo todo)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(TodoId todoId)? delete,
    TResult Function(TodoId todoId)? deleted,
    TResult Function(Todo todo, VoidCallback? onSaved)? save,
    TResult Function(Todo todo)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTodoAction value) load,
    required TResult Function(TodoLoadedAction value) loaded,
    required TResult Function(DeleteTodoAction value) delete,
    required TResult Function(TodoDeletedAction value) deleted,
    required TResult Function(SaveTodoAction value) save,
    required TResult Function(TodoSavedAction value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadTodoAction value)? load,
    TResult Function(TodoLoadedAction value)? loaded,
    TResult Function(DeleteTodoAction value)? delete,
    TResult Function(TodoDeletedAction value)? deleted,
    TResult Function(SaveTodoAction value)? save,
    TResult Function(TodoSavedAction value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTodoAction value)? load,
    TResult Function(TodoLoadedAction value)? loaded,
    TResult Function(DeleteTodoAction value)? delete,
    TResult Function(TodoDeletedAction value)? deleted,
    TResult Function(SaveTodoAction value)? save,
    TResult Function(TodoSavedAction value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoActionCopyWith<$Res> {
  factory $TodoActionCopyWith(
          TodoAction value, $Res Function(TodoAction) then) =
      _$TodoActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoActionCopyWithImpl<$Res> implements $TodoActionCopyWith<$Res> {
  _$TodoActionCopyWithImpl(this._value, this._then);

  final TodoAction _value;
  // ignore: unused_field
  final $Res Function(TodoAction) _then;
}

/// @nodoc
abstract class _$$LoadTodoActionCopyWith<$Res> {
  factory _$$LoadTodoActionCopyWith(
          _$LoadTodoAction value, $Res Function(_$LoadTodoAction) then) =
      __$$LoadTodoActionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadTodoActionCopyWithImpl<$Res>
    extends _$TodoActionCopyWithImpl<$Res>
    implements _$$LoadTodoActionCopyWith<$Res> {
  __$$LoadTodoActionCopyWithImpl(
      _$LoadTodoAction _value, $Res Function(_$LoadTodoAction) _then)
      : super(_value, (v) => _then(v as _$LoadTodoAction));

  @override
  _$LoadTodoAction get _value => super._value as _$LoadTodoAction;
}

/// @nodoc

class _$LoadTodoAction with DiagnosticableTreeMixin implements LoadTodoAction {
  const _$LoadTodoAction();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoAction.load()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TodoAction.load'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadTodoAction);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<Todo> todos) loaded,
    required TResult Function(TodoId todoId) delete,
    required TResult Function(TodoId todoId) deleted,
    required TResult Function(Todo todo, VoidCallback? onSaved) save,
    required TResult Function(Todo todo) saved,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(TodoId todoId)? delete,
    TResult Function(TodoId todoId)? deleted,
    TResult Function(Todo todo, VoidCallback? onSaved)? save,
    TResult Function(Todo todo)? saved,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(TodoId todoId)? delete,
    TResult Function(TodoId todoId)? deleted,
    TResult Function(Todo todo, VoidCallback? onSaved)? save,
    TResult Function(Todo todo)? saved,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTodoAction value) load,
    required TResult Function(TodoLoadedAction value) loaded,
    required TResult Function(DeleteTodoAction value) delete,
    required TResult Function(TodoDeletedAction value) deleted,
    required TResult Function(SaveTodoAction value) save,
    required TResult Function(TodoSavedAction value) saved,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadTodoAction value)? load,
    TResult Function(TodoLoadedAction value)? loaded,
    TResult Function(DeleteTodoAction value)? delete,
    TResult Function(TodoDeletedAction value)? deleted,
    TResult Function(SaveTodoAction value)? save,
    TResult Function(TodoSavedAction value)? saved,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTodoAction value)? load,
    TResult Function(TodoLoadedAction value)? loaded,
    TResult Function(DeleteTodoAction value)? delete,
    TResult Function(TodoDeletedAction value)? deleted,
    TResult Function(SaveTodoAction value)? save,
    TResult Function(TodoSavedAction value)? saved,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadTodoAction implements TodoAction {
  const factory LoadTodoAction() = _$LoadTodoAction;
}

/// @nodoc
abstract class _$$TodoLoadedActionCopyWith<$Res> {
  factory _$$TodoLoadedActionCopyWith(
          _$TodoLoadedAction value, $Res Function(_$TodoLoadedAction) then) =
      __$$TodoLoadedActionCopyWithImpl<$Res>;
  $Res call({List<Todo> todos});
}

/// @nodoc
class __$$TodoLoadedActionCopyWithImpl<$Res>
    extends _$TodoActionCopyWithImpl<$Res>
    implements _$$TodoLoadedActionCopyWith<$Res> {
  __$$TodoLoadedActionCopyWithImpl(
      _$TodoLoadedAction _value, $Res Function(_$TodoLoadedAction) _then)
      : super(_value, (v) => _then(v as _$TodoLoadedAction));

  @override
  _$TodoLoadedAction get _value => super._value as _$TodoLoadedAction;

  @override
  $Res call({
    Object? todos = freezed,
  }) {
    return _then(_$TodoLoadedAction(
      todos == freezed
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$TodoLoadedAction
    with DiagnosticableTreeMixin
    implements TodoLoadedAction {
  const _$TodoLoadedAction(final List<Todo> todos) : _todos = todos;

  final List<Todo> _todos;
  @override
  List<Todo> get todos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoAction.loaded(todos: $todos)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoAction.loaded'))
      ..add(DiagnosticsProperty('todos', todos));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoLoadedAction &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  _$$TodoLoadedActionCopyWith<_$TodoLoadedAction> get copyWith =>
      __$$TodoLoadedActionCopyWithImpl<_$TodoLoadedAction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<Todo> todos) loaded,
    required TResult Function(TodoId todoId) delete,
    required TResult Function(TodoId todoId) deleted,
    required TResult Function(Todo todo, VoidCallback? onSaved) save,
    required TResult Function(Todo todo) saved,
  }) {
    return loaded(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(TodoId todoId)? delete,
    TResult Function(TodoId todoId)? deleted,
    TResult Function(Todo todo, VoidCallback? onSaved)? save,
    TResult Function(Todo todo)? saved,
  }) {
    return loaded?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(TodoId todoId)? delete,
    TResult Function(TodoId todoId)? deleted,
    TResult Function(Todo todo, VoidCallback? onSaved)? save,
    TResult Function(Todo todo)? saved,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTodoAction value) load,
    required TResult Function(TodoLoadedAction value) loaded,
    required TResult Function(DeleteTodoAction value) delete,
    required TResult Function(TodoDeletedAction value) deleted,
    required TResult Function(SaveTodoAction value) save,
    required TResult Function(TodoSavedAction value) saved,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadTodoAction value)? load,
    TResult Function(TodoLoadedAction value)? loaded,
    TResult Function(DeleteTodoAction value)? delete,
    TResult Function(TodoDeletedAction value)? deleted,
    TResult Function(SaveTodoAction value)? save,
    TResult Function(TodoSavedAction value)? saved,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTodoAction value)? load,
    TResult Function(TodoLoadedAction value)? loaded,
    TResult Function(DeleteTodoAction value)? delete,
    TResult Function(TodoDeletedAction value)? deleted,
    TResult Function(SaveTodoAction value)? save,
    TResult Function(TodoSavedAction value)? saved,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TodoLoadedAction implements TodoAction {
  const factory TodoLoadedAction(final List<Todo> todos) = _$TodoLoadedAction;

  List<Todo> get todos => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TodoLoadedActionCopyWith<_$TodoLoadedAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTodoActionCopyWith<$Res> {
  factory _$$DeleteTodoActionCopyWith(
          _$DeleteTodoAction value, $Res Function(_$DeleteTodoAction) then) =
      __$$DeleteTodoActionCopyWithImpl<$Res>;
  $Res call({TodoId todoId});
}

/// @nodoc
class __$$DeleteTodoActionCopyWithImpl<$Res>
    extends _$TodoActionCopyWithImpl<$Res>
    implements _$$DeleteTodoActionCopyWith<$Res> {
  __$$DeleteTodoActionCopyWithImpl(
      _$DeleteTodoAction _value, $Res Function(_$DeleteTodoAction) _then)
      : super(_value, (v) => _then(v as _$DeleteTodoAction));

  @override
  _$DeleteTodoAction get _value => super._value as _$DeleteTodoAction;

  @override
  $Res call({
    Object? todoId = freezed,
  }) {
    return _then(_$DeleteTodoAction(
      todoId == freezed
          ? _value.todoId
          : todoId // ignore: cast_nullable_to_non_nullable
              as TodoId,
    ));
  }
}

/// @nodoc

class _$DeleteTodoAction
    with DiagnosticableTreeMixin
    implements DeleteTodoAction {
  const _$DeleteTodoAction(this.todoId);

  @override
  final TodoId todoId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoAction.delete(todoId: $todoId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoAction.delete'))
      ..add(DiagnosticsProperty('todoId', todoId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTodoAction &&
            const DeepCollectionEquality().equals(other.todoId, todoId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todoId));

  @JsonKey(ignore: true)
  @override
  _$$DeleteTodoActionCopyWith<_$DeleteTodoAction> get copyWith =>
      __$$DeleteTodoActionCopyWithImpl<_$DeleteTodoAction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<Todo> todos) loaded,
    required TResult Function(TodoId todoId) delete,
    required TResult Function(TodoId todoId) deleted,
    required TResult Function(Todo todo, VoidCallback? onSaved) save,
    required TResult Function(Todo todo) saved,
  }) {
    return delete(todoId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(TodoId todoId)? delete,
    TResult Function(TodoId todoId)? deleted,
    TResult Function(Todo todo, VoidCallback? onSaved)? save,
    TResult Function(Todo todo)? saved,
  }) {
    return delete?.call(todoId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(TodoId todoId)? delete,
    TResult Function(TodoId todoId)? deleted,
    TResult Function(Todo todo, VoidCallback? onSaved)? save,
    TResult Function(Todo todo)? saved,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(todoId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTodoAction value) load,
    required TResult Function(TodoLoadedAction value) loaded,
    required TResult Function(DeleteTodoAction value) delete,
    required TResult Function(TodoDeletedAction value) deleted,
    required TResult Function(SaveTodoAction value) save,
    required TResult Function(TodoSavedAction value) saved,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadTodoAction value)? load,
    TResult Function(TodoLoadedAction value)? loaded,
    TResult Function(DeleteTodoAction value)? delete,
    TResult Function(TodoDeletedAction value)? deleted,
    TResult Function(SaveTodoAction value)? save,
    TResult Function(TodoSavedAction value)? saved,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTodoAction value)? load,
    TResult Function(TodoLoadedAction value)? loaded,
    TResult Function(DeleteTodoAction value)? delete,
    TResult Function(TodoDeletedAction value)? deleted,
    TResult Function(SaveTodoAction value)? save,
    TResult Function(TodoSavedAction value)? saved,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class DeleteTodoAction implements TodoAction {
  const factory DeleteTodoAction(final TodoId todoId) = _$DeleteTodoAction;

  TodoId get todoId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$DeleteTodoActionCopyWith<_$DeleteTodoAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodoDeletedActionCopyWith<$Res> {
  factory _$$TodoDeletedActionCopyWith(
          _$TodoDeletedAction value, $Res Function(_$TodoDeletedAction) then) =
      __$$TodoDeletedActionCopyWithImpl<$Res>;
  $Res call({TodoId todoId});
}

/// @nodoc
class __$$TodoDeletedActionCopyWithImpl<$Res>
    extends _$TodoActionCopyWithImpl<$Res>
    implements _$$TodoDeletedActionCopyWith<$Res> {
  __$$TodoDeletedActionCopyWithImpl(
      _$TodoDeletedAction _value, $Res Function(_$TodoDeletedAction) _then)
      : super(_value, (v) => _then(v as _$TodoDeletedAction));

  @override
  _$TodoDeletedAction get _value => super._value as _$TodoDeletedAction;

  @override
  $Res call({
    Object? todoId = freezed,
  }) {
    return _then(_$TodoDeletedAction(
      todoId == freezed
          ? _value.todoId
          : todoId // ignore: cast_nullable_to_non_nullable
              as TodoId,
    ));
  }
}

/// @nodoc

class _$TodoDeletedAction
    with DiagnosticableTreeMixin
    implements TodoDeletedAction {
  const _$TodoDeletedAction(this.todoId);

  @override
  final TodoId todoId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoAction.deleted(todoId: $todoId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoAction.deleted'))
      ..add(DiagnosticsProperty('todoId', todoId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoDeletedAction &&
            const DeepCollectionEquality().equals(other.todoId, todoId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todoId));

  @JsonKey(ignore: true)
  @override
  _$$TodoDeletedActionCopyWith<_$TodoDeletedAction> get copyWith =>
      __$$TodoDeletedActionCopyWithImpl<_$TodoDeletedAction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<Todo> todos) loaded,
    required TResult Function(TodoId todoId) delete,
    required TResult Function(TodoId todoId) deleted,
    required TResult Function(Todo todo, VoidCallback? onSaved) save,
    required TResult Function(Todo todo) saved,
  }) {
    return deleted(todoId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(TodoId todoId)? delete,
    TResult Function(TodoId todoId)? deleted,
    TResult Function(Todo todo, VoidCallback? onSaved)? save,
    TResult Function(Todo todo)? saved,
  }) {
    return deleted?.call(todoId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(TodoId todoId)? delete,
    TResult Function(TodoId todoId)? deleted,
    TResult Function(Todo todo, VoidCallback? onSaved)? save,
    TResult Function(Todo todo)? saved,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(todoId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTodoAction value) load,
    required TResult Function(TodoLoadedAction value) loaded,
    required TResult Function(DeleteTodoAction value) delete,
    required TResult Function(TodoDeletedAction value) deleted,
    required TResult Function(SaveTodoAction value) save,
    required TResult Function(TodoSavedAction value) saved,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadTodoAction value)? load,
    TResult Function(TodoLoadedAction value)? loaded,
    TResult Function(DeleteTodoAction value)? delete,
    TResult Function(TodoDeletedAction value)? deleted,
    TResult Function(SaveTodoAction value)? save,
    TResult Function(TodoSavedAction value)? saved,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTodoAction value)? load,
    TResult Function(TodoLoadedAction value)? loaded,
    TResult Function(DeleteTodoAction value)? delete,
    TResult Function(TodoDeletedAction value)? deleted,
    TResult Function(SaveTodoAction value)? save,
    TResult Function(TodoSavedAction value)? saved,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class TodoDeletedAction implements TodoAction {
  const factory TodoDeletedAction(final TodoId todoId) = _$TodoDeletedAction;

  TodoId get todoId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TodoDeletedActionCopyWith<_$TodoDeletedAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveTodoActionCopyWith<$Res> {
  factory _$$SaveTodoActionCopyWith(
          _$SaveTodoAction value, $Res Function(_$SaveTodoAction) then) =
      __$$SaveTodoActionCopyWithImpl<$Res>;
  $Res call({Todo todo, VoidCallback? onSaved});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$$SaveTodoActionCopyWithImpl<$Res>
    extends _$TodoActionCopyWithImpl<$Res>
    implements _$$SaveTodoActionCopyWith<$Res> {
  __$$SaveTodoActionCopyWithImpl(
      _$SaveTodoAction _value, $Res Function(_$SaveTodoAction) _then)
      : super(_value, (v) => _then(v as _$SaveTodoAction));

  @override
  _$SaveTodoAction get _value => super._value as _$SaveTodoAction;

  @override
  $Res call({
    Object? todo = freezed,
    Object? onSaved = freezed,
  }) {
    return _then(_$SaveTodoAction(
      todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
      onSaved: onSaved == freezed
          ? _value.onSaved
          : onSaved // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ));
  }

  @override
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$SaveTodoAction with DiagnosticableTreeMixin implements SaveTodoAction {
  const _$SaveTodoAction(this.todo, {this.onSaved});

  @override
  final Todo todo;
  @override
  final VoidCallback? onSaved;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoAction.save(todo: $todo, onSaved: $onSaved)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoAction.save'))
      ..add(DiagnosticsProperty('todo', todo))
      ..add(DiagnosticsProperty('onSaved', onSaved));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveTodoAction &&
            const DeepCollectionEquality().equals(other.todo, todo) &&
            (identical(other.onSaved, onSaved) || other.onSaved == onSaved));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(todo), onSaved);

  @JsonKey(ignore: true)
  @override
  _$$SaveTodoActionCopyWith<_$SaveTodoAction> get copyWith =>
      __$$SaveTodoActionCopyWithImpl<_$SaveTodoAction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<Todo> todos) loaded,
    required TResult Function(TodoId todoId) delete,
    required TResult Function(TodoId todoId) deleted,
    required TResult Function(Todo todo, VoidCallback? onSaved) save,
    required TResult Function(Todo todo) saved,
  }) {
    return save(todo, onSaved);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(TodoId todoId)? delete,
    TResult Function(TodoId todoId)? deleted,
    TResult Function(Todo todo, VoidCallback? onSaved)? save,
    TResult Function(Todo todo)? saved,
  }) {
    return save?.call(todo, onSaved);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(TodoId todoId)? delete,
    TResult Function(TodoId todoId)? deleted,
    TResult Function(Todo todo, VoidCallback? onSaved)? save,
    TResult Function(Todo todo)? saved,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(todo, onSaved);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTodoAction value) load,
    required TResult Function(TodoLoadedAction value) loaded,
    required TResult Function(DeleteTodoAction value) delete,
    required TResult Function(TodoDeletedAction value) deleted,
    required TResult Function(SaveTodoAction value) save,
    required TResult Function(TodoSavedAction value) saved,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadTodoAction value)? load,
    TResult Function(TodoLoadedAction value)? loaded,
    TResult Function(DeleteTodoAction value)? delete,
    TResult Function(TodoDeletedAction value)? deleted,
    TResult Function(SaveTodoAction value)? save,
    TResult Function(TodoSavedAction value)? saved,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTodoAction value)? load,
    TResult Function(TodoLoadedAction value)? loaded,
    TResult Function(DeleteTodoAction value)? delete,
    TResult Function(TodoDeletedAction value)? deleted,
    TResult Function(SaveTodoAction value)? save,
    TResult Function(TodoSavedAction value)? saved,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class SaveTodoAction implements TodoAction {
  const factory SaveTodoAction(final Todo todo, {final VoidCallback? onSaved}) =
      _$SaveTodoAction;

  Todo get todo => throw _privateConstructorUsedError;
  VoidCallback? get onSaved => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SaveTodoActionCopyWith<_$SaveTodoAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodoSavedActionCopyWith<$Res> {
  factory _$$TodoSavedActionCopyWith(
          _$TodoSavedAction value, $Res Function(_$TodoSavedAction) then) =
      __$$TodoSavedActionCopyWithImpl<$Res>;
  $Res call({Todo todo});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$$TodoSavedActionCopyWithImpl<$Res>
    extends _$TodoActionCopyWithImpl<$Res>
    implements _$$TodoSavedActionCopyWith<$Res> {
  __$$TodoSavedActionCopyWithImpl(
      _$TodoSavedAction _value, $Res Function(_$TodoSavedAction) _then)
      : super(_value, (v) => _then(v as _$TodoSavedAction));

  @override
  _$TodoSavedAction get _value => super._value as _$TodoSavedAction;

  @override
  $Res call({
    Object? todo = freezed,
  }) {
    return _then(_$TodoSavedAction(
      todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }

  @override
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$TodoSavedAction
    with DiagnosticableTreeMixin
    implements TodoSavedAction {
  const _$TodoSavedAction(this.todo);

  @override
  final Todo todo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoAction.saved(todo: $todo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoAction.saved'))
      ..add(DiagnosticsProperty('todo', todo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoSavedAction &&
            const DeepCollectionEquality().equals(other.todo, todo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todo));

  @JsonKey(ignore: true)
  @override
  _$$TodoSavedActionCopyWith<_$TodoSavedAction> get copyWith =>
      __$$TodoSavedActionCopyWithImpl<_$TodoSavedAction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<Todo> todos) loaded,
    required TResult Function(TodoId todoId) delete,
    required TResult Function(TodoId todoId) deleted,
    required TResult Function(Todo todo, VoidCallback? onSaved) save,
    required TResult Function(Todo todo) saved,
  }) {
    return saved(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(TodoId todoId)? delete,
    TResult Function(TodoId todoId)? deleted,
    TResult Function(Todo todo, VoidCallback? onSaved)? save,
    TResult Function(Todo todo)? saved,
  }) {
    return saved?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(TodoId todoId)? delete,
    TResult Function(TodoId todoId)? deleted,
    TResult Function(Todo todo, VoidCallback? onSaved)? save,
    TResult Function(Todo todo)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTodoAction value) load,
    required TResult Function(TodoLoadedAction value) loaded,
    required TResult Function(DeleteTodoAction value) delete,
    required TResult Function(TodoDeletedAction value) deleted,
    required TResult Function(SaveTodoAction value) save,
    required TResult Function(TodoSavedAction value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadTodoAction value)? load,
    TResult Function(TodoLoadedAction value)? loaded,
    TResult Function(DeleteTodoAction value)? delete,
    TResult Function(TodoDeletedAction value)? deleted,
    TResult Function(SaveTodoAction value)? save,
    TResult Function(TodoSavedAction value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTodoAction value)? load,
    TResult Function(TodoLoadedAction value)? loaded,
    TResult Function(DeleteTodoAction value)? delete,
    TResult Function(TodoDeletedAction value)? deleted,
    TResult Function(SaveTodoAction value)? save,
    TResult Function(TodoSavedAction value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class TodoSavedAction implements TodoAction {
  const factory TodoSavedAction(final Todo todo) = _$TodoSavedAction;

  Todo get todo => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TodoSavedActionCopyWith<_$TodoSavedAction> get copyWith =>
      throw _privateConstructorUsedError;
}
