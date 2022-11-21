import 'dart:math';

import 'package:flutter/material.dart';

class CounteProvider with ChangeNotifier {
  final _random = Random.secure();
  int score = 0, heightScore = 0, sum = 0, _index1 = 0, _index2 = 0;
  int get index1 => _index1;
  int get index2 => _index2;

  void rollTheDices() {
    _index1 = _random.nextInt(6);
    _index2 = _random.nextInt(6);
    //sum = index1 + index2 + 2;

    if (sum == 7 || sum == 11) {
      sum = 0;
      score = 0;
      notifyListeners();
      return;
    }
    sum = index1 + index2 + 2;
    score = score + sum;
    if (score > heightScore) {
      heightScore = score;
    }

    //heightScore = score;
    notifyListeners();
  }

  // void rollTheDicesAgain() {
  //   _index1 = _random.nextInt(6);
  //   _index2 = _random.nextInt(6);
  //   //sum = index1 + index2 + 2;
  //   //score = 0;
  //
  //   if (sum == 7 || sum == 11) {
  //     sum = 0;
  //     score = 0;
  //   } else {
  //     sum = index1 + index2 + 2;
  //
  //     score = score + sum;
  //   }
  //   heightScore = score;
  //
  //   notifyListeners();
  // }
}
