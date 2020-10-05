import 'package:flutter/material.dart';

class CategoryCard extends StatefulWidget {

  String category;
  IconData icon;
  VoidCallback onPressed;
  CategoryCard({this.category, this.icon, this.onPressed});

  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Container(
        width: 300,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
              color: Colors.lightBlue.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 1,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.all(Radius.circular(45)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.lightBlue.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 1,
                      )
                    ],
                  ),
                  child: IconButton(
                    icon: (Icon(widget.icon, size: 45)),
                    onPressed: widget.onPressed,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("${widget.category}", style: TextStyle(fontSize: 40),),
                      Container(
                        width: 30,
                        height: 30,
                        child: Center(child: Text("2", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.all(Radius.circular(40)),

                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}