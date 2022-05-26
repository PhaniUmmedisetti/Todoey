import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy/models/task.dart';
import 'package:udemy/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    String? newTaskTitle;

    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Add task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            FlatButton(
              onPressed: () {
                // final task = Task(name: newTaskTitle!);
                if (newTaskTitle != null) {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTaskTitle!);
                }
                Navigator.pop(context);
              },
              child: const Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.lightBlueAccent,
            )
          ],
        ),
      ),
    );
  }
}
