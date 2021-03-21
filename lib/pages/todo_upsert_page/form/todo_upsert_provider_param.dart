import 'package:flutter/material.dart';
import 'package:flutter_todo/model/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_upsert_provider_param.freezed.dart';

@freezed
abstract class TodoUpsertProviderParam with _$TodoUpsertProviderParam {
  factory TodoUpsertProviderParam({
    @required Todo todo,
    @required bool isInsert,
  }) = _TodoUpsertProviderParam;
  TodoUpsertProviderParam._();
}
