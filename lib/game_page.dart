import 'dart:math';

import 'package:dice_game/providers/counte_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const myTextStyle = TextStyle(
  fontSize: 20,
  color: Colors.black54,
);

class GamePage extends StatelessWidget {
  bool isShow = true;

  bool isShowButton = true;

  List diceList = [
    "images/d1.png",
    "images/d2.png",
    "images/d3.png",
    "images/d4.png",
    "images/d5.png",
    "images/d6.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [
              0.1,
              0.4,
              0.6,
              0.9,
            ],
            colors: [
              Colors.yellow,
              Color(0xffa200e0),
              Colors.indigo,
              Colors.teal,
            ],
          )),
          child: Consumer<CounteProvider>(
            builder: (context, provider, _) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Dice Sum : ${context.read<CounteProvider>().sum}",
                  style: myTextStyle,
                ),
                Text(
                  "Score : ${context.read<CounteProvider>().score}",
                  style: myTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      diceList[provider.index1],
                      height: 100,
                      width: 100,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      diceList[provider.index2],
                      height: 100,
                      width: 100,
                    ),
                  ],
                ),
                Visibility(
                  visible: provider.sum == 7 || provider.sum == 11
                      ? isShow = false
                      : isShow = true,
                  child: ElevatedButton(
                    onPressed: () {
                      provider.rollTheDices();
                    },
                    child: Text("Play with dices"),
                    style: ButtonStyle(
                        textStyle:
                            MaterialStateProperty.all(TextStyle(fontSize: 25))),
                  ),
                ),
                Visibility(
                  visible: provider.sum == 7 || provider.sum == 11
                      ? isShowButton = true
                      : isShowButton = false,
                  child: ElevatedButton(
                    onPressed: () {
                      provider.rollTheDices();
                    },
                    child: Text("Play Again"),
                    style: ButtonStyle(
                        textStyle:
                            MaterialStateProperty.all(TextStyle(fontSize: 25))),
                  ),
                ),
                // ElevatedButton(
                //   onPressed: provider.sum == 7 || provider.sum == 11
                //       ? null
                //       : () {
                //
                //           provider.rollTheDices();
                //         },
                //   child: Text("Play with dices"),
                //   style: ButtonStyle(
                //       textStyle:
                //           MaterialStateProperty.all(TextStyle(fontSize: 25))),
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    "Height Score : ${provider.heightScore}",
                    style: myTextStyle,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
