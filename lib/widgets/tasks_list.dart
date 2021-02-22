import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/task_data.dart';
import 'package:todoapp/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => ListView.builder(
        itemBuilder: (context, index) {
          final taskItem = taskData.tasks[index];
          int indexofTask = index;
          return TaskTile(
              title: taskItem.taskName,
              isChecked: taskItem.isDone,
              removeTask: () {
                taskData.removeTask(taskItem);
              },
              callBackCheckBox: (bool checkboxState) {
                taskData.updateTask(taskItem);
              });
        },
        itemCount: taskData.taskLength,
      ),
    );
  }
}
