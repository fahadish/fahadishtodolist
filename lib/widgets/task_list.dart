import 'package:flutter/material.dart';
import 'package:mytodoey/widgets/task_tile.dart';
import 'package:mytodoey/model/task.data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
                taskTittle: task.name,
                isChecked: task.isDone,
                checkboxCallback: (bool? checkboxState) {
taskData.updateTask(task);
                },
                longPressCallBack: (){
                  taskData.deleteTask(task);
            },
                );
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
