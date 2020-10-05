import 'package:flutter/material.dart';
import 'callback_functions.dart';
import 'package:organizer/Constants.dart';

class TasksList extends StatelessWidget {

  List list;
  bool clicked;
  final IndexCallback DeleteSelectIndex;
  final StatusCallback StatusIndex;

  TasksList({this.list, this.DeleteSelectIndex, this.StatusIndex, this.clicked});
  @override
  Widget build(BuildContext context) {

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*.75,
      color: kprimaryColor,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height*.65,
        decoration: BoxDecoration(
          color: klightPrimaryColor,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(65), topRight: Radius.circular(65))
        ),
        child: Padding(
          padding: const EdgeInsets.only(left:kSidePadding, right:kSidePadding, top: 30),
          child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (BuildContext context, index){
              return Padding(
                padding: const EdgeInsets.symmetric(vertical:8.0),
                child: Container(
                  decoration:BoxDecoration(
                    color: Colors.cyan[500],
                    borderRadius: BorderRadius.all(Radius.circular(45))
                  ),
                  child: ListTile(
                    title: Text(list[index].text, style: new TextStyle(color:ktextColor,fontSize:kItemFontSize,fontFamily: 'IndieFlower', decoration: list[index].status?TextDecoration.lineThrough:TextDecoration.none,),),
                    trailing: list[index].status?Icon(Icons.radio_button_checked, color:ktextColor,):Icon(Icons.radio_button_unchecked,color:ktextColor,),
                    onLongPress: (){
                      final snackBar = SnackBar(content: Text("'${list[index].text}' deleted"));
                      Scaffold.of(context).showSnackBar(snackBar);
                      DeleteSelectIndex(index);},
                    onTap: (){
                      StatusIndex(index);
                      print(clicked);
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}