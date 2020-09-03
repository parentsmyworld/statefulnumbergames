import 'package:flutter/material.dart';
import 'package:flutter_stfulnumbergames/main.dart';

class LarSmall extends StatefulWidget {
  @override
  _LarSmallState createState() => _LarSmallState();
}

class _LarSmallState extends State<LarSmall> {
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
  TextEditingController num3=TextEditingController();
  String result="";
  String re="";
  //int flag;

  @override
  Widget build(BuildContext context) {
//    Color getColor(){
//      if(flag==1)
//        return Colors.green;
//      else
//        return Colors.red;
//    }
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
            title: Center(
              child:Text("Largest and Smallest"),
            )
        ),
        body: SizedBox.expand(
            child: Container(
              padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xfff0c27b),Color(0xff4b1248)])
                ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xfff0c27b),
                    ),
                    child: TextField(
                        controller: num1,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            prefixIcon: Icon(Icons.keyboard),
                            hintText: "Enter 1st Number"
                        )
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xfff0c27b),
                    ),
                    child: TextField(
                      controller: num2,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            prefixIcon: Icon(Icons.keyboard),
                            hintText: "Enter 2nd Number"
                        )
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xfff0c27b),
                    ),
                    child: TextField(
                      controller: num3,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            prefixIcon: Icon(Icons.keyboard),
                            hintText: "Enter 3rd Number"
                        )
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        var a=int.parse(num1.text);
                        var b=int.parse(num2.text);
                        var c=int.parse(num3.text);
                        if (a>b)
                          if (a>c) {
                            result="$a is largest";}
                          else {
                            result="$c is Largest";
                          }
                        else if (b>c){
                          result="$b is largest";
                        }
                        else
                          result="$c is largest";
                        //flag=1;
                      });
                    },
                    child: Container(
                      child: Center(child: Text("Find the Largest")),
                      height: 60.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xfff0c27b)
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        var a=int.parse(num1.text);
                        var b=int.parse(num2.text);
                        var c=int.parse(num3.text);
                        if (a<b)
                          if (a<c) {
                            re="$a is Smallest";}
                          else {
                            re="$c is Smallest";
                          }
                        else if (b<c){
                          re="$b is Smallest";
                        }
                        else
                          re="$c is Smallest";
                        //flag=0;
                      });
                    },
                    child: Container(
                      child: Center(child: Text("Find the Smallest")),
                      height: 60.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xfff0c27b)
                      ),
                    ),
                  ),
                 SizedBox(height: 15.0,),
Text(result,style: TextStyle(
  color: Colors.green
),),
                  SizedBox(height: 15.0,),
Text(re,style: TextStyle(
  color: Colors.red
),),
//                  Text(result,style: TextStyle(
//                    color: getColor(),
//                    fontSize: 20.0
//                  ),),
                  SizedBox(height: 15.0,),
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    iconSize: 30.0,
                    color: Colors.black,
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyApp()));
                    },
                  )

                ],
              ),
            )),
      ),
    );
  }
}
