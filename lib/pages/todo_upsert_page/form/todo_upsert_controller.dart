import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo/model/controllers/todo_controller/todo_controller.dart';
import 'package:flutter_todo/model/entities/entities.dart';
import 'todo_upsert_state.dart';

enum TodoUpsertControllerEnum {
  insert,
  update,
}

class TodoUpsertController extends StateNotifier<TodoUpsertState> {
  TodoUpsertController(this._read,
      {@required Todo todo, @required this.isInsert})
      : super(TodoUpsertState(
          titleController: TextEditingController(text: todo.title),
          id: todo.id,
        ));
  final Reader _read;
  final bool isInsert;
  String isValidTitle(String val) => val.isEmpty ? 'タスクのタイトルは必須入力です' : null;
  bool submit() {
    try {
      if (isInsert) {
        _read(todoProvider).createTodo(title: state.titleController.text);
        return true;
      }
      _read(todoProvider)
          .updateTodoTitle(id: state.id, title: state.titleController.text);
      return true;
    } catch (e) {
      return false;
    }
  }
}
