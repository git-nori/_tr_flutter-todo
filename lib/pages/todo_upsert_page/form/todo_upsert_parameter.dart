import 'package:flutter/material.dart';
import 'package:flutter_todo/model/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_upsert_parameter.freezed.dart';

@freezed
abstract class TodoUpsertParameter with _$TodoUpsertParameter {
  factory TodoUpsertParameter({
    @required Todo todo,
    @required bool isInsert,
  }) = _TodoUpsertParameter;
  TodoUpsertParameter._();
}
