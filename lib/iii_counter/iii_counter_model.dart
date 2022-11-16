import 'package:flutter/material.dart';

class IIICounterModel extends ChangeNotifier {
  int _num = 0;
  int _num2 = 0;
  int testNum = 0;
  int get num => _num;
  int get num2 => _num2;
  int get getTestNum => testNum;

  void increaseNum() {
    _num++;
    notifyListeners();
  }

  void decreaseNum() {
    _num--;
    notifyListeners();
  }

  void increaseNum2() {
    _num2++;
    notifyListeners();
  }

  void decreaseNum2() {
    _num2--;
    notifyListeners();
  }

  void increaseAll() {
    _num++;
    _num2++;
    notifyListeners();
  }

  void decreaseAll() {
    _num--;
    _num2--;
    notifyListeners();
  }
}
