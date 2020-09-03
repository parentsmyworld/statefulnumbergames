
import 'package:flutter/material.dart';
import 'package:flutter_stfulnumbergames/main.dart';
class EvenorOdd extends StatefulWidget {
  @override
  _EvenorOddState createState() => _EvenorOddState();
}

class _EvenorOddState extends State<EvenorOdd> {
  TextEditingController num=TextEditingController();
 String result="";
 int flag;
  @override
  Widget build(BuildContext context) {
    Color getColor(){
      if (flag==1)
        return Colors.green;
      else
        return Colors.red;
    }
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
              title: Center(child: Text("Even or Odd")),
            ),
            body: Container(
                  padding: EdgeInsets.all(40.0),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Color(0xfff0c27b),Color(0xff4b1248)])
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 60.0,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xfff0c27b),
                        ),
                        child: TextField(
                          controller: num,
                          decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                  prefixIcon: Icon(Icons.keyboard),
                  hintText: "Enter a Number"
                  )
                          ),
                      ),
                      SizedBox(height: 20.0,),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            int a=int.parse(num.text);
                            if (a%2==0)
                             { result="$a is even";
                              flag=1;}
                            else
                             {result="$a is odd";
                             flag=0;
                             }
                          }
                            );

                        },
                        child: Container(
                          child: Center(child: Text("Check Even or Odd")),
                          height: 60.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xfff0c27b)
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Text(result,style: TextStyle(
                        fontSize: 20.0,
                        color: getColor()
                      ),),
                      SizedBox(height: 150.0,),
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


      
    );
  }
}
