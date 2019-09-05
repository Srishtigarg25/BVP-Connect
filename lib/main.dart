import 'package:flutter/material.dart';
import './student.dart';
import './faculty.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BaseApp(),
      routes: <String, WidgetBuilder>{
        'loginasfaculty': (context) => FacultyRoute(),
        'loginasstudent': (context) => StudentRoute()
      },
    );
  }
}

class BaseApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Container(
          width: double.infinity,
          child: Text(
            "Welcome to BVP",
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 200),
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                "Login As...",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text("Faculty"),
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.pushNamed(context, 'loginasfaculty');
                  },
                ),
                RaisedButton(
                  child: Text("Student"),
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.pushNamed(context, 'loginasstudent');
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
