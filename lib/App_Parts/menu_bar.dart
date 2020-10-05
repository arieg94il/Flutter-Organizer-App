import 'package:flutter/material.dart';
import 'package:organizer/Constants.dart';
import 'return_button.dart';
import 'calendar_button.dart';

class MenuBar extends StatefulWidget {
  @override
  _MenuBarState createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kprimaryColor,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/3,
      child: Padding(
        padding: EdgeInsets.only(left: kSidePadding, right: kSidePadding, top: 65),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[ReturnButton(), Text("My Tasks", style: kTitleStyle,),CalendarButton()],)
        ),
    );
  }
}




