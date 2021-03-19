import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo/model/entities/entities.dart';
import 'todo_state.dart';
export 'todo_state.dart';

final defTodo = [
  Todo(id: 1, title: 'todo1', isDone: false),
  Todo(id: 2, title: 'todo2', isDone: true),
  Todo(id: 3, title: 'todo3', isDone: false),
];

final todoProvider = StateNotifierProvider((ref) => TodoController());

class TodoController extends StateNotifier<TodoState> {
  TodoController() : super(TodoState(todoList: defTodo));

  void createTodo({String title}) {
    final id = state.todoList.length + 1;
    final newTodo = Todo(id: id, title: title, isDone: false);
    state = state.copyWith(todoList: [...state.todoList, newTodo]);
  }

  void toggleTodo({int id, bool isDone}) {
    final newTodoList = state.todoList.map((e) {
      if (e.id != id) {
        return e;
      }
      return e.toggleDone();
    }).toList();
    state = state.copyWith(todoList: newTodoList);
  }

  void updateTodoTitle({int id, String title}) {
    final newTodoList = state.todoList.map((e) {
      if (e.id != id) {
        return e;
      }
      return e.copyWith(title: title);
    }).toList();
    state = state.copyWith(todoList: newTodoList);
  }

  void deleteTodo({int id}) {
    state = state.copyWith(
      todoList: state.todoList.where((todo) => todo.id != id).toList(),
    );
  }
}
