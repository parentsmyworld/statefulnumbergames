import 'package:flutter/material.dart';
import 'package:flutter_stfulnumbergames/main.dart';

class CounterApp extends StatefulWidget {
  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter=0;
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
          title: Center(
            child:Text("Counter"),
          )
        ),
        body:SizedBox.expand(
          child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xfff0c27b),Color(0xff4b1248)])
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 60.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xfff0c27b)
                          ),
                          child: Center(
                            child: Text(_counter.toString(),
                            style: TextStyle(
                              fontSize: 20.0,
                              backgroundColor: Color(0xfff0c27b)
                            ),),
                          ),
                        ),
                        SizedBox(height: 30.0,),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              _counter++;
                            });
                          },
                          child: Container(
                            child: Center(child: Text("+",style: TextStyle(
                              fontSize: 30.0,
                            ),)),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Color(0xfff0c27b)
                            ),
                            height: 60.0,
                            width: 200.0,
                          ),
                        ),
                        SizedBox(height: 30.0,),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              _counter--;
                            });
                          },
                          child: Container(
                            child: Center(child: Text("-",style: TextStyle(
                              fontSize: 40.0
                            ),)),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Color(0xfff0c27b)
                            ),
                            height: 60.0,
                            width: 200.0,
                          ),
                        ),
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
                  ),
                ),
          ),
        ),
        

    );
  }
}
