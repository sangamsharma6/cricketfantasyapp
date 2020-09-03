import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sricket/Login.dart';
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                  image: AssetImage('images/signup_top.png'),
                  height: 120,
                  width: 120,
                  alignment: Alignment.topLeft,
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(
                  'images/signup.svg',
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
                      MaterialPageRoute(builder: (context) => Login()));
                },
                color: Colors.deepPurple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                textColor: Colors.white,
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Already have an Account ?",
                    style: TextStyle(fontSize: 13.0, color: Colors.deepPurple),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Login()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 3.0),
                      child: Text(
                        "Login",
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
            Container(
              margin: EdgeInsets.only(top: 7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: SizedBox(
                        child: Divider(),
                        width: 100,
                      )),
                  Text(
                    'OR',
                    style: TextStyle(fontSize: 12.0, color: Colors.deepPurple),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 5.0),
                      child: SizedBox(
                        child: Divider(),
                        width: 100,
                      ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 4.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {},splashColor: Colors.blue,
                    child: SvgPicture.asset(
                      'images/facebook.svg',
                      width: 20,
                      height: 20,
                      color: Colors.deepPurple,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},splashColor: Colors.blue,
                    child: SvgPicture.asset(
                      'images/twitter.svg',
                      width: 20,
                      height: 20,
                      color: Colors.deepPurple,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},splashColor: Colors.red,
                    child: SvgPicture.asset(
                      'images/google-plus.svg',
                      width: 20,
                      height: 20,
                      color: Colors.deepPurple,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image(
                  image: AssetImage('images/main_bottom.png'),
                  height: 120,
                  width: 170,
                  alignment: Alignment.bottomLeft,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
