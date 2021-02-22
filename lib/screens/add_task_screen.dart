import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/task.dart';
import 'package:todoapp/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  String addedText;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff755e3c),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.orange.shade200,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Add Task",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              TextField(
                onChanged: (newText) {
                  addedText = newText;
                },
                cursorWidth: 3,
                textCapitalization: TextCapitalization.sentences,
                cursorColor: Colors.orange,
                textAlign: TextAlign.center,
                autofocus: true,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange)),
                  focusColor: Colors.orange,
                  hintText: "Enter your task",
                  hintStyle: TextStyle(
                    letterSpacing: 2,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FlatButton(
                height: 45,
                color: Colors.orange,
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(addedText);
                  Navigator.pop(context);
                },
                child: Text(
                  "Add Task",
                  style: TextStyle(color: Colors.black54),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
