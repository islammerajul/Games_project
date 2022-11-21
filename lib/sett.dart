import 'package:dice_game/game_page.dart';
import 'package:flutter/material.dart';

class SettingsG extends StatelessWidget {
  const SettingsG({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "All informations are here",
              style: myTextStyle,
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios_outlined),
            )
          ],
        ),
      ),
    );
  }
}
