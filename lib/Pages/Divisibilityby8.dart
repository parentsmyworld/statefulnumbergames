import 'package:flutter/material.dart';
import 'package:flutter_stfulnumbergames/main.dart';

class Div extends StatefulWidget {
  @override
  _DivState createState() => _DivState();
}

class _DivState extends State<Div> {
  TextEditingController num=TextEditingController();
  String result="";
  int flag;
  @override
  Widget build(BuildContext context) {
    Color getColor(){
      if(flag==1)
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
            title: Center(
              child:Text("Divisibility by 8"),
            )
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
            )
          ),
              SizedBox(height: 20.0,),
          GestureDetector(
            onTap: (){
              setState(() {
                var x=int.parse(num.text);
                if (x%8==0)
                  {result="$x is divisible by 8";
                  flag=1;}
                else
                  {result="$x is not divisible by 8";
                  flag=0;

                  }
              });
            },
            child: Container(
                    child: Center(child: Text("Check divisibility")),
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
            ]
        ),
      ),)
    );
  }
}
