import 'package:flutter/material.dart';
import 'package:mytodoey/model/task.data.dart';
import 'package:mytodoey/model/task.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {

String? newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Text(
            'Add Task',
            style: TextStyle(
                color: Colors.purpleAccent,
                fontSize: 30,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          TextField(onChanged: (newText){
newTaskTitle = newText;

          },
              textAlign: TextAlign.center,
              cursorColor: Colors.purpleAccent,
              decoration: const InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.purpleAccent),
                ),
              )),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.purpleAccent)),
              onPressed: () {

                Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle.toString());
                Navigator.pop(context);

              },
              child: const Text(
                'Add',
                style: TextStyle(fontSize: 18),
              ))
        ],
      ),
    );
  }
}
