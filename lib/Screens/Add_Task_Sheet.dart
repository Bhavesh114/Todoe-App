import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyapp/constants.dart';
import 'package:todoeyapp/models/Task_Data.dart';

class AddTaskSheet extends StatelessWidget {
  String newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: kWhiteContainer,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextField(
                cursorColor: Colors.lightBlueAccent,
                textAlign: TextAlign.center,
                autofocus: true,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.grey,
                ),
                onChanged: (value) {
                  newTaskTitle = value;
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              FlatButton(
                color: Colors.lightBlueAccent,
                onPressed: () {
                  if (newTaskTitle != null) {
                    Provider.of<TaskData>(context).addTask(newTaskTitle);
                    Navigator.pop(context);
                  } else {
                    Navigator.pop(context);
                  }
                },
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
