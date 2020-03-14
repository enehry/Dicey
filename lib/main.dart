import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
  home: Dicey()
));

class Dicey extends StatefulWidget {
  @override
  _DiceyState createState() => _DiceyState();
}

class _DiceyState extends State<Dicey> {

  int dice1 = Random().nextInt(6)+1;
  int dice2 = Random().nextInt(6)+1;

  void generateDice(){
    setState(() {
      dice1 = Random().nextInt(6)+1;
      dice2 = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Dicey'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Center(
                  child: Text(
                      '${dice1 + dice2}',
                      style: TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                  )
              ),
            ),
            Expanded(
              flex: 5,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                        onPressed: () {
                          generateDice();
                        },
                        child: Image.asset('images/dice_$dice1.png')),
                  ),
                  Expanded(
                    child: FlatButton(
                        onPressed: () {
                          generateDice();
                        },
                        child: Image.asset('images/dice_$dice2.png')),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
