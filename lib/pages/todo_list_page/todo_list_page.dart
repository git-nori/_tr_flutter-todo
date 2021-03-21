import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo/model/controllers/controllers.dart';
import 'package:flutter_todo/model/entities/entities.dart';
import 'package:flutter_todo/pages/todo_upsert_page/todo_upsert_page.dart';
import 'package:flutter_todo/pages/todo_upsert_page/todo_upsert_page_arg.dart';
import 'package:flutter_todo/providers/providers.dart';
import 'package:flutter_todo/widgets/confirm_dialog.dart';
import 'package:flutter_todo/widgets/widgets.dart';

import 'tile/todo_tile.dart';

class TodoListPage extends ConsumerWidget {
  static const routeName = '/list';

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final navigatorKey = watch(navigatorKeyProvider).currentState;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => navigatorKey.pushNamed(TodoUpSertPage.routeName,
                arguments: TodoUpsertPageArg(todo: null)),
          )
        ],
      ),
      body: _ListView(),
    );
  }
}

class _ListView extends ConsumerWidget {
  Future<bool> _confirmDismiss(
    DismissDirection direction,
    GlobalKey<NavigatorState> navigator,
  ) async {
    if (direction != DismissDirection.startToEnd) {
      return false;
    }
    return showDialog<bool>(
      context: navigator.currentState.descendantContext,
      builder: (BuildContext context) {
        return ConfirmDialog(
          title: const Text('Confirm'),
          content: const Text('Are you sure you wish to delete this item?'),
          okBtnChild:
              const Text('DELETE', style: TextStyle(color: Colors.black)),
          okBtnStyle: OutlinedButton.styleFrom(backgroundColor: Colors.red),
          canBtnChild:
              const Text('CANCEL', style: TextStyle(color: Colors.black)),
        );
      },
    );
  }

  void _onDismissed(TodoController todoController, Todo todo) =>
      todoController.deleteTodo(id: todo.id);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final todoState = watch(todoProvider.state);
    final todoController = context.read(todoProvider);
    final navigator = watch(navigatorKeyProvider);
    return ListView.builder(
      padding: const EdgeInsets.only(top: 20),
      itemCount: todoState.todoList.length,
      itemBuilder: (_, int index) {
        final todo = todoState.todoList[index];
        return Dismissible(
          key: Key(todo.id.toString()),
          confirmDismiss: (direction) => _confirmDismiss(
            direction,
            navigator,
          ),
          onDismissed: (direction) => _onDismissed(
            todoController,
            todo,
          ),
          background: const DismissBackground(
            icon: Icon(
              Icons.delete,
              color: Colors.white,
            ),
            colors: Colors.red,
            alignment: Alignment.centerLeft,
          ),
          secondaryBackground: Container(),
          child: TodoTile(todo: todo),
        );
      },
    );
  }
}
