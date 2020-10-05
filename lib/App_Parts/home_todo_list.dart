import 'package:flutter/material.dart';
import 'task_class.dart';
import 'tasks_list.dart';
import 'add_task.dart';
import 'menu_bar.dart';

class HomeTasks extends StatefulWidget {
  @override
  _HomeTasksState createState() => _HomeTasksState();
}

class _HomeTasksState extends State<HomeTasks> {

  List<Task> _tasks = [];
  bool clicked=false;
  int currentIndex;

  void _removeTask(int index){
    setState(() => _tasks.removeAt(index));
  }

  createAlertDialog(BuildContext context, list){

    Task input=Task("***Empty Task***", false);

    return showDialog(context: context, builder:(context){
      return AlertDialog(
        title: Text("ADD TASK"),
        content: TextField(
          onChanged: (String value){
            input.text = value;
          },
        ),
        actions: <Widget>[
          FlatButton(
            child:Text("Add"),
            onPressed: (){
              //print(_tasks.length+1);
              setState(() {
                list.add(input);
                Navigator.of(context, rootNavigator: true).pop('dialog');
              });
            },)
        ],
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MenuBar(),
        bottomSheet: TasksList(
            clicked: clicked,
            list: _tasks,
            DeleteSelectIndex: (index){
              setState(() {
                currentIndex=index;
                _removeTask(currentIndex);
              });
            },
            StatusIndex: (index){
              setState(() {
                clicked=!clicked;
                _tasks[index].status=clicked;
              });
            }
        ),
        floatingActionButton: AddTaskButton(onPressed: (){
          setState(() {
            createAlertDialog(context, _tasks);
          });
        },)
    );
  }
}

