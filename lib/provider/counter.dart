import 'package:flutter/cupertino.dart';

class Counter with ChangeNotifier {
  int _counter = 0;

  int get getCounter => _counter;

  void addCounter() {
    _counter++;
    notifyListeners();
  }

  //increase counter
  void increaseCounter() {
    _counter++;
    notifyListeners();
  }
  //decrease counter

  void decreaseCounter() {
    _counter--;
    notifyListeners();
  }
}
