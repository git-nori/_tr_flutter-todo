import 'package:flutter/material.dart';
import 'package:flutter_todo/model/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_upsert_page_arg.freezed.dart';

@freezed
abstract class TodoUpsertPageArg with _$TodoUpsertPageArg {
  factory TodoUpsertPageArg({@required @nullable Todo todo}) =
      _TodoUpsertPageArg;
  TodoUpsertPageArg._();
}
