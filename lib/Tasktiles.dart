import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({this.textTitle, this.isChecked, this.longPressCallback});
  final String textTitle;
  bool isChecked;
  Function longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        textTitle,
        style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w500,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (newValue) {
          isChecked = !isChecked;
        },
      ),
    );
  }
}
