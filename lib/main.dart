import 'package:flutter/material.dart';
import 'App_Parts/category_card.dart';
import 'App_Parts/home_todo_list.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeTasks(),
    );
  }
}


class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF673AB7),
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: EdgeInsets.only(left: 20, top: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.lightBlue.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 1,
                        )],
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Colors.white),
                  child: IconButton(icon: Icon(Icons.menu, color: Colors.lightBlue),onPressed: (){
                    print("Menu button");
                  }),
                ),
                SizedBox(height: 15),
                Text("Monday, 21 September", style: TextStyle(fontSize: 18)),
                SizedBox(height: 10),
                Text("Welcome Back!", style: TextStyle(fontSize: 35)),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        color: Color(0xFF673AB7),
        height: MediaQuery.of(context).size.height*(2/3),
        width: MediaQuery.of(context).size.width,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            CategoryCard(category: "Home", icon: Icons.home, onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomeTasks()));},),
            CategoryCard(category: "Work", icon: Icons.work, onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomeTasks()));},),
            CategoryCard(category: "School", icon: Icons.school, onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomeTasks()));},),
            //Text("Work"),
            //Text("School"),
          ],
        ),
      ),
    );
  }
}
