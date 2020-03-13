import 'package:flutter/material.dart';

class SecondTab extends StatefulWidget {
  @override
  _SecondTabState createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> {
  @override
  int _rand_number1 = 0;
  int _rand_number2 = 0;

  void _numberrand() {
    setState(() {
      _rand_number1++;
      _rand_number2++;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        child: Center(
          child: Column(
            // center the children
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      '$_rand_number1',
                      style: TextStyle(color: Colors.white,fontSize: 45),
                    ),
                  ),
                  Text(
                    '$_rand_number2',
                    style: TextStyle(color: Colors.white,fontSize: 45),
                  ),
                ],
              ),
              FlatButton(
                  child: Text('New button'),
                  color: Colors.redAccent,
                  onPressed: _numberrand)
            ],
          ),
        ),
      ),
    );
  }
}
