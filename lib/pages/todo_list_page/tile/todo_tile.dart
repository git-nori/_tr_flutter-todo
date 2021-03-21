import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo/model/controllers/todo_controller/todo_controller.dart';
import 'package:flutter_todo/model/entities/entities.dart';
import 'package:flutter_todo/pages/todo_upsert_page/todo_upsert_page.dart';
import 'package:flutter_todo/pages/todo_upsert_page/todo_upsert_page_arg.dart';
import 'package:flutter_todo/providers/providers.dart';

class TodoTile extends ConsumerWidget {
  const TodoTile({Key key, @required this.todo}) : super(key: key);
  final Todo todo;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final navigatorKey = watch(navigatorKeyProvider).currentState;
    return Card(
      elevation: 2,
      child: ListTile(
        title: Text(
          '${todo.title}',
          style: todo.isDone
              ? const TextStyle(decoration: TextDecoration.lineThrough)
              : null,
        ),
        onTap: () {
          navigatorKey.pushNamed(
            TodoUpSertPage.routeName,
            arguments: TodoUpsertPageArg(todo: todo),
          );
        },
        trailing: Checkbox(
          value: todo.isDone,
          onChanged: (bool value) =>
              watch(todoProvider).toggleTodo(id: todo.id),
        ),
      ),
    );
  }
}
