import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

  AssetImage diceImage;
  @override
  void initState() {
    super.initState();
    setState(() {
      diceImage = one;
    });
  }

  void rollDice() {
    int rdm = (1 + Random().nextInt(6));
    AssetImage newImg;
    switch (rdm) {
      case 1:
        newImg = one;
        break;
      case 2:
        newImg = two;
        break;
      case 3:
        newImg = three;
        break;
      case 4:
        newImg = four;
        break;
      case 5:
        newImg = five;
        break;
      case 6:
        newImg = six;
        break;
    }
    setState(() {
      diceImage = newImg;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dice roller'),),
      body: Container(
          child: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: diceImage,
                width: 200.0,
                height: 200.0,
              ),
              Container(
                margin: EdgeInsets.only(top: 100.0),
                child: RaisedButton(
                  color: Colors.yellow,
                  padding: EdgeInsets.fromLTRB(30.0,15.0,30.0,15.0),
                  child: Text('Roll Dice',),
                  onPressed: rollDice,),
              )
          ],),)
        ,),
    );
  }
}
