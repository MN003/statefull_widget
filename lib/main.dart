import 'package:flutter/material.dart';

void main(){
  runApp(MyApp1());
}

class MyApp1 extends StatefulWidget {
  const MyApp1({Key? key}) : super(key: key);

  @override
  State<MyApp1> createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> {
  int number = 1;
  int number2 = 2;
  int number3 = 3;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("StateFul Widget"),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column( crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Text('$number'),
                  color: Colors.blue,
                  padding: EdgeInsets.all(20),
                ),
                Container(
                  child: Text('$number2'),
                  color: Colors.blue,
                  padding: EdgeInsets.all(30),
                ),
                Container(
                  child: Text('$number3'),
                  color: Colors.blue,
                  padding: EdgeInsets.all(40),
                ),
              ],
            ),
            VerticalDivider(
              width: 10,
              color: Colors.black,
              thickness: 3,
            ),
            Column( crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Text('$number'),
                  color: Colors.cyan,
                  padding: EdgeInsets.all(20),
                ),
                Container(
                  child: Text('$number2'),
                  color: Colors.cyan,
                  padding: EdgeInsets.all(30),
                ),
                Container(
                  child: Text('$number3'),
                  color: Colors.cyan,
                  padding: EdgeInsets.all(40),
                )
              ],
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              number++;
              number2+=2;
              number3+=3;
            });

          },
          child: Text("Click"),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      ),
    );
  }
}