import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

int a = 0;
Widget _buildPopupDialog(BuildContext context) {
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
      SizedBox(height: 20.0,),
      Row(
        children: [
          Image.asset("img/camera.png",
          scale: 2,
          ),
          SizedBox(width: 20,),
          Container(child: Text("Camera"),),
        ],
      )
      ],
    ),
    actions: <Widget>[
      
    ],
  );
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  File? file;
  ImagePicker image = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white10,
        appBar: AppBar(
          toolbarHeight: 90,
          backgroundColor: Colors.white10,
          elevation: 0,
          leading: IconButton(
              icon: Image.asset('img/net-plus.png'),
              iconSize: 400,
              onPressed: () {}),
        ),
        body: Center(
            child: ElevatedButton(
          child: Text(
            "Sélectionner un fichier",
            style: TextStyle(fontSize: 20.0),
          ),
          onPressed: () => {
            print ("OKKKKK"),
            showDialog(
              context: context,
              builder: (BuildContext context) => _buildPopupDialog(context),
            )
          },
          style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(255, 11, 9, 119),
            onPrimary: Colors.white,
            fixedSize: Size(280, 45),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ), 
        )
        ),

      ),
    );
  }

 getcam() async {
    // ignore: deprecated_member_use
    var img = await image.getImage(source: ImageSource.camera);
    setState(() {
      file = File(img!.path);
    });
  }

  getgall() async {
    // ignore: deprecated_member_use
    var img = await image.getImage(source: ImageSource.gallery);
    setState(() {
      file = File(img!.path);
    });
  }
}