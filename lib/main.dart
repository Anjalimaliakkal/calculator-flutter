import 'package:flutter/material.dart';
import 'pages/addition.dart';
import 'pages/subtraction.dart';
import 'pages/multiplication.dart';
import 'pages/division.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainMenu(),
    );
  }
}

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator Menu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('Addition'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AdditionScreen()),
                );
              },
            ),
            ElevatedButton(
              child: Text('Subtraction'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SubtractionScreen()),
                );
              },
            ),
            ElevatedButton(
              child: Text('Multiplication'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MultiplicationScreen()),
                );
              },
            ),
            ElevatedButton(
              child: Text('Division'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DivisionScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
