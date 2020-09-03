import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sricket/Contests.dart';

class One extends StatefulWidget {
  @override
  _OneState createState() => _OneState();
}

class _OneState extends State<One> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepPurple,
        title: Text('Fantasy Cricket',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16.0)),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              image: NetworkImage(
                  'https://i.pinimg.com/236x/3b/a8/b0/3ba8b0ccf31a79fe3e1e15087eeb0afd.jpg'),
              height: 150,
              width: double.maxFinite,
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Contests()));
                    },
                    child: Container(
                      height: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('Icc World Cup 2020'),
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 20.0,
                              ),
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://i.pinimg.com/236x/c6/49/29/c64929cffcde015419bed7774fb651ac.jpg'),
                                maxRadius: 20.0,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                'SA',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Text(
                                'vs',
                                style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Text(
                                'IND',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://i.pinimg.com/236x/89/c5/9a/89c59a4ebacae6741ae57f529231f908.jpg'),
                                maxRadius: 20.0,
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                            ],
                          ),
                          Text(
                            '29 Sep 2020',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Divider(
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
