import 'package:flutter/material.dart';
import 'package:todoeyapp/models/Task_Data.dart';
import 'Tasktiles.dart';
import 'models/Task_Data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              textTitle: taskData.task[index].name,
              isChecked: taskData.task[index].isDone,
              longPressCallback: () {
                taskData.deleteTask(
                  taskData.task[index],
                );
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
