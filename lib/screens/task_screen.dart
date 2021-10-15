import 'package:flutter/material.dart';
import 'package:mytodoey/widgets/task_list.dart';
import 'package:mytodoey/screens/add_task.dart';
import 'package:mytodoey/model/task.dart';
import 'package:provider/provider.dart';
import 'package:mytodoey/model/task.data.dart';

class TaskScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (buildContext) => AddTaskScreen());
        },
        backgroundColor: Colors.purpleAccent,
        child: const Icon(Icons.add_outlined),
      ),
      backgroundColor: Colors.purpleAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  <Widget>[
                const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.list_rounded,
                      color: Colors.purpleAccent,
                      size: 35,
                    )),
                Text(
                  'Todoey',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  ' Right now you are having ${Provider.of<TaskData>(context).taskCount} tasks',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25))),
              child: TaskList(),
            ),
          )
        ],
      ),
    );
  }
}
