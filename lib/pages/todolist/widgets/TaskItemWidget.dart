import 'package:flutter/material.dart';

class TaskItemWidget extends StatelessWidget {
  final String description;
  final bool completed;
  final Function(bool?) onChanged;
  const TaskItemWidget(
      {Key? key,
      required this.description,
      required this.completed,
      required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: completed,
      onChanged: onChanged,
      title: Text(
        description,
        style: TextStyle(
          color: Color(0xFF767676),
          fontSize: 14,
          decoration:
              completed ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      secondary: Icon(
        completed ? Icons.check_circle : Icons.error,
        color: Color(0xFFC1007E),
      ),
    );
  }
}
