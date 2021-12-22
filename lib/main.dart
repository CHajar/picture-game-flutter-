import 'package:flutter/material.dart';
import "dart:math";

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: Colors.indigo[800],
        title: Text("picture match"),
      ),
      body: ImagePage (

      ),
    ),
  ));
}

class ImagePage extends StatefulWidget {
  const ImagePage({ Key? key }) : super(key: key);

  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftImageNumber = 1 ;
  int rightImageNumber = 2;

  void changeImage () {
    leftImageNumber = Random().nextInt(8) + 1 ;
    rightImageNumber = Random().nextInt(8)+1 ;
  }

  @override
  Widget build(BuildContext context) {
    return Column( 
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftImageNumber == rightImageNumber ? 'WOW , You Win!' : "Try again" ,
          style: TextStyle(
          color: Colors.white,
          fontSize: 42.0,
        ),),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [ 
              Expanded(
                 child: TextButton(
                   onPressed: () {
                     setState(() {
                       changeImage ();
                     });
                   },
                 child: Image.asset("images/image-$leftImageNumber.png"),
                 ),
              ),
              Expanded(
                 child: TextButton(
                   onPressed: () {
                     setState(() {
                       changeImage ();
                     });
                   },
                   child: Image.asset("images/image-$rightImageNumber.png"),),
              ),
            ],
          ),
        )
      ],
      
    );
  }
}

