import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function callBackCheckBox;
  final Function removeTask;

  TaskTile(
      {this.title, this.isChecked, this.callBackCheckBox, this.removeTask});
  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: removeTask,
        title: Text(
          title,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.orange,
          value: isChecked,
          onChanged: callBackCheckBox,
        ));
  }
}
