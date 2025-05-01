

// Provider class
import 'package:flutter/material.dart';

class TestingProvider extends ChangeNotifier{
  int count = 0;

  void increment(){
    count++;
    notifyListeners();
  }

}