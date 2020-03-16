import 'dart:math';
import 'dart:async';
import 'package:flutter/material.dart';

class SecondTab extends StatefulWidget {
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

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        child: Column(
          // center the children
         
          children: <Widget>[
              Text(
                  '$_start',
                  style: TextStyle(color: Colors.white, fontSize: 45),
                ),
                Spacer(flex: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    '$_rand_1 + $_rand_2 = ',
                    style: TextStyle(color: Colors.white, fontSize: 45),
                  ),
                ),
              ],
            ),
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
      ),
    );
  }
}
