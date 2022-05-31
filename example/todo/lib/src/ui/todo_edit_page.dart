import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/src/model/todo/todo.dart';
import 'package:todo/src/redux/action/todo_action.dart';
import 'package:todo/src/redux/app_store.dart';

class TodoEditPage extends ConsumerStatefulWidget {
  final bool isEdit;
  final Todo? todo;

  const TodoEditPage({
    Key? key,
    required this.isEdit,
    this.todo,
  }) : super(key: key);

  factory TodoEditPage.add() => const TodoEditPage(isEdit: false);
  factory TodoEditPage.edit(Todo todo) {
    return TodoEditPage(isEdit: true, todo: todo);
  }

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TodoEditState();
}

class _TodoEditState extends ConsumerState<TodoEditPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  String task = '';
  String? note;

  @override
  void initState() {
    super.initState();

    task = widget.todo?.task ?? '';
    note = widget.todo?.note;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              if (!(_formKey.currentState?.validate() ?? false)) {
                return;
              }
              _formKey.currentState?.save();
              final Todo todo;
              if (widget.isEdit) {
                todo = widget.todo!.copyWith(
                  task: task,
                  note: note,
                  updatedAt: DateTime.now(),
                );
              } else {
                todo = Todo.create(task: task, note: note);
              }
              final action = TodoAction.save(todo, onSaved: () {
                Navigator.pop(context);
              });
              ref.read(appStore.notifier).dispatch(action);
            },
            icon: const Icon(Icons.save),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                initialValue: task,
                decoration: const InputDecoration(
                  hintText: 'Task',
                  border: OutlineInputBorder(),
                ),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Must input task';
                  }
                  return null;
                },
                onSaved: (text) => task = text ?? '',
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                initialValue: note,
                decoration: const InputDecoration(
                  hintText: 'Note',
                  border: OutlineInputBorder(),
                ),
                onSaved: (text) => note = text,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
