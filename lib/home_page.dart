import 'package:dice_game/custom_drawer.dart';
import 'package:dice_game/details.dart';
import 'package:dice_game/game_page.dart';
import 'package:dice_game/game_rules.dart';
import 'package:dice_game/sett.dart';
import 'package:flutter/material.dart';
import 'package:dice_game/my_drawer_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff212121),
        centerTitle: true,
        title: Text(
          "Rice Game",
          style: myTextStyle.copyWith(color: Colors.white),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/dice5.jpg"), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 80),
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "For having fun \nlet come with us",
                  style:
                      myTextStyle.copyWith(fontSize: 30, color: Colors.white),
                  //Color(0xff004D40)
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => GamePage()));
                  },
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      drawer: CustomDrawer(),
    );
  }
}
