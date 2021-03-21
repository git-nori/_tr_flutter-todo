import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo/model/controllers/controllers.dart';
import 'package:flutter_todo/model/entities/entities.dart';
import 'package:flutter_todo/pages/todo_upsert_page/form/todo_upsert_form.dart';
import 'package:flutter_todo/pages/todo_upsert_page/todo_upsert_page_arg.dart';

class TodoUpSertPage extends ConsumerWidget {
  const TodoUpSertPage({@required this.args});
  static const routeName = '/list/upsert';
  final TodoUpsertPageArg args;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final isInsert = args.todo == null;
    final todoState = watch(todoProvider.state);
    return Scaffold(
      appBar: AppBar(
        title: Text(isInsert ? 'Todo Create' : 'Todo Update'),
      ),
      body: TodoUpsertForm(
        todo: isInsert
            ? Todo(
                id: todoState.todoList.length + 1,
                isDone: false,
                title: '',
              )
            : args.todo,
        isInsert: isInsert,
        submitBtnTxt: isInsert ? 'Create' : 'Update',
      ),
    );
  }
}
