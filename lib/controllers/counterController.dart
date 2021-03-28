import 'package:flutter/material.dart';

abstract class CounterBase extends ChangeNotifier {
  void incrementCounter();

  int get counter;
}

class CounterController extends CounterBase {
  int _counter = 0;

  @override
  int get counter => _counter;

  @override
  void incrementCounter() {
    _counter++;
    notifyListeners();
  }
}
