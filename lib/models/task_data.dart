import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoapp/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String title) {
    final task = Task(name: title);
    _tasks.add(task);
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }
}
