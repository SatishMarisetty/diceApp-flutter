import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: TextButton(
                  child: Image(image: AssetImage('images/dice-six-faces-one.png')),
                  onPressed: (){
                    print("Hello");
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Image(image: AssetImage('images/dice-six-faces-two.png')),
                  onPressed: (){
                    print("Hi");
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
