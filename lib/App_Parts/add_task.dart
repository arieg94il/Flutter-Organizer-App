import 'package:flutter/material.dart';
import 'package:organizer/Constants.dart';
class AddTaskButton extends StatelessWidget {
  VoidCallback onPressed;
  AddTaskButton({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: kaccentColor,
        boxShadow: [
          BoxShadow(
            color: klightPrimaryColor.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 1,
            offset: Offset(0,0),
          ),
        ],
      ),
      child: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.lightBlue,
          onPressed: onPressed
      ),
    );
  }
}