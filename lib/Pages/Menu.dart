import 'package:flutter/material.dart';
import 'package:flutter_stfulnumbergames/Pages/Divisibilityby8.dart';
import 'package:flutter_stfulnumbergames/Pages/LarSmall.dart';
import 'package:flutter_stfulnumbergames/Pages/counter.dart';
import 'package:flutter_stfulnumbergames/Pages/evenorodd.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xfff0c27b),Color(0xff4b1248)])
      ),
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 40.0,),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CounterApp()));
              },
              child: Container(
                child: Center(child: Text("Counter App", style: TextStyle(
                  fontSize: 15.0,
                ),),),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xfff0c27b),
                ),
                height: 80.0,
                width: 200.0,
              ),
            ),
            SizedBox(height: 20.0,),
            GestureDetector(
              onTap: (){

              },
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EvenorOdd()));
                },
                child: Container(
                  child: Center(child: Text("Even or Odd", style: TextStyle(
                    fontSize: 15.0,
                  ),),),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xfff0c27b),
                  ),
                  height: 80.0,
                  width: 200.0,
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Div()));
              },
              child: Container(
                child: Center(child: Text("Divisibility by 8", style: TextStyle(
                  fontSize: 15.0,
                ),),),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xfff0c27b),
                ),
                height: 80.0,
                width: 200.0,
              ),
            ),
            SizedBox(height: 20.0,),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LarSmall()));
              },
              child: Container(
                child: Center(child: Text("Find the Largest and Smallest", style: TextStyle(
                  fontSize: 15.0,
                ),),),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xfff0c27b),
                ),
                height: 80.0,
                width: 200.0,
              ),
            ),
//            SizedBox(height: 20.0,),
//            GestureDetector(
//              onTap: (){
//
//              },
//              child: Container(
//                child: Center(child: Text("Find the Smallest", style: TextStyle(
//                  fontSize: 15.0,
//                ),),),
//                decoration: BoxDecoration(
//                  borderRadius: BorderRadius.circular(10.0),
//                  color: Color(0xfff0c27b),
//                ),
//                height: 80.0,
//                width: 200.0,
//              ),
//            ),

          ],
        ),
      ),
    );
  }
}
