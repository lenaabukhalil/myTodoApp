import 'package:flutter/material.dart';

class TodoProvider extends ChangeNotifier {
  TextEditingController todoCtr = TextEditingController();
  List<String> todoList = [];
  List<bool> todocheck = [];

  void addTodo() {
    if (todoCtr.text.trim().isEmpty) return;
    todoList.add(todoCtr.text.trim());
    todocheck.add(false);
    todoCtr.clear();
    notifyListeners();
  }

  void removeTodo(int index) {
    todoList.removeAt(index);
    todocheck.removeAt(index);
    notifyListeners();
  }

  void checkbox(int index) {
    todocheck[index] = !todocheck[index];
    notifyListeners();
  }

  @override
  void dispose() {
    todoCtr.dispose();
    super.dispose();
  }
}
