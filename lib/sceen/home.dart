import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KMUTNB'),
      ),
     body: Container(
       color: Colors.pinkAccent[200],
       alignment: Alignment.center,
       child: Stack(
         children: [
          Text(
            "55555",
            style: TextStyle(
            fontSize: 48,
            color: Colors.blue,
            fontStyle: FontStyle.italic,
          ),
          ),
          Text(
            "Data 2",),
          Text("Data 3"),
         ],
       ),
     ),
    );
  }
}