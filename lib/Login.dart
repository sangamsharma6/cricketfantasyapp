import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sricket/Dashboard.dart';
import 'package:sricket/SignUp.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image(
                  image: AssetImage('images/main_top.png'),
                  height: 120,
                  width: 120,
                  color: Colors.deepPurple,
                  alignment: Alignment.topLeft,
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(
                  'images/login.svg',
                  width: 190,
                  height: 190,

                )
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 20, 30, 0),
              height: 45,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  filled: true,
                  fillColor: Colors.deepPurple.shade50,
                  contentPadding: EdgeInsets.all(8.0),
                  hintStyle:
                  TextStyle(color: Colors.deepPurple, fontSize: 14.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide.none),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.deepPurple,
                    size: 20.0,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 20, 30, 0),
              height: 45,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: isSelected
                      ? Icon(
                    Icons.visibility,
                    color: Colors.deepPurple,
                    size: 20.0,
                  )
                      : Icon(
                    Icons.visibility_off,
                    color: Colors.deepPurple,
                    size: 20.0,
                  ),
                  filled: true,
                  fillColor: Colors.deepPurple.shade50,
                  contentPadding: EdgeInsets.all(8.0),
                  hintStyle:
                  TextStyle(color: Colors.deepPurple, fontSize: 14.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide.none),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.deepPurple,
                    size: 20.0,
                  ),
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              height: 45.0,
              margin: EdgeInsets.fromLTRB(30, 15, 30, 0),
              child: RaisedButton(
                splashColor: Colors.deepPurpleAccent,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DashBoard()));
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
              margin: EdgeInsets.only(top: 30.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Don't Registered Yet?",
                    style: TextStyle(fontSize: 13.0, color: Colors.deepPurple),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 3.0),
                      child: Text(
                        "SignUp",
                        style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Image(
                  image: AssetImage('images/login_bottom.png'),
                  height: 120,
                  width: 120,color: Colors.deepPurple,
                  alignment: Alignment.bottomRight,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
