import 'package:flutter/material.dart';

class Two extends StatefulWidget {
  @override
  _TwoState createState() => _TwoState();
}

class _TwoState extends State<Two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'History',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0),
        ),
      ),
      body: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [Text('₹',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold,color: Colors.black),), Text('50',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold,color: Colors.black)), Spacer(), Text("Completed",style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold,color: Colors.black))],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('Transcation id:',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold,color: Colors.black)),SizedBox(width: 3.0,),
                    Text('JV2227238657'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('Transcation date:',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold,color: Colors.black)),SizedBox(width: 3.0,),
                    Text('21 august 2020'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('Contest name:',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold,color: Colors.black)),
                    SizedBox(width: 3.0,),
                    Text('Flutter'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
