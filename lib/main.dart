import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MaterialApp(
    home: Scaffold(


        appBar: AppBar(title: Text('تطابق الصور'),),
      body: ImagePage(),
    ),
  ));
}
class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  var leftimage = 1;
  var Rightimage = 2;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: leftimage == Rightimage ? Colors.greenAccent :
      Colors.redAccent,

      child: Column(
        children: [
          SizedBox(height: 200,),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Text(
                leftimage == Rightimage ? 'You WON!! :D' :
                ':(' , style: TextStyle(fontSize: 60 , color: Colors.white)),
          ),
          SizedBox(height: 100,),
          Row(
            children: [
              Expanded(child: Padding(
                padding: const EdgeInsets.all(20),
                child: TextButton(
                    onPressed: (){
                      setState(() {
                        leftimage = Random().nextInt(9) +1;
                        Rightimage = Random().nextInt(9) +1;
                      });
                    },
                    child: Image(image: AssetImage('images/image-$leftimage.png'),)),
              )),
              Expanded(child: Padding(
                padding: const EdgeInsets.all(20),
                child: TextButton(
                    onPressed: (){
                      setState(() {
                        leftimage = Random().nextInt(9) +1;
                        Rightimage = Random().nextInt(9) +1;
                      });
                    },
                    child: Image(image: AssetImage('images/image-$Rightimage.png'),)),
              )),
            ],
          )
        ],
      ),
    );
  }
}