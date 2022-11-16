import 'package:flutter/material.dart';

class IICounterModel extends ChangeNotifier {
  int _num = 0;
  int _num2 = 0;
  int _num3 = 0;
  int get num => _num;
  int get num2 => _num2;
  int get num3 => _num3;

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

  void increaseNum3() {
    print('clicked!');
    _num3++;
    notifyListeners();
  }

  void decreaseNum3() {
    print('clicked!');
    _num3--;
    notifyListeners();
  }

  void increaseAll() {
    print('clicked!');
    _num++;
    _num2++;
    _num3++;
    notifyListeners();
  }

  void decreaseAll() {
    print('clicked!');
    _num--;
    _num2--;
    _num3--;
    notifyListeners();
  }
}
