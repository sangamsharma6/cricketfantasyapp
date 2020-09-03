import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:sricket/CreateContests.dart';
import 'package:sricket/CreateTeam.dart';

class Contests extends StatefulWidget {
  @override
  _ContestsState createState() => _ContestsState();
}

class _ContestsState extends State<Contests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          'Contests',
          style: TextStyle(fontWeight: FontWeight.w100, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 5.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  width: 10.0,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://i.pinimg.com/236x/c6/49/29/c64929cffcde015419bed7774fb651ac.jpg'),
                  maxRadius: 10,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  'SA',
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  'vs',
                  style: TextStyle(color: Colors.deepPurple, fontSize: 10.0),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  'Ind',
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5.0,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://i.pinimg.com/236x/89/c5/9a/89c59a4ebacae6741ae57f529231f908.jpg'),
                  maxRadius: 10,
                ),
                Spacer(),
                Text(
                  '20 Sep 2020',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0),
                ),
                SizedBox(
                  width: 10.0,
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 15.0,
                ),
                OutlineButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  color: Colors.deepPurple,
                  onPressed: (){
                    return showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Join Contest'),
                            content: TextField(

                              textInputAction: TextInputAction.go,
                              keyboardType: TextInputType.numberWithOptions(),
                              decoration: InputDecoration(hintText: "Enter Contest  number"),
                            ),
                            actions: <Widget>[
                              new FlatButton(
                                child: new Text('Submit'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              )
                            ],
                          );
                        });
                  },
                  child: Text(
                    'Join Contest',
                    style: TextStyle(
                        color: Colors.deepPurple, fontWeight: FontWeight.bold),
                  ),
                ),
                OutlineButton(
                  onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateContests())),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                  color: Colors.deepPurple,
                  child: Text(
                    'Create Contest',
                    style: TextStyle(
                        color: Colors.deepPurple, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
              ],
            ),
            Divider(),
            Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, int index) {
                      return GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context){
                              return AlertDialog(content: Container(
                                width: 100,
                                height: 100,
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        SizedBox(width: 15.0,),
                                        Text('Entry Fees',style: TextStyle(
                                          color: Colors.black,fontWeight: FontWeight.bold
                                        ),),
                                        Spacer(),
                                        Text('Rs. 100'),
                                        SizedBox(width: 15.0,),

                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        SizedBox(width: 15.0,),
                                        Text('Confirmation Fees',style: TextStyle(
                                            color: Colors.black,fontWeight: FontWeight.bold
                                        ),),
                                        Spacer(),
                                        Text('200'),
                                        SizedBox(width: 15.0,),


                                      ],
                                    ),
                                    Center(
                                      child: RaisedButton(onPressed: (){},shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25.0),
                                      ),child: Text('Confirm'),),
                                    )
                                  ],
                                ),
                              ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(22.0)
                                ),
                              );
                            }
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  'Prize Pool',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14.0),
                                ),
                                Spacer(),
                                Text(
                                  'Winners',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14.0),
                                ),
                                Spacer(),
                                Text(
                                  'Entry',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14.0),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    '₹ 1000',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16.0),
                                  ),
                                  Spacer(),
                                  Text(
                                    '1',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16.0),
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 30.0,
                                    child: RaisedButton(
                                      color: Colors.deepPurple,
                                      onPressed: () {},
                                      child: Text(
                                        '₹ 100',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  LinearPercentIndicator(
                                    width: 140.0,
                                    lineHeight: 10.0,
                                    percent: .5,
                                    backgroundColor: Colors.deepPurple.shade50,
                                    progressColor: Colors.deepPurple,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    '2 Spots left',
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontStyle: FontStyle.italic,
                                        fontSize: 15.0),
                                  )
                                ],
                              ),
                            ),
                            Divider()
                          ],
                        ),
                      );
                    }))
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 150.0,
        height: 40.0,
        child: FloatingActionButton(
          backgroundColor: Colors.deepPurple,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CreateTeam()));
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.0)),
          child: Text(
            'Create Team',
            style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
