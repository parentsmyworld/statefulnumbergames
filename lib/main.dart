import 'package:flutter/material.dart';
import 'package:flutter_stfulnumbergames/Pages/Menu.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [Color(0xfff0c27b),Color(0xff4b1248)])
            ),
          ),
          title: Center(child: Text("NUMBER GAMES",style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,

          ),)),
        ),
        body: Menu(),
      ),
    );
  }
}
