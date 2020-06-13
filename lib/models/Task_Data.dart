import 'package:flutter/foundation.dart';
import 'Task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _taskList = [];

  int get taskCount {
    return _taskList.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _taskList.add(task);
    notifyListeners();
  }

  UnmodifiableListView<Task> get task {
    return UnmodifiableListView(_taskList);
  }

  void deleteTask(Task task) {
    _taskList.remove(task);
    notifyListeners();
  }
}
