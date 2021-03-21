import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo/model/entities/entities.dart';

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
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final todoUpsertProvider = todoUpsertProviderFamily(
      TodoUpsertProviderParam(isInsert: isInsert, todo: todo),
    );
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: watch(todoUpsertProvider.state).titleController,
              validator: watch(todoUpsertProvider).isValidTitle,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => _submission(context, todoUpsertProvider),
              child: Text(submitBtnTxt),
            )
          ],
        ),
      ),
    );
  }

  void _submission(
    BuildContext context,
    AutoDisposeStateNotifierProvider<TodoUpsertController> todoUpsertProvider,
  ) {
    if (!_formKey.currentState.validate()) {
      return;
    }
    final isSubmitted = context.read(todoUpsertProvider).submit();
    if (isSubmitted) {
      _formKey.currentState.reset();
      Navigator.pop(context);
    }
  }
}
