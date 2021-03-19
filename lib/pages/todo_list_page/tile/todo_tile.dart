import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo/model/controllers/todo_controller/todo_controller.dart';
import 'package:flutter_todo/model/entities/entities.dart';

class TodoTile extends ConsumerWidget {
  const TodoTile({Key key, @required this.todo}) : super(key: key);
  final Todo todo;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Card(
      elevation: 2,
      child: ListTile(
        title: Text(
          '${todo.title}',
          style: todo.isDone
              ? const TextStyle(decoration: TextDecoration.lineThrough)
              : null,
        ),
        onTap: () {},
        trailing: Checkbox(
          value: todo.isDone,
          onChanged: (bool value) =>
              watch(todoProvider).toggleTodo(id: todo.id),
        ),
      ),
    );
  }
}
