import 'package:flutter_todo/model/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_state.freezed.dart';

@freezed
abstract class TodoState with _$TodoState {
  factory TodoState({@Default(<Todo>[]) List<Todo> todoList}) = _TodoState;
  TodoState._();
}
