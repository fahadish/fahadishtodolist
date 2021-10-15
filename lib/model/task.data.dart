import 'package:flutter/material.dart';
import 'package:mytodoey/widgets/task_list.dart';
import 'package:mytodoey/widgets/task_tile.dart';
import 'package:mytodoey/model/task.dart';
import 'package:mytodoey/screens/add_task.dart';
import 'dart:collection';
class TaskData extends ChangeNotifier{
  List<Task> _task = [
    Task(name: 'buy milk'),
    Task(name: 'buy bread'),
    Task(name: 'buy egg'),
  ];
  UnmodifiableListView<Task>get tasks{
    return UnmodifiableListView(_task);

  }

  void updateTask(Task task){
task.toggleDone();
notifyListeners();

  }
  void deleteTask(Task task){
    _task.remove(task);
    notifyListeners();
  }

 int get taskCount{
   return _task.length;
 }

 void addTask(String newTaskTitle){
   final tasks = Task(name: newTaskTitle);
   _task.add(tasks);
   notifyListeners();

 }

}