import 'package:flutter/material.dart';
import 'package:mytodoey/screens/task_screen.dart';
import 'package:provider/provider.dart';
import 'package:mytodoey/model/task.data.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return TaskData();
      },
      child: MaterialApp(debugShowCheckedModeBanner: false,
        home: TaskScreen(),
      ),
    );
  }
}
