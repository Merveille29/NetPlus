import 'package:flutter/material.dart';
import 'package:netplus/pickup.dart';

int a = 0;
Widget _buildDialog(BuildContext context) {
  return new AlertDialog(
    title: const Text('Choisir une application'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        //Text("Hello"),
        SizedBox(height: 20.0,),
        Row(
          children: [
            Image.asset("img/camera.png",
            scale: 2,
            ),
            SizedBox(width: 20,),
            InkWell(
              onTap: () {
                a = 1;
              },
              child: Container(
                child: Text("Camera"),
              ),
            ),
          ],
        ),
      SizedBox(height: 20.0,),
      Row(
          children: [
            Image.asset("img/galerie.png",
            scale: 2,
            ),
            SizedBox(width: 20,),
            InkWell(
              onTap: () {
                a = 1;
              },
              child: Container(
                child: Text("Galerie"),
              ),
            ),
          ],
        ),
      ],
    ),
    actions: <Widget>[
      
    ],
  );
}

class MyCard extends StatefulWidget {
  const MyCard({ Key? key }) : super(key: key);

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: InkWell(
        onTap: () => {
          showDialog(
              context: context,
              builder: (BuildContext context) => _buildDialog(context),
            ),
        },
        child: Center (
        child: Image.asset("img/carte.jpeg"),
        ),
    ),
  );
  }
}
