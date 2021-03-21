import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo/model/controllers/controllers.dart';
import 'package:flutter_todo/model/entities/entities.dart';
import 'package:flutter_todo/pages/todo_upsert_page/form/todo_upsert_form.dart';

class TodoUpSertPage extends ConsumerWidget {
  static const routeName = '/list/upsert';
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final todo = ModalRoute.of(context).settings.arguments as Todo;
    final isInsert = todo == null;
    return Scaffold(
      appBar: AppBar(
        title: Text(isInsert ? 'Todo Create' : 'Todo Update'),
      ),
      body: TodoUpsertForm(
        todo: isInsert
            ? Todo(
                id: watch(todoProvider.state).todoList.length + 1,
                isDone: false,
                title: '',
              )
            : todo,
        isInsert: isInsert,
        submitBtnTxt: isInsert ? 'Create' : 'Update',
      ),
    );
  }
}
