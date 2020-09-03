import 'package:flutter/material.dart';

class Continue extends StatefulWidget {
  @override
  _ContinueState createState() => _ContinueState();
}

class _ContinueState extends State<Continue> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(top: 0,bottom: 0,right: 0,left: 0,child: Image(image: NetworkImage('https://i.pinimg.com/236x/78/9e/51/789e510b82cd4d2ddb56bc3d2510fc83.jpg'),fit: BoxFit.fill,)),
          Positioned(left: 50,right: 50,top: 50,child: Column(
            children: [
              CircleAvatar(backgroundImage: NetworkImage('https://i.pinimg.com/236x/65/5e/51/655e511e0e64c3d99c154d48c7b3d761.jpg'),maxRadius: 25,),
              Text('Ms Dhoni',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 14.0),),
              Text('15 Crore',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 12.0),)
            ],
          )),
          Positioned(left: 30,top: 150,child: Column(
            children: [
              CircleAvatar(backgroundImage: NetworkImage('https://i.pinimg.com/236x/23/82/84/238284158d5fa309da46660dfb6af26e.jpg'),maxRadius: 25,),
              Text('Virat Kohli',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 14.0),),
              Text('15 Crore',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 12.0),)
            ],
          )),
          Positioned(left: 150,top: 150,child: Column(
            children: [
              CircleAvatar(backgroundImage: NetworkImage('https://i.pinimg.com/236x/e3/36/95/e336952d9429e1da5c3967a38b4fcad2.jpg'),maxRadius: 25,),
              Text('Faf',style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold,fontSize: 14.0),),
              Text('15 Crore',style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold,fontSize: 12.0),)
            ],
          )),
          Positioned(right: 30,top: 150,child: Column(
            children: [
              CircleAvatar(backgroundImage: NetworkImage('https://i.pinimg.com/236x/e1/90/3e/e1903e5b71b66499f27dbcb358ab0308.jpg'),maxRadius: 25,),
              Text('Rohit ',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 14.0,),),
              Text('15 Crore',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 12.0),)
            ],
          )),
          Positioned(left: 30,top: 250,child: Column(
            children: [
              CircleAvatar(backgroundImage: NetworkImage('https://i.pinimg.com/236x/ce/80/7c/ce807c85042bf6a1509a555355f636a4.jpg'),maxRadius: 25,),
              Text('JP',style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold,fontSize: 14.0,),),
              Text('15 Crore',style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold,fontSize: 12.0),)
            ],
          )),

          Positioned(right: 100,top: 250,child: Column(
            children: [
              CircleAvatar(backgroundImage: NetworkImage('https://i.pinimg.com/236x/60/4c/91/604c9160afd7de91db6d921f469ba387.jpg'),maxRadius: 25,),
              Text('Hardik',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 14.0,),),
              Text('15 Crore',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 12.0),)
            ],
          )),
          Positioned(left: 120,top: 250,child: Column(
            children: [
              CircleAvatar(backgroundImage: NetworkImage('https://i.pinimg.com/236x/6d/34/ad/6d34ad90f6d4546edcdf4dddef5173dc.jpg'),maxRadius: 25,),
              Text('Miller',style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold,fontSize: 14.0,),),
              Text('15 Crore',style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold,fontSize: 12.0),)
            ],
          )),
          Positioned(right: 30,top: 250,child: Column(
            children: [
              CircleAvatar(backgroundImage: NetworkImage('https://i.pinimg.com/236x/78/96/30/789630022d7ebfec7c8410af2d961366.jpg'),maxRadius: 25,),
              Text('Jaddu',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 14.0,),),
              Text('15 Crore',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 12.0),)
            ],
          )),
          Positioned(left: 30,top: 350,child: Column(
            children: [
              CircleAvatar(backgroundImage: NetworkImage('https://i.pinimg.com/236x/16/49/d4/1649d4bdc1cc53ceead038a3658911eb.jpg'),maxRadius: 25,),
              Text('Bhuvi',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 14.0),),
              Text('15 Crore',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 12.0),)
            ],
          )),
          Positioned(left: 150,top: 350,child: Column(
            children: [
              CircleAvatar(backgroundImage: NetworkImage('https://i.pinimg.com/236x/e7/b3/b9/e7b3b9620829d0740bcee23def8df0e6.jpg'),maxRadius: 25,),
              Text('Bumrah',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 14.0),),
              Text('15 Crore',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 12.0),)
            ],
          )),
          Positioned(right: 30,top: 350,child: Column(
            children: [
              CircleAvatar(backgroundImage: NetworkImage('https://i.pinimg.com/236x/ba/46/44/ba4644760147c1cde7add04d7d9da0df.jpg'),maxRadius: 25,),
              Text('Morkel',style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold,fontSize: 14.0,),),
              Text('15 Crore',style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold,fontSize: 12.0),)
            ],
          )),

          Positioned(top: 450,left: 150,child: FloatingActionButton(
            onPressed: ()=>Navigator.pop(context),
            child: Icon(Icons.forward,color: Colors.white,),backgroundColor: Colors.deepPurple,
          ))
        ],
      ),
    );
  }
}
