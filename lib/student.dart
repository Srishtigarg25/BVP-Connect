import 'package:flutter/material.dart';

class StudentRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Container(
            width: double.infinity,
            child: Center(
              child: Text("Student Login"),
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
                  Text(
                    "Sign in to your account",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                          child: Text("Sign in"),
                          color: Colors.blue,
                          onPressed: (() => Null),
                        ),
                        RaisedButton(
                          child: Text("Create an account"),
                          color: Colors.blue,
                          onPressed: (() => Null),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: RaisedButton(
                      child: Text("Sorry, I am a teacher"),
                      color: Colors.blue,
                      onPressed: () {
                        Navigator.pop(context, 'loginasfaculty');
                      },
                    ),
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
