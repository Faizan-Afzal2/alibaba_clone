import 'package:flutter/material.dart';

class MainProvider extends ChangeNotifier{
  
  int currentIndex = 0;

  void updateIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}