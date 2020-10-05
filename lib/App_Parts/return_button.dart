import 'package:flutter/material.dart';
import 'package:organizer/Constants.dart';
import 'dart:io';

class ReturnButton extends StatefulWidget {
  @override
  _ReturnButtonState createState() => _ReturnButtonState();
}

class _ReturnButtonState extends State<ReturnButton> {
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
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: IconButton(
        splashColor: ktextColor,
        splashRadius: 5,
        icon: Icon(Icons.arrow_back_ios, color: ktextColor,),
        onPressed: ()=> exit(0),
      ),
    );
  }
}