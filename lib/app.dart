import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo/pages/todo_upsert_page/todo_upsert_page.dart';
import 'package:flutter_todo/pages/todo_upsert_page/todo_upsert_page_arg.dart';
import 'package:flutter_todo/providers/providers.dart';

import 'pages/todo_list_page/todo_list_page.dart';

class App extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: TodoListPage(),
      navigatorKey: watch(navigatorKeyProvider),
      routes: <String, WidgetBuilder>{
        TodoListPage.routeName: (BuildContext context) => TodoListPage(),
        TodoUpSertPage.routeName: (BuildContext context) => TodoUpSertPage(
              args: ModalRoute.of(context).settings.arguments
                  as TodoUpsertPageArg,
            ),
      },
    );
  }
}
