import 'package:flutter/material.dart';

class Four extends StatefulWidget {
  @override
  _FourState createState() => _FourState();
}

class _FourState extends State<Four> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          'Settings', style: TextStyle(color: Colors.white, fontSize: 16.0),),
      ),
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Invite Friends', style: TextStyle(color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios, size: 20.0, color: Colors.grey,),
                  SizedBox(width: 10.0,)

                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Contest invite code', style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios, size: 20.0, color: Colors.grey,),
                  SizedBox(width: 10.0,)

                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('KYC', style: TextStyle(color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),),
                  SizedBox(width: 10.0,),
                  CircleAvatar(backgroundColor: Colors.green.shade50,
                    child: Icon(Icons.check, color: Colors.green,size: 13,),maxRadius: 13
                  )
,
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios, size: 20.0, color: Colors.grey,),
                  SizedBox(width: 10.0,)

                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Fantasy points System', style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios, size: 20.0, color: Colors.grey,),
                  SizedBox(width: 10.0,)

                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('How to Play', style: TextStyle(color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios, size: 20.0, color: Colors.grey,),
                  SizedBox(width: 10.0,)

                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('About us', style: TextStyle(color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios, size: 20.0, color: Colors.grey,),
                  SizedBox(width: 10.0,)

                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Legality', style: TextStyle(color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios, size: 20.0, color: Colors.grey,),
                  SizedBox(width: 10.0,)

                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Terms and Conditions', style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios, size: 20.0, color: Colors.grey,),
                  SizedBox(width: 10.0,)

                ],
              ),
            ),
            Divider(),

          ],
        ),
      ),
    );
  }
}
