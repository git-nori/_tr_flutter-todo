import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo/model/entities/entities.dart';
import 'package:flutter_todo/providers/navigator.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'todo_upsert_controller.dart';
import 'todo_upsert_provider_param.dart';

final todoUpsertProviderFamily = StateNotifierProvider.family
    .autoDispose<TodoUpsertController, TodoUpsertProviderParam>((ref, param) {
  return TodoUpsertController(
    ref.read,
    todo: param.todo,
    isInsert: param.isInsert,
  );
});

class TodoUpsertForm extends ConsumerWidget {
  TodoUpsertForm({this.submitBtnTxt, this.isInsert, this.todo});
  final Todo todo;
  final bool isInsert;
  final String submitBtnTxt;
  final _formKey = GlobalKey<FormState>();
  void _submission(
    GlobalKey<NavigatorState> navigator,
    TodoUpsertController todoUpsertController,
  ) {
    if (!_formKey.currentState.validate()) {
      return;
    }
    final isSubmitted = todoUpsertController.submit();
    if (isSubmitted) {
      Fluttertoast.showToast(
        msg: todoUpsertController.completedSubmitTxt,
        textColor: Colors.black,
        backgroundColor: Colors.grey.shade300,
      );
      _formKey.currentState.reset();
      Navigator.pop(navigator.currentState.descendantContext);
    }
  }

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final navigator = watch(navigatorKeyProvider);
    final todoUpsertProvider = todoUpsertProviderFamily(
      TodoUpsertProviderParam(isInsert: isInsert, todo: todo),
    );
    final todoUpsertController = context.read(todoUpsertProvider);
    final todoUpsertState = watch(todoUpsertProvider.state);
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: todoUpsertState.titleController,
              validator: todoUpsertController.isValidTitle,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => _submission(navigator, todoUpsertController),
              child: Text(submitBtnTxt),
            )
          ],
        ),
      ),
    );
  }
}
