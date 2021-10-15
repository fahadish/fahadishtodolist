import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget {

  final bool isChecked;
  final void Function() longPressCallBack;
  final void Function(bool?)? checkboxCallback;
  final String? taskTittle;
TaskTile({required this.isChecked,this.taskTittle,required this.checkboxCallback,required this.longPressCallBack});


  @override
  Widget build(BuildContext context) {
    return ListTile(onLongPress: longPressCallBack,
      title: Text(taskTittle ?? 'N/A',style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),),
      trailing: Checkbox(
        activeColor: Colors.purpleAccent,
        value: isChecked,
         onChanged: checkboxCallback,
      )
    );
  }
}


