import 'package:flutter/material.dart';

class ICounterModel extends ChangeNotifier {
  int _num = 0;
  int _num2 = 0;
  int get num => _num;
  int get num2 => _num2;

  void increaseNum() {
    print('clicked!');
    _num++;
    notifyListeners();
  }

  void decreaseNum() {
    print('clicked!');
    _num--;
    notifyListeners();
  }

  void increaseNum2() {
    print('clicked!');
    _num2++;
    notifyListeners();
  }

  void decreaseNum2() {
    print('clicked!');
    _num2--;
    notifyListeners();
  }

  void increaseAll() {
    print('clicked!');
    _num++;
    _num2++;
    notifyListeners();
  }

  void decreaseAll() {
    print('clicked!');
    _num--;
    _num2--;
    notifyListeners();
  }
}
