import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'pages/todo_list_page/todo_list_page.dart';

class App extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: TodoListPage(),
      routes: <String, WidgetBuilder>{
        TodoListPage.routeName: (BuildContext context) => TodoListPage(),
      },
    );
  }
}
