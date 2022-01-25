import 'package:flutter/material.dart';
import 'TaskItemWidget.dart';

class ListTaskWidget extends StatelessWidget {
  final List todoList;
  final Function(bool?, int) onChanged;
  const ListTaskWidget(
      {Key? key, required this.todoList, required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: todoList.length,
      itemBuilder: (_, index) {
        var task = todoList[index];
        return TaskItemWidget(
          description: task.description,
          completed: task.completed,
          onChanged: (v)=>onChanged(v, index),
        );
      },
    );
  }
}
