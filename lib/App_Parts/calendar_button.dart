import 'package:flutter/material.dart';
import 'package:organizer/Constants.dart';
class CalendarButton extends StatefulWidget {
  @override
  _CalendarButtonState createState() => _CalendarButtonState();
}

class _CalendarButtonState extends State<CalendarButton> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 29,
      backgroundColor:  klightPrimaryColor.withOpacity(0.5),
      child: CircleAvatar(
        radius: 27,
        backgroundImage: AssetImage("images/user.jpg"),
      ),
    );
  }
}