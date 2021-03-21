import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_upsert_state.freezed.dart';

@freezed
abstract class TodoUpsertState with _$TodoUpsertState {
  factory TodoUpsertState({
    @required int id,
    @required TextEditingController titleController,
  }) = _TodoUpsertState;
  TodoUpsertState._();
}
