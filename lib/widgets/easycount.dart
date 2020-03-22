import 'dart:math';
import 'dart:async';
import 'package:flutter/material.dart';
// import '../main.dart';
import './keyboard.dart';

class SecondTab extends StatefulWidget {
  final MyGridView myGridView = MyGridView();
  @override
  _SecondTabState createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> {
  var rand_gen = Random(10);
  int _rand_1;
  int _rand_2;

  void _numberrand() {
    setState(() {
      _rand_1 = rand_gen.nextInt(10);
      _rand_2 = rand_gen.nextInt(10);
    });
  }

  Timer _timer;
  int _start = 10;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          if (_start < 1) {
            timer.cancel();
          } else {
            _start = _start - 1;
          }
        },
      ),
    );
  }
   int num_1;
   int num_2;
   

 void getNumbers(int _num1,int _num2) {
  

  setState(() {
    num_1=_num1;
    num_2=_num2;
  });
 
 }
  Widget build(BuildContext context) {
    final MyGridView myGridView = MyGridView();
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        // center the children

        children: <Widget>[
          Container(
            alignment: Alignment.topRight,
            child: CircleAvatar(
              child: Text(
                '$_start',
                style: TextStyle(color: Colors.white, fontSize: 45),
              ),
            ),
          ),
          SizedBox(
            height: 200.0,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              '$_rand_1 + $_rand_2 = $num_1$num_2',
              style: TextStyle(color: Colors.white, fontSize: 45),
            ),
          ),Container(width: 200,height: 250, child:myGridView.build(),),
          FlatButton(
            child: Text('New button'),
            color: Colors.redAccent,
            onPressed: () {
              _numberrand();
              startTimer();
            },
          )
        ],
      ),
    );
  }
}
