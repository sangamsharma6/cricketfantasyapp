import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sricket/Login.dart';
import 'package:sricket/SignUp.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image(
                    image: AssetImage('images/main_top.png'),
                    alignment: Alignment.topLeft,
                    height: 150.0,
                    width: 150,
                      color: Colors.deepPurple
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SvgPicture.asset(
                    'images/chat.svg',
                    height: 220,
                    width: 220,
                  )
                ],
              ),
              Container(
                width: double.maxFinite,
                height: 45.0,
                margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
                child: RaisedButton(
                  splashColor: Colors.deepPurpleAccent,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  color: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  textColor: Colors.white,
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                height: 45.0,
                margin: EdgeInsets.fromLTRB(30, 20, 30, 10),
                child: RaisedButton(
                  elevation: 1.0,
                  splashColor: Colors.deepPurpleAccent,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  color: Colors.deepPurple.shade50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  textColor: Colors.deepPurple,
                  child: Text(
                    'Signup',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image(
                    image: AssetImage('images/main_bottom.png'),
                    alignment: Alignment.topLeft,
                    height: 150.0,
                    width: 150,color: Colors.deepPurple
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
