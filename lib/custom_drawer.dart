import 'package:dice_game/details.dart';
import 'package:dice_game/game_page.dart';
import 'package:dice_game/game_rules.dart';
import 'package:dice_game/my_drawer_header.dart';
import 'package:dice_game/sett.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: Column(
          children: [
            MyDrawerHeader(),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.person,
                      size: 27,
                    ),
                    title: Text(
                      "Profile",
                      style: myTextStyle.copyWith(fontSize: 22),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Details()));
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.rule,
                      size: 27,
                    ),
                    title: Text(
                      "Game Rules",
                      style: myTextStyle.copyWith(fontSize: 22),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => GameRules()));
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.settings,
                      size: 27,
                    ),
                    title: Text(
                      "Settings",
                      style: myTextStyle.copyWith(fontSize: 22),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => SettingsG()));
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
