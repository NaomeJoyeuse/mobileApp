import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String output = "0";

  Widget buildButton(String buttonText, Color buttonColor) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(5.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            padding: EdgeInsets.all(20.0),
          ),
          onPressed: () {
            setState(() {
              output = buttonText;
            });
          },
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            alignment: Alignment.centerRight,
            child: Text(
              output,
              style: TextStyle(color: Colors.white, fontSize: 48.0),
            ),
          ),
          Row(
            children: [
              buildButton('7', Colors.grey.shade800),
              buildButton('8', Colors.grey.shade800),
              buildButton('9', Colors.grey.shade800),
              buildButton('/', Colors.orange),
            ],
          ),
          Row(
            children: [
              buildButton('4', Colors.grey.shade800),
              buildButton('5', Colors.grey.shade800),
              buildButton('6', Colors.grey.shade800),
              buildButton('*', Colors.orange),
            ],
          ),
          Row(
            children: [
              buildButton('1', Colors.grey.shade800),
              buildButton('2', Colors.grey.shade800),
              buildButton('3', Colors.grey.shade800),
              buildButton('-', Colors.orange),
            ],
          ),
          Row(
            children: [
              buildButton('0', Colors.grey.shade800),
              buildButton('.', Colors.grey.shade800),
              buildButton('=', Colors.red),
              buildButton('+', Colors.orange),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
