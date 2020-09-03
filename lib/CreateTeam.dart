import 'package:flutter/material.dart';
import 'package:sricket/Continue.dart';
import 'package:sricket/TeamPreview.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:chips_choice/chips_choice.dart';

class CreateTeam extends StatefulWidget {
  @override
  _CreateTeamState createState() => _CreateTeamState();
}

class _CreateTeamState extends State<CreateTeam> {
  int tag = 0;
  List<String> options = ['Wicketkeeper', 'Batsmen', 'Bowler', 'AllRounder'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          title: Column(
            children: <Widget>[
              Text(
                'Monday 20 Sep 2020',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 14.0),
              ),
              Text(
                'Max 7 Players From a Team',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 12.0),
              ),
            ],
          )),
      body: Container(
        margin: EdgeInsets.only(top: 10.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Players',
                  style: TextStyle(fontSize: 10.0, color: Colors.grey),
                ),
                Spacer(),
                Text(
                  'Credits Lefts',
                  style: TextStyle(fontSize: 10.0, color: Colors.grey),
                ),
                SizedBox(
                  width: 10.0,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  '1',
                  style: TextStyle(fontSize: 10.0, color: Colors.grey),
                ),
                Text(
                  '/10',
                  style: TextStyle(fontSize: 16.0, color: Colors.black),
                ),
                Spacer(),
                Text(
                  'SA',
                  style: TextStyle(
                      color: Colors.deepPurple, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 2.0,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://i.pinimg.com/236x/c6/49/29/c64929cffcde015419bed7774fb651ac.jpg'),
                  maxRadius: 15.0,
                ),
                SizedBox(
                  width: 10.0,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://i.pinimg.com/236x/89/c5/9a/89c59a4ebacae6741ae57f529231f908.jpg'),
                  maxRadius: 15.0,
                ),
                SizedBox(
                  width: 2.0,
                ),
                Text(
                  'Ind',
                  style: TextStyle(
                      color: Colors.deepPurple, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  '100',
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10.0,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 20, 30, 10),
              child: StepProgressIndicator(
                totalSteps: 11,
                selectedSize: 10.0,
                unselectedSize: 10.0,
                currentStep: 1,
                selectedColor: Colors.deepPurple,
                unselectedColor: Colors.deepPurple.shade50,
              ),
            ),
            Divider(),
            Container(
              child: ChipsChoice<int>.single(
                value: tag,
                options: ChipsChoiceOption.listFrom<int, String>(
                  source: options,
                  value: (i, v) => i,
                  label: (i, v) => v,
                ),
                onChanged: (val) => setState(() {
                  tag = val;
                  /*  ui(context,tag);*/
                }),
              ),
            ),
            Container(
              child: ui(context, tag),
            )
          ],
        ),
      ),
      floatingActionButton: getFab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget ui(BuildContext context, int tag) {
    Widget child;
    if (tag == 0) {
      child = Container(
          child: Column(
        children: <Widget>[
          Container(
            width: double.maxFinite,
            color: Colors.deepPurple.shade50,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Pick Your Wicket Keeper',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Row(
              children: <Widget>[
                Spacer(),
                Text(
                  'Players',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                      color: Colors.black),
                ),
                Spacer(),
                Text(
                  'Point',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                      color: Colors.black),
                ),
                Spacer(),
                Text(
                  'Credits',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                      color: Colors.black),
                ),
                Spacer()
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10.0,
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/236x/9c/8d/0d/9c8d0dddbba94f6ec2263beccff43304.jpg'),
                      maxRadius: 15,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Ms dhoni',
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Wk. India',
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text('20'),
                    Spacer(),
                    Text('10.0'),
                    Spacer(),
                    Icon(Icons.add),
                    SizedBox(
                      width: 10.0,
                    )
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10.0,
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/236x/d4/81/d8/d481d8cc8254a1d7ae0f7872bbfbcc86.jpg'),
                      maxRadius: 15,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'De Kock',
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Wk. India',
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text('20'),
                    Spacer(),
                    Text('10.0'),
                    Spacer(),
                    Icon(Icons.add),
                    SizedBox(
                      width: 10.0,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ));
    } else if (tag == 1) {
      child = Container(
        child: Column(
          children: <Widget>[
            Container(
              width: double.maxFinite,
              color: Colors.deepPurple.shade50,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Pick Your Wicket Keeper',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Row(
                children: <Widget>[
                  Spacer(),
                  Text(
                    'Players',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        color: Colors.black),
                  ),
                  Spacer(),
                  Text(
                    'Point',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        color: Colors.black),
                  ),
                  Spacer(),
                  Text(
                    'Credits',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        color: Colors.black),
                  ),
                  Spacer()
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10.0,
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/236x/9c/8d/0d/9c8d0dddbba94f6ec2263beccff43304.jpg'),
                        maxRadius: 15,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            'Ms dhoni',
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Wk. India',
                            style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      Spacer(),
                      Text('20'),
                      Spacer(),
                      Text('10.0'),
                      Spacer(),
                      Icon(Icons.add),
                      SizedBox(
                        width: 10.0,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10.0,
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/236x/d4/81/d8/d481d8cc8254a1d7ae0f7872bbfbcc86.jpg'),
                        maxRadius: 15,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            'De Kock',
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Wk. India',
                            style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      Spacer(),
                      Text('20'),
                      Spacer(),
                      Text('10.0'),
                      Spacer(),
                      Icon(Icons.add),
                      SizedBox(
                        width: 10.0,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10.0,
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/236x/d4/81/d8/d481d8cc8254a1d7ae0f7872bbfbcc86.jpg'),
                        maxRadius: 15,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            'De Kock',
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Wk. India',
                            style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      Spacer(),
                      Text('20'),
                      Spacer(),
                      Text('10.0'),
                      Spacer(),
                      Icon(Icons.add),
                      SizedBox(
                        width: 10.0,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );
    } else if (tag == 2) {
      child = Container(
        child: Column(
          children: <Widget>[
            Container(
              width: double.maxFinite,
              color: Colors.deepPurple.shade50,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Pick Your Wicket Keeper',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Row(
                children: <Widget>[
                  Spacer(),
                  Text(
                    'Players',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        color: Colors.black),
                  ),
                  Spacer(),
                  Text(
                    'Point',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        color: Colors.black),
                  ),
                  Spacer(),
                  Text(
                    'Credits',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        color: Colors.black),
                  ),
                  Spacer()
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10.0,
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/236x/9c/8d/0d/9c8d0dddbba94f6ec2263beccff43304.jpg'),
                        maxRadius: 15,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            'Ms dhoni',
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Wk. India',
                            style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      Spacer(),
                      Text('20'),
                      Spacer(),
                      Text('10.0'),
                      Spacer(),
                      Icon(Icons.add),
                      SizedBox(
                        width: 10.0,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10.0,
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/236x/d4/81/d8/d481d8cc8254a1d7ae0f7872bbfbcc86.jpg'),
                        maxRadius: 15,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            'De Kock',
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Wk. India',
                            style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      Spacer(),
                      Text('20'),
                      Spacer(),
                      Text('10.0'),
                      Spacer(),
                      Icon(Icons.add),
                      SizedBox(
                        width: 10.0,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );
    } else if (tag == 3) {
      child = Container(
          child: Column(
        children: <Widget>[
          Container(
            width: double.maxFinite,
            color: Colors.deepPurple.shade50,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Pick Your Wicket Keeper',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Row(
              children: <Widget>[
                Spacer(),
                Text(
                  'Players',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                      color: Colors.black),
                ),
                Spacer(),
                Text(
                  'Point',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                      color: Colors.black),
                ),
                Spacer(),
                Text(
                  'Credits',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                      color: Colors.black),
                ),
                Spacer()
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10.0,
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/236x/99/6b/08/996b082c509b76a36899dafc8cbc02fe.jpg'),
                      maxRadius: 15,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Hardik',
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'AllR. India',
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text('20'),
                    Spacer(),
                    Text('10.0'),
                    Spacer(),
                    Icon(Icons.add),
                    SizedBox(
                      width: 10.0,
                    )
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10.0,
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/236x/d4/81/d8/d481d8cc8254a1d7ae0f7872bbfbcc86.jpg'),
                      maxRadius: 15,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'De Kock',
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Wk. India',
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text('20'),
                    Spacer(),
                    Text('10.0'),
                    Spacer(),
                    Icon(Icons.add),
                    SizedBox(
                      width: 10.0,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ));
    }
    return Container(
      child: child,
    );
  }

  Widget getFab() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[Spacer(),
        OutlineButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>TeamPreview()));
          },
          color: Colors.deepPurple,
          child: Text(
            'Team Preview',
            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        ),
        SizedBox(width: 15.0,),
        RaisedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Continue()));
          },
          color: Colors.deepPurple,
          child: Text(
            'Continue',
            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        ),Spacer(),
      ],
    );
  }
}
