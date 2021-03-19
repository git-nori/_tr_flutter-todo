import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo/model/controllers/controllers.dart';

import 'tile/todo_tile.dart';

class TodoListPage extends StatelessWidget {
  static const routeName = '/list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo'),
        actions: [IconButton(icon: const Icon(Icons.add), onPressed: () {})],
      ),
      body: _ListView(),
    );
  }
}

class _ListView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 20),
      itemBuilder: (_, int index) => TodoTile(
        todo: watch(todoProvider.state).todoList[index],
      ),
      itemCount: watch(todoProvider.state).todoList.length,
    );
  }
}
