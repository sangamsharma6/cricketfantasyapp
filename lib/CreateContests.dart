import 'package:flutter/material.dart';
class CreateContests extends StatefulWidget {
  @override
  _CreateContestsState createState() => _CreateContestsState();
}

class _CreateContestsState extends State<CreateContests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Make Your Own Contests',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),

      ),
      body: Container(margin: EdgeInsets.only(top: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Give Your Contest name',border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),borderSide: BorderSide(
                    color: Colors.deepPurple,style: BorderStyle.solid
                  )
                  ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Total Winning Amounts',border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),borderSide: BorderSide(
                    color: Colors.deepPurple,style: BorderStyle.solid
                  )
                  ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Contest Size',border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),borderSide: BorderSide(
                    color: Colors.deepPurple,style: BorderStyle.solid
                  )
                  ),
                  ),
                ),
              ),
              Center(
                child: RaisedButton(onPressed: (){},child: Text('Create Contest',style: TextStyle(color: Colors.white),),color: Colors.deepPurple,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
