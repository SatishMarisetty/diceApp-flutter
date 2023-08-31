import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var dice=['one','two','three','four','five','six'];
  int i=0,j=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dice App'),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  child: Image(image: AssetImage('images/dice-six-faces-${dice[i]}.png')),
                  onPressed: (){
                    setState(() {
                      i=Random().nextInt(6);
                    });
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Image(image: AssetImage('images/dice-six-faces-${dice[j]}.png')),
                  onPressed: (){
                    setState(() {
                      j=Random().nextInt(6);
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}