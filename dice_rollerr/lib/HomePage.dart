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

  AssetImage diceImage, diceImage1;
  @override
  void initState() {
    super.initState();
    setState(() {
      diceImage = one;
      diceImage1 = six;
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
    int rdm1 = (1 + Random().nextInt(6));
    AssetImage newImg1;
    switch (rdm1) {
      case 1:
        newImg1 = one;
        break;
      case 2:
        newImg1 = two;
        break;
      case 3:
        newImg1 = three;
        break;
      case 4:
        newImg1 = four;
        break;
      case 5:
        newImg1 = five;
        break;
      case 6:
        newImg1 = six;
        break;
    }
    setState(() {
      diceImage = newImg;
      diceImage1 = newImg1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice roller'),
      ),
      body: Container(
        color: Colors.greenAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 100.0),
                child: RaisedButton(
                  color: Colors.yellow,
                  padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                  child: Text(
                    'Roll Dice',
                  ),
                  onPressed: rollDice,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: diceImage,
                    width: 150.0,
                    height: 150.0,
                  ),
                  Image(
                    image: diceImage1,
                    width: 150.0,
                    height: 150.0,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 100.0),
                child: RaisedButton(
                  color: Colors.yellow,
                  padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                  child: Text(
                    'Roll Dice',
                  ),
                  onPressed: rollDice,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
