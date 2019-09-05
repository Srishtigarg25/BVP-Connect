import 'package:flutter/material.dart';
class FacultyRoute extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   
    return FacultyRouteState();
  }
} 

class FacultyRouteState extends State<FacultyRoute> {
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Container(
            width: double.infinity,
            child: Center(
              child: Text(
                "Faculty Login",
              ),
            ),
          ),
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.only(top: 100),
            width: double.infinity,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "Email ID",
                        style: TextStyle(fontSize: 30),
                      ),
                      TextField(
                        
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Password",
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  RaisedButton(
                    child: Text("Oops! I am not teacher"),
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
