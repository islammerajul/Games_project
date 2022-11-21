import 'package:dice_game/game_page.dart';
import 'package:flutter/material.dart';

class MyDrawerHeader extends StatefulWidget {
  const MyDrawerHeader({Key? key}) : super(key: key);

  @override
  State<MyDrawerHeader> createState() => _MyDrawerHeaderState();
}

class _MyDrawerHeaderState extends State<MyDrawerHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      color: Colors.green[700],
      padding: EdgeInsets.only(top: 60),
      child: Column(
        children: [
          // Container(
          //   margin: EdgeInsets.only(top: 50),
          //   height: 80,
          //   decoration: BoxDecoration(
          //       //color: Colors.white,
          //       shape: BoxShape.circle,
          //       border: Border.all(color: Colors.white, width: 2),
          //       image: DecorationImage(
          //           image: AssetImage(
          //             "images/m.jpg",
          //           ),
          //           fit: BoxFit.fitWidth)),
          // )
          Container(
            height: 130,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2)),
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("images/m.jpg"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: Text(
              "Md. Meraj-ul-islam",
              style: myTextStyle.copyWith(color: Colors.white),
            ),
          ),
          Text(
            "maraj15-10290@diu.edu.bd",
            style: myTextStyle.copyWith(color: Colors.white, fontSize: 17),
          ),
        ],
      ),
    );
  }
}
